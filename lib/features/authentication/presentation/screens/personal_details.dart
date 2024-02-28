import 'package:alhikmah_schedule_lecturer/config/shared/button.dart';
import 'package:alhikmah_schedule_lecturer/config/shared/text_field.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/providers/auth_provider.dart';
import 'package:alhikmah_schedule_lecturer/features/authentication/presentation/screens/course_selection.dart';
import 'package:alhikmah_schedule_lecturer/soft.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_icons/solar_icons.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Provider.of<AuthProvider>(context,listen: false).fetchCourses();
    });
  }
  final TextEditingController matricController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    matricController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    var inputDecoration = InputDecoration(
      labelText: "Level",
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade400)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Color(0xff036000),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Personal Information",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
               ScheduleTextField(
                prefixIcon: const Icon(
                  SolarIconsOutline.squareAcademicCap,
                ),
                hint: "Enter your Staff ID",
                controller: matricController,
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CourseSelection(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          size: 15,
                          color: Color(0xff036000),
                        ),
                        Text(
                          "Select Courses",
                          style: TextStyle(color: Color(0xff036000)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: authProvider.selectedCourses.map((course) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(course.code ?? ''),
                          Text(
                            course.title ?? '',
                            maxLines: 1,
                          ),
                          const Divider()
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 15,
              ),
              ScheduleButton(
                label: 'Continue',
                loading: authProvider.appState == AppState.loading,
                onPressed: () {
                  authProvider.uploadPersonalInformation(staffID: matricController.text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<int> levels = [100, 200, 300, 400];
