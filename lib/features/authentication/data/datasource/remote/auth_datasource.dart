import 'dart:developer';

import 'package:alhikmah_schedule_lecturer/features/authentication/domain/model/department.dart';
import 'package:alhikmah_schedule_lecturer/utils/enum/app_firebase_exception_type.dart';
import 'package:alhikmah_schedule_lecturer/utils/extensions/app_firebase_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class AuthenticationDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  /// Sign In
  Future<Either<AppFirebaseExceptionType, bool>> login(
      {required String email, required String password}) async {
    try {
      final user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final users = await firebaseFirestore.collection("LECTURERS").doc(
          user.user?.uid).get();
      if (users.exists) {
        // Update the user's token.
        await firebaseFirestore
            .collection("LECTURERS")
            .doc(user.user?.uid)
            .update({'Token': await FirebaseMessaging.instance.getToken()});
      }
      // Return success.
      return Right(users.exists);
    } on FirebaseAuthException catch (error) {
      // Handle FirebaseAuth exceptions.
      log('FirebaseAuthException occurred: ${error.message}');
      return Left(error.appFirebaseExceptionType());
    } catch (error) {
      // Handle other exceptions.
      log('Unexpected error occurred during login: $error');
      return const Left(AppFirebaseExceptionType.networkUnavailable);
    }
  }

  /// Register user
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

  /// Send reset password email
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

  /// Upload users, personal information
  Future<Either<String, String>> uploadPersonalInformation(
      {required String staffId,
      required String programme,
      required List<String> courses}) async {
    try {
      await firebaseFirestore
          .collection("LECTURERS")
          .doc(_firebaseAuth.currentUser?.uid)
          .set({
        'StaffId': staffId,
        'Token': await FirebaseMessaging.instance.getToken(),
        'Programme': programme,
        'Courses': courses
      });
      return const Right('Personal Information uploaded successfully');
    } catch (error) {
      return const Left('Error uploading personal Information');
    }
  }


  /// Fetch List of Programmes in department with respective courses
  Future<Either<String, List<Department>>> fetchProgrammes() async {
    try {
      final data = await firebaseFirestore.collection("PROGRAMMES").get();
      return Right(data.docs.map((e) => Department.fromMap(e.data())).toList());
    }
    catch (error) {
      log(error.toString());
      return const Left('Error fetching courses');
    }
  }


}
