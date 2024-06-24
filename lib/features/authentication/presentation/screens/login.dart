import 'package:alhikmah_schedule_lecturer/config/shared/button.dart';
import 'package:alhikmah_schedule_lecturer/config/shared/text_field.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/providers/auth_provider.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/register_screen.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_state.dart';
import 'package:alhikmah_schedule_lecturer/utils/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_icons/solar_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 34,
                        color: Color(0xff46a055),
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "back!",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign in to access your course schedule and get real time updates on all your courses",
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ScheduleTextField(
                    prefixIcon: Icon(
                      SolarIconsOutline.letter,
                      color: Colors.grey.shade400,
                    ),
                    hint: "Enter your email address",
                    validator: AppValidator().validateEmail,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ScheduleTextField(
                    controller: passwordController,
                    prefixIcon: Icon(
                      SolarIconsOutline.lock,
                      color: Colors.grey.shade400,
                    ),
                    hint: "Enter your password",
                    validator: AppValidator().validatePassword,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/forgotPassword');
                    },
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xff036000),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ScheduleButton(
                    label: "Login",
                    loading: authProvider.appState == AppState.loading,
                    onPressed: () {
                      authProvider.login(
                          email: emailController.text.trim(),
                          password: passwordController.text);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          " Register",
                          style: TextStyle(
                            color: Color(0xff46a055),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
