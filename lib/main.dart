import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/providers/auth_provider.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/login.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/personal_details.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/register_screen.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/reset_password.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/splash_screen.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/wrapper.dart';
import 'package:alhikmah_schedule_lecturer/features/profile/presentation/providers/profile_provider.dart';
import 'package:alhikmah_schedule_lecturer/features/profile/presentation/screens/profile_courses.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/presentation/screens/schedule_screen.dart';
import 'package:alhikmah_schedule_lecturer/firebase_options.dart';
import 'package:alhikmah_schedule_lecturer/locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'config/services/push_notification_service/local_push_notifications.dart';
import 'features/profile/presentation/screens/profile_screen.dart';
import 'features/schedule/presentation/providers/schedule_provider.dart';
final navigatorKey = GlobalKey<NavigatorState>();

late AndroidNotificationChannel channel;
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

Future<void> setupFlutterNotifications() async {
  channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
    'This channel is used for important notifications.', // description
    importance: Importance.max,
  );
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
}

void main()async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );

  await setupFlutterNotifications();
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
        ChangeNotifierProvider(create: (context)=> AuthProvider()),
        ChangeNotifierProvider(create: (context) => ScheduleProvider()),
        ChangeNotifierProvider(create: (context) => ProfileProvider()),

      ],
      child: MaterialApp(
        title: 'Alhikmah Schedule Lecturer',
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
          '/home':(context)=> const ScheduleScreen(),
          '/profile':(context)=> const ProfileScreen(),
          '/profileCourse':(context)=> const ProfileCourseScreen(),
          '/forgotPassword':(context)=> const ResetPassword(),

        },
      ),
    );
  }
}

