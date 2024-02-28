import 'package:alhikmah_schedule_lecturer/config/services/push_notification_service/push_notification_service.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/providers/auth_provider.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/providers/courses_provider.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/login.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/personal_details.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/register_screen.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/splash_screen.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/wrapper.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/presentation/screens/schedule_screen.dart';
import 'package:alhikmah_schedule_lecturer/firebase_options.dart';
import 'package:alhikmah_schedule_lecturer/locator.dart';
import 'package:alhikmah_schedule_lecturer/utils/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
final navigatorKey = GlobalKey<NavigatorState>();

void main()async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );
  await PushNotificationService().initNotifications();
  await LocalNotificationService().init();

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> SelectCoursesProvider()),
        ChangeNotifierProvider(create: (context)=> AuthProvider())
      ],
      child: MaterialApp(
        title: 'Alhikmah Schedule Student',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff036000)),
            useMaterial3: true,
            textTheme: GoogleFonts.poppinsTextTheme()
        ),
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context)=> const SplashScreen(),
          '/wrapper': (context) => const AppWrapper(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/login': (context) => const LoginScreen(),
          '/register':(context)=> const RegisterScreen(),
          '/personalInformation':(context)=> const PersonalDetailsScreen(),
          '/home':(context)=> const ScheduleScreen()
        },
      ),
    );
  }
}

