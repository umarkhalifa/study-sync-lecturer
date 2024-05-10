import 'package:alhikmah_schedule_lecturer/features/authentication/domain/model/model.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/data/datasource/remote/schedule_datasource.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/domain/model/user.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/domain/repositories/schedule_repository.dart';
import 'package:alhikmah_schedule_lecturer/locator.dart';
import 'package:dartz/dartz.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  final _dataSource = locator<ScheduleDataSource>();

  @override
  Future<Either<String, List<Lecture>>> fetchLectures(
      {required String course, required List<String> courses}) async {
    final data =
        await _dataSource.fetchLectures(course: course, courses: courses);
    return data.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<String, UserProfile>> fetchUserProfile() async {
    final data = await _dataSource.fetchUserDetails();
    return data.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<List<Lecture>> fetchTimeTale(
      {required int day, required List<Lecture> lectures}) async {
    List<Lecture> timeTable = [];
    timeTable = lectures.where((lecture) {
      // Check if the lecture occurrence includes selected day
      return lecture.occurrences.any((occurrence) {
        return occurrence.day == day;
      });
    }).toList();
    timeTable.sort((a, b) {
      // Compare the start times of the first occurrences of each lecture
      // and sort it by the start time
      int startTimeA =
          a.occurrences.where((element) => element.day == day).first.start;
      int startTimeB =
          b.occurrences.where((element) => element.day == day).first.start;
      return startTimeA.compareTo(startTimeB);
    });
    return timeTable;
  }

  @override
  Future<Either<String, String>> cancelLecture({required String course}) async {
    final data = await _dataSource.cancelLecture(course: course);
    return data.fold((l) => Left(l), (r) => Right(r));
  }
}
