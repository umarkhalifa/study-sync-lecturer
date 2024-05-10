import 'package:alhikmah_schedule_lecturer/features/authentication/domain/model/department.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_firebase_exception_type.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository{
  Future<Either<AppFirebaseExceptionType, bool>> login({required String email,required String password});
  Future<Either<AppFirebaseExceptionType,String>> register({required String email,required String password,required String name});
  Future<Either<AppFirebaseExceptionType,String>> resetPassword({required String email});
  Future<Either<String,List<Department>>> fetchCourses();
  Future<Either<String, String>> uploadPersonalInformation({required String staffId,required String programme,required List<String> courses});
}