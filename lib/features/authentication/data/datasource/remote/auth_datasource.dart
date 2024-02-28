import 'dart:convert';
import 'dart:developer';

import 'package:alhikmah_schedule_lecturer/soft.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_firebase_exception_type.dart';
import 'package:alhikmah_schedule_lecturer/utils/extensions/app_firebase_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;

class AuthenticationDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  /// Sign In
  Future<Either<AppFirebaseExceptionType, String>> login(
      {required String email, required String password}) async {
    try {
      final user = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      final users = await firebaseFirestore.collection("LECTURERS").doc(user.user?.uid).get();
      if(users.exists){
        await firebaseFirestore.collection("LECTURERS").doc(user.user?.uid).update({
          'Token': await FirebaseMessaging.instance.getToken()
        });
      }
      return const Right('User logged in successfully');
    } on FirebaseAuthException catch (error) {
      log(error.message??'');
      return Left(error.appFirebaseExceptionType());
    } catch (error) {
      return const Left(AppFirebaseExceptionType.networkUnavailable);
    }
  }

  /// Register
  Future<Either<AppFirebaseExceptionType, String>> register(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      await user.user?.updateDisplayName(name);

      return const Right('Account created successfully');
    } on FirebaseAuthException catch (error) {
      return Left(error.appFirebaseExceptionType());
    } catch (error) {
      return const Left(AppFirebaseExceptionType.networkUnavailable);
    }
  }
////firebaseFirestore.collection("USERS").doc(user.user?.uid).set({
//
//       });
  ///Forgot Password
  Future<Either<AppFirebaseExceptionType, String>> forgotPassword(
      {required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return const Right('Password reset link sent successfully');
    } on FirebaseAuthException catch (error) {
      return Left(error.appFirebaseExceptionType());
    } catch (error) {
      return const Left(AppFirebaseExceptionType.networkUnavailable);
    }
  }
  Future<void> cancelClass()async{
    final data =  firebaseFirestore.collection('USERS').where(
      'Courses', arrayContains: 'SEN 305'
    );
    final user = await data.get();
    List<String> tokens = (user.docs).map((e) {
      return e.data()['Token'].toString();
    }).toList();
    await http.post(
      Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'key=AAAAJJr-Z14:APA91bEmjmlAMVm7qiT0nhMxgWMlYeDHb0-IymECQJ_KK1CP6-IhhjzNGF5KvdJCdeafN9FL-VJ-5UXHAdx_aVvezwGCv4bXhX2CeW3QMMGeMXV_ePttbhYki0thUNe_mAxfIeU9axdg'
      },
      body: jsonEncode(<String,dynamic>{
        'priority': 'high',
        'data': {
          'via': 'FlutterFire Cloud Messaging!!!',
          'status':'done',
          'title': 'SEN 305 CANCELED',
          'body': 'This class has been canceled',
        },
        'notification': {
          'android_channel':'high_importance_channel',
          'title': 'SEN 305 CANCELED',
          'body': 'This class has been canceled',
          'android_channel_id':"lecture_reminder"
        },
        'registration_ids': tokens,
      }),
    );
    log('done');
  }

  Future<Either<String, String>>uploadPersonalInformation({required String staffID,required List<Course> courses})async{
    try{
      await firebaseFirestore.collection("LECTURERS").doc(_firebaseAuth.currentUser?.uid).set({
        'Staff Id':staffID,
        'Token': await FirebaseMessaging.instance.getToken(),
        'Courses': courses.map((e) => e.id).toList()
      });
      return const Right('Personal Information uploaded successfully');
    }catch(error){
      return const Left('Error uploading personal Information');
    }
  }

  Future<Either<String, List<Programme>>> fetchProgrammes()async{
    try{
      final data = await firebaseFirestore.collection("PROGRAMMES").get();

      return Right((data.docs).map((e) => Programme.fromMap(e.data())).toList());
    }catch(error){
      return const Left('Error fetching programmes');
    }
  }


}
