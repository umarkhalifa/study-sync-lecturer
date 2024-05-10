import 'dart:developer'; // Dart developer library for logging

import 'package:alhikmah_schedule_lecturer/config/services/flushbar_service/flushbarService.dart';
import 'package:alhikmah_schedule_lecturer/config/services/push_notification_service/local_push_notifications.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/domain/model/model.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/data/repository_impl/schedule_repository_impl.dart';
import 'package:alhikmah_schedule_lecturer/locator.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/model/user.dart';

class ScheduleProvider extends ChangeNotifier {
  //<---------------------- SETTERS ---------------------->
  final _homeRepo = locator<ScheduleRepositoryImpl>();
  final _flushBarService = locator<FlushBarService>();

  List<Lecture> _timeTable = []; // Stores the retrieved lecture timetable
  List<Lecture> _lectures = []; // Stores lectures for the selected day
  List<Lecture> _classes = []; // Stores class lectures
  DateTime _selectedDay = DateTime.now(); // Stores the selected day
  UserProfile? _profile; // Stores the user profile information
  AppState _appState = AppState.idle; // Represents the current app state
  bool _showCalendar = false; // Indicates whether to show the calendar or not

  //<---------------------- GETTERS ---------------------->
  List<Lecture> get classes => _classes; // Getter for class lectures
  List<Lecture> get lectures => _lectures; // Getter for lectures
  DateTime get selectedDay => _selectedDay; // Getter for selected day
  UserProfile? get userProfile => _profile; // Getter for user profile
  AppState get appState => _appState; // Getter for app state
  bool get showCalendar => _showCalendar; // Getter for show calendar

  //<---------------------- METHODS ---------------------->

  // Toggle the visibility of the calendar
  void updateCalendar() {
    _showCalendar = !showCalendar;
    notifyListeners();
  }

  // Make a phone call
  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  // Fetch user details from the repository
  Future<void> fetchUserDetails() async {
    final data = await _homeRepo.fetchUserProfile();
    data.fold(
      (l) => _flushBarService.showFlushError(
          title: l), // Show error if fetching fails
      (r) => _profile = r, // Set user profile if fetching succeeds
    );
  }

  // Fetch timetable from the repository
  Future<void> fetchTimeTable() async {
    final data = await _homeRepo.fetchLectures(
        course: _profile?.programme ?? "", courses: _profile?.courses ?? []);
    data.fold(
      (l) => _flushBarService.showFlushError(
          title: l), // Show error if fetching fails
      (r) => _timeTable = r, // Set timetable if fetching succeeds
    );
  }

  // Set notifications for lectures
  Future<void> setNotifications() async {
    for (var course in _timeTable) {
      for (var element in course.occurrences) {
        LocalNotificationService().scheduleDailyTenAMNotification(
            day: element.day, hour: element.start, course: course.id);
        log('done'); // Log success
      }
    }
  }

  // Update the selected day
  void updateSelectedDay(DateTime date) {
    _selectedDay = date;
    sortTimeTable();
    notifyListeners();
  }

  // Sort the timetable based on the selected day
  Future<void> sortTimeTable({bool? includesToday}) async {
    _lectures = await _homeRepo.fetchTimeTale(
        day: selectedDay.weekday, lectures: _timeTable);
  }

  // Cancel a lecture
  Future<void> cancelLecture({required String course}) async {
    _appState = AppState.loading;
    notifyListeners();
    final data = await _homeRepo.cancelLecture(course: course);
    data.fold((l) {
      _flushBarService.showFlushError(title: l);
    }, (r) => _flushBarService.showFlushSuccess(title: r));
    _appState = AppState.idle;
    notifyListeners();
  }

  // Initialize the schedule provider
  Future<void> init() async {
    _appState = AppState.loading; // Set app state to loading
    notifyListeners();
    await fetchUserDetails(); // Fetch user details
    await fetchTimeTable(); // Fetch timetable
    await setNotifications(); // Set notifications
    await sortTimeTable(includesToday: true); // Sort the timetable
    _appState = AppState.idle; // Set app state to idle
    notifyListeners();
  }

  // Get the next 30 days
  List<DateTime> getNext30Days() {
    List<DateTime> next30Days = [];
    DateTime currentDate = DateTime.now(); // Get current date

    // Generate the next 30 days
    for (int i = 0; i < 29; i++) {
      DateTime nextDate = currentDate.add(Duration(days: i));
      next30Days.add(nextDate);
    }

    return next30Days;
  }

  // Get lecture occurrence for a specific hour
  Lecture? getLectureOccurrenceForHour(int hour) {
    for (final lecture in lectures) {
      for (final occurrence in lecture.occurrences) {
        if (occurrence.day == selectedDay.weekday) {
          if (occurrence.start <= hour && occurrence.end > hour) {
            return lecture;
          }
        }
      }
    }
    return null;
  }
}
