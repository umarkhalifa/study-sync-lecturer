import 'package:alhikmah_schedule_lecturer/config/services/shared_preference_service/shared_preference_service.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/data/datasource/remote/auth_datasource.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/domain/model/department.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/domain/repositories/auth_repository.dart';
import 'package:alhikmah_schedule_lecturer/locator.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_firebase_exception_type.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthenticationRepository {
  final _authDataSource = locator<AuthenticationDataSource>();

  @override
  Future<Either<AppFirebaseExceptionType, bool>> login(
      {required String email, required String password}) async {
    final data = await _authDataSource.login(email: email, password: password);
    return data.fold((l) => Left(l), (r) {
      /// User completed Personal Information Stage
      locator<SharedPreferenceProvider>().setCompleteProfile();
      return Right(r);
    });
  }

  @override
  Future<Either<AppFirebaseExceptionType, String>> register(
      {required String email,
      required String password,
      required String name}) async {
    final data = await _authDataSource.register(
        email: email, password: password, name: name);
    return data.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<AppFirebaseExceptionType, String>> resetPassword(
      {required String email}) async {
    final data = await _authDataSource.forgotPassword(email: email);
    return data.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<String, List<Department>>> fetchCourses() async {
    final data = await _authDataSource.fetchProgrammes();
    return data.fold((l) => Left(l), (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<String, String>> uploadPersonalInformation(
      {required String staffId,
      required String programme,
      required List<String> courses}) async {
    final data = await _authDataSource.uploadPersonalInformation(
        staffId: staffId, programme: programme, courses: courses);
    return data.fold((l) => Left(l), (r) {
      /// User completed Personal Information Stage
      locator<SharedPreferenceProvider>().setCompleteProfile();
      return Right(r);
    });
  }

  @override
  Future<Either<String, String>> updateProfile(
      {String? programme,
      String? staffId,
      int? level,
      List<String>? courses}) async {
    final data = await _authDataSource.updateProfile(
        programme: programme, staffId: staffId, courses: courses);
    return data.fold((l) => Left(l), (r) {
      return Right(r);
    });
  }

  @override
  Future<Either<String, List<String>>> fetchSubjects() async {
    final data = await _authDataSource.fetchCourses();
    return data.fold((l) => Left(l), (r) {
      return Right(r);
    });
  }
}
