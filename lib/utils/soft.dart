import 'dart:developer';
import 'package:alhikmah_schedule_lecturer/utils/last.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../soft.dart';


void uploadProgrammes()async{
  programmes.forEach((element) async{
    final collection = FirebaseFirestore.instance.collection("COURSES").doc(element.name);
    element.lectures?.forEach((element) {
      collection.collection(element.id).add(element.toMap());
    });
  });
  log('uploaded');

}
List<Programme> programmes = [
  Programme(name: "Computer Science",id: 001,lectures: comp),
  Programme(name: "Software Engineering",id: 002,lectures: software),
  Programme(name: "Cyber Security",id: 003,lectures: cyber),
  Programme(name: "Information Systems",id: 004,lectures: ins),
];

