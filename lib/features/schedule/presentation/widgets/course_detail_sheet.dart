import 'package:alhikmah_schedule_lecturer/config/shared/button.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/presentation/providers/schedule_provider.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../authentication/domain/model/lecture.dart';

class CourseDetailSheet extends StatelessWidget {
  final Lecture lecture;
  final int day;

  const CourseDetailSheet(
      {super.key, required this.lecture, required this.day});

  @override
  Widget build(BuildContext context) {
    final courseProv = Provider.of<ScheduleProvider>(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 500),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Are you sure you want to postpone this lecture?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "Inform all your students that this lecture will be postponed to another time"),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 52,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Material(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xff224529),
                          ),
                        ),
                        child: const SizedBox(
                          height: 52,
                          child: Center(
                            child: Text("No, Cancel"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ScheduleButton(
                      label: "Yes",
                      loading: courseProv.appState == AppState.loading,
                      onPressed: () =>
                          courseProv.cancelLecture(course: lecture.id),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
