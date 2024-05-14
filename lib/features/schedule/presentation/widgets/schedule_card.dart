import 'package:alhikmah_schedule_lecturer/features/authentication/domain/model/model.dart';
import 'package:alhikmah_schedule_lecturer/utils/extensions/time.dart';
import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

import 'course_detail_sheet.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    super.key,
    required this.hour,
    required this.lectureOccurrence,
    required this.selectedDay,
  });

  final int hour;
  final Lecture? lectureOccurrence;
  final DateTime selectedDay;

  @override
  Widget build(BuildContext context) {
    final occurrence = lectureOccurrence?.occurrences
        .where((element) => element.day == selectedDay.weekday)
        .first;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 70, child: Text('${hour.toTime()} ')),
        const SizedBox(
          width: 30,
          child: Divider(),
        ),
        Expanded(
          flex: 3,
          child: lectureOccurrence == null
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Divider(),
                )
              : Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () async {
                      await showModalBottomSheet(
                          context: context,
                          builder: (context) => CourseDetailSheet(
                                lecture: lectureOccurrence!,
                                day: selectedDay.weekday,
                              ),
                          backgroundColor: Colors.black,
                          barrierColor: Colors.black87,
                          isScrollControlled: true,
                          isDismissible: true);
                    },
                    child: Material(
                      color: const Color(0xffc8eacd),
                      elevation: 5,
                      shadowColor: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: Row(
                          children: [
                            const Material(
                              color: Color(0xff358442),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5)),
                              child: SizedBox(
                                width: 5,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(lectureOccurrence?.id ?? ""),
                                        const Spacer(),
                                        lectureCanceled(occurrence?.day??1)
                                            ? const Text(
                                                "CANCELED",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              )
                                            : const SizedBox(),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      lectureOccurrence?.title ?? "",
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff224529)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          SolarIconsOutline.mapPoint,
                                          size: 17,
                                          color: Color(0xff224529),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          occurrence?.venue ?? '',
                                          style: const TextStyle(
                                              color: Color(0xff224529)),
                                        ),
                                        const Spacer(),
                                        const Icon(
                                            SolarIconsOutline.altArrowDown)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        )
      ],
    );
  }

  bool lectureCanceled(int day) {
    /// Check if the lecture weekday and today's weekday matches
    if (day == DateTime.now().weekday) {
      /// Check if the lecture is active and a canceled date has been set
      if (lectureOccurrence?.active == false &&
          lectureOccurrence?.canceledDate != null) {
        final canceledDate = DateTime.parse(lectureOccurrence!.canceledDate!);
        final twelveHoursAfter = canceledDate.add(const Duration(hours: 12));
        /// If the time is 12 hours before the lecture canceled date display
        /// that the lecture has been cancele
        return DateTime.now().isBefore(twelveHoursAfter);
      }
    }
    return false;
  }
}
