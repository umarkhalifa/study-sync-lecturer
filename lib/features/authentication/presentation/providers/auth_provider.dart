import 'package:alhikmah_schedule_lecturer/config/services/flushbar_service/flushbarService.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/data/repository_impl/auth_repository_impl.dart';
import 'package:alhikmah_schedule_lecturer/locator.dart';
import 'package:alhikmah_schedule_lecturer/main.dart';
import 'package:alhikmah_schedule_lecturer/soft.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_state.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final authRepo = locator<AuthRepositoryImpl>();
  final flushBarService = locator<FlushBarService>();
  List<Programme> _programmes = [];
  List<Programme> get programmes => _programmes;
  Set<Course> _courses = {};
  Set<Course> get courses => _courses;
  Programme? _programme;
  Programme? get programme => _programme;
  final List<Course> selectedCourses = [];
  int _selectedLevel = 100;
  int get selectedLevel => _selectedLevel;
  AppState appState = AppState.idle;
  AuthState authState = AuthState.register;

  void updateAuthState(AuthState state) {
    authState = state;
    notifyListeners();
  }

  Future<void> login({required String email, required String password}) async {
    appState = AppState.loading;
    notifyListeners();
    try {
      final data = await authRepo.login(email: email, password: password);
      data.fold((l) async {
        flushBarService.showFlushError(title: l.name);
      }, (r) {
        navigatorKey.currentState!.pushNamed('/personalInformation');
      });
    } finally {
      appState = AppState.idle;
      notifyListeners();
    }
  }

  Future<void> register(
      {required String email,
      required String password,
      required String name}) async {
    appState = AppState.loading;
    notifyListeners();
    try {
      final data =
          await authRepo.register(email: email, password: password, name: name);
      data.fold((l) async {
        flushBarService.showFlushError(title: l.name);
      }, (r) {
        navigatorKey.currentState!.pushNamed('/personalInformation');
      });
    } finally {
      appState = AppState.idle;
      notifyListeners();
    }
  }

  Future<void> fetchCourses()async{
    appState = AppState.completeLoading;
    notifyListeners();
    try {
      final data =
      await authRepo.fetchCourses();
      data.fold((l) async {
        flushBarService.showFlushError(title: l);
      }, (r) {
        _programmes = r;
        for (var q in r) {
          q.courses?.forEach((element) {
            _courses.add(element);
          });
        }
      });
      notifyListeners();

    } finally {
      appState = AppState.idle;
      notifyListeners();
    }
  }

  // Update the users selected programme
  void selectProgramme(Programme newProgramme) {
    _programme = newProgramme;
    notifyListeners();
  }

  // Update selected day
  void updateSelectedLevel(int level){
    _selectedLevel = level;
    notifyListeners();
  }

  /// Select and deselect courses
  void updateSelectedCourse(Course course){
    if(selectedCourses.contains(course)){
      selectedCourses.remove(course);
      notifyListeners();
      return;
    }
    selectedCourses.add(course);
    notifyListeners();
  }

  Future<void> uploadPersonalInformation({required String staffID})async{
    try{
      appState = AppState.loading;
      notifyListeners();
      final data = await authRepo.uploadPersonalInformation(staffID: staffID, courses: selectedCourses);
      data.fold((l) async {
        flushBarService.showFlushError(title: l);
      }, (r) {
        Navigator.pushReplacementNamed(navigatorKey.currentContext!, '/home');
      });
    }finally{
      appState = AppState.idle;
      notifyListeners();
    }
  }
}

enum AuthState { register, login }
