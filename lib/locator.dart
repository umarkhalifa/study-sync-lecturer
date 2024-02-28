import 'package:alhikmah_schedule_lecturer/config/services/flushbar_service/flushbarService.dart';
import 'package:alhikmah_schedule_lecturer/config/services/shared_preference_service/shared_preference_service.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/data/datasource/remote/auth_datasource.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/data/repository_impl/auth_repository_impl.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/providers/auth_provider.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/providers/courses_provider.dart';
import 'package:get_it/get_it.dart';

/// This is our global ServiceLocator, it is used to ensure each global provider
/// class has only one instance
GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => SelectCoursesProvider());
  locator.registerLazySingleton(() => AuthenticationDataSource());
  locator.registerLazySingleton(() => AuthRepositoryImpl());
  locator.registerLazySingleton(() => AuthProvider());
  locator.registerLazySingleton(() => FlushBarService());
  locator.registerLazySingleton(() => SharedPreferenceProvider());
}