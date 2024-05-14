import 'dart:convert';
import 'dart:developer';

import 'package:alhikmah_schedule_lecturer/features/authentication/domain/model/model.dart';
import 'package:alhikmah_schedule_lecturer/features/schedule/domain/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

/// This class handles schedule data source
class ScheduleDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  /// Fetch User's Profile Details
  Future<Either<String, UserProfile>> fetchUserDetails() async {
    try {
      // Fetch user details from Firestore
      final data = await firebaseFirestore
          .collection("LECTURERS")
          .doc(_firebaseAuth.currentUser?.uid)
          .get();
      return Right(UserProfile.fromMap(data.data()!));
    } catch (error) {
      log(error.toString());
      return const Left("Error fetching user details");
    }
  }

  /// Fetch User's Lectures
  Future<Either<String, List<Lecture>>> fetchLectures(
      {required String course, required List<String> courses}) async {
    try {
      // Fetch lectures from Firestore
      final List<Lecture> timeTable = [];
      final collection = firebaseFirestore.collection("CLASSES");
      for (var element in courses) {
        final lecture = await collection.doc(element).get();
        timeTable.add(Lecture.fromMap(lecture.data()!));
      }
      return Right(timeTable);
    } catch (error) {
      log(error.toString());
      return const Left('Error fetching programmes');
    }
  }

  /// Cancel a class by setting the active state and saving the canceled date
  Future<bool> cancelClass({required String course})async{
    firebaseFirestore
        .collection('CLASSES').doc(course).update({
      'active': false,
      'canceledDate': DateTime.now().toString()
    });
    return true;
}
  /// Cancel lectures and notify students
  Future<Either<String, String>> cancelLecture({required String course}) async {
    try {
      await cancelClass(course: course);
      // Cancel lecture and notify students
      final data = firebaseFirestore
          .collection('USERS')
          .where('Courses', arrayContains: course);
      final user = await data.get();

      /// Fetch available tokens of lecturers
      List<String> tokens = (user.docs).map((e) {
        return e.data()['Token'].toString();
      }).toList();

      /// Send a push notification to each lecturer
      await http.post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization':
              'key=AAAAJJr-Z14:APA91bEmjmlAMVm7qiT0nhMxgWMlYeDHb0-IymECQJ_KK1CP6-IhhjzNGF5KvdJCdeafN9FL-VJ-5UXHAdx_aVvezwGCv4bXhX2CeW3QMMGeMXV_ePttbhYki0thUNe_mAxfIeU9axdg'
        },
        body: jsonEncode(<String, dynamic>{
          "webpush": {
            "headers": {"Urgency": "high"}
          },
          "android": {"priority": "high"},
          "priority": 10,
          'data': {
            'via': 'FlutterFire Cloud Messaging!!!',
            'status': 'done',
            'title': '$course CANCELED',
            'body': 'This class has been canceled',
          },
          'notification': {
            'android_channel': 'High Importance Notifications',
            'title': '$course CANCELED',
            'body': 'This class has been canceled',
            'android_channel_id': "high_importance_channel"
          },
          'registration_ids': tokens,
        }),
      );
      log('done');
      return const Right("Lecture canceled successfully.");
    } catch (error) {
      log(error.toString());
      return const Left('Error cancelling lecturer');
    }
  }
}
