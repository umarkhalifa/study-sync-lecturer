import 'package:alhikmah_schedule_lecturer/features/authentication/domain/model/model.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/domain/model/user.dart';
import 'package:dartz/dartz.dart';

abstract class ScheduleRepository{
  Future<Either<String, UserProfile>> fetchUserProfile();
  Future<Either<String, String>> cancelLecture({required String course});
  Future<Either<String, List<Lecture>>> fetchLectures({required String course, required List<String> courses});
  Future<List<Lecture>> fetchTimeTale({required int day,required List<Lecture> lectures});
}