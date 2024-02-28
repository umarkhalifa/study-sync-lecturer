import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class Course{
  final String? id;
  final String? department;
  final String? code;
  final String? title;

  Course({this.id, this.department, this.code, this.title});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'department': department,
      'code': code,
      'title': title,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'] as String,
      department: map['department'] as String,
      code: map['code'] as String,
      title: map['title'] as String,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Course &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          department == other.department &&
          code == other.code &&
          title == other.title;

  @override
  int get hashCode =>
      id.hashCode ^ department.hashCode ^ code.hashCode ^ title.hashCode;
}
class Programme{
  final String? name;
  final num? id;
  final List<Course>? courses;

  Programme({
    this.name, this.id,this.courses
});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'id': id,
      'courses': courses?.map((e) => e.toMap()).toList(),
    };
  }

  factory Programme.fromMap(Map<String, dynamic> map) {
    return Programme(
      name: map['name'] as String,
      id: map['id'] as num,
      courses: (map['courses'] as List).map((e) => Course.fromMap(e)).toList(),
    );
  }
}
void uploadProgrammes()async{
  programmes.forEach((element) async{
    await FirebaseFirestore.instance.collection("PROGRAMMES").doc(element.name).set(element.toMap());
  });
  log('uploaded');

}
List<Programme> programmes = [
  Programme(name: "Computer Science",id: 001,courses: computer),
  Programme(name: "Software Engineering",id: 002,courses: software),
  Programme(name: "Cyber Security",id: 003,courses: cyber),
  Programme(name: "Information Systems",id: 004,courses: information),
];

List<Course> software = [
  Course(id: "CMP 101", department: "Computer Science", code: "CMP 101", title: "Introduction to Computer Science"),
  Course(id: "CMP 102", department: "Computer Science", code: "CMP 102", title: "Introduction to Problem Solving"),
  Course(id: "CHM 105", department: "Chemistry", code: "CHM 105", title: "General Physical Chemistry"),
  Course(id: "PHY 101", department: "Physics", code: "PHY 101", title: "Mechanics, Thermal Physics and Waves"),
  Course(id: "PHY 102", department: "Physics", code: "PHY 102", title: "Electricity, Magnetism and Modern Physics"),
  Course(id: "PHY 107", department: "Physics", code: "PHY 107", title: "General Physics Laboratory I"),
  Course(id: "PHY 108", department: "Physics", code: "PHY 108", title: "General Physics Laboratory II"),
  Course(id: "SEN 101", department: "Computer Science", code: "SEN 101", title: "Introduction to Computer Science and Applications"),
  Course(id: "SEN 102", department: "Computer Science", code: "SEN 102", title: "Principles of Programming I"),
  Course(id: "SEN 104", department: "Computer Science", code: "SEN 104", title: "Introduction to Web Technologies"),
  Course(id: "MAT 101", department: "Mathematics", code: "MAT 101", title: "Elementary Mathematics I (Algebra and Trigonometry)"),
  Course(id: "MAT 102", department: "Mathematics", code: "MAT 102", title: "Elementary Mathematics II (Calculus)"),
  Course(id: "MAT 103", department: "Mathematics", code: "MAT 103", title: "Elementary Mathematics III (Vectors, Mechanics and Geometry)"),
  Course(id: "STA 104", department: "Statistics", code: "STA 104", title: "Introduction to Probability Distribution"),
  Course(id: "GNS 101", department: "General Studies", code: "GNS 101", title: "Communication in English I"),
  Course(id: "GNS 102", department: "General Studies", code: "GNS 102", title: "Communication in English II"),
  Course(id: "GNS 103", department: "General Studies", code: "GNS 103", title: "Basic Communication in Arabic I"),
  Course(id: "GNS 105", department: "General Studies", code: "GNS 105", title: "Use of Library, Study Skills and ICT"),
  Course(id: "GNS 104", department: "General Studies", code: "GNS 104", title: "Islamic Faith and Practices"),
  Course(id: "CMP 212", department: "Computer Science", code: "CMP 212", title: "Computer Hardware"),
  Course(id: "SEN 201", department: "Software Engineering", code: "SEN 201", title: "Introduction to Software Engineering"),
  Course(id: "SEN 202", department: "Software Engineering", code: "SEN 202", title: "Software Engineering Process"),
  Course(id: "SEN 204", department: "Software Engineering", code: "SEN 204", title: "Logic and Its Application in Computer Science"),
  Course(id: "SEN 205", department: "Software Engineering", code: "SEN 205", title: "Software Requirements and Design"),
  Course(id: "SEN 207", department: "Software Engineering", code: "SEN 207", title: "Computer Architecture and Organization"),
  Course(id: "SEN 208", department: "Software Engineering", code: "SEN 208", title: "Design and Analysis of Computer Algorithms"),
  Course(id: "SEN 211", department: "Software Engineering", code: "SEN 211", title: "Software Construction"),
  Course(id: "SEN 213", department: "Software Engineering", code: "SEN 213", title: "Principle of Operating System"),
  Course(id: "CMP 204", department: "Computer Science", code: "CMP 204", title: "Fundamentals of Data Structures"),
  Course(id: "CMP 208", department: "Computer Science", code: "CMP 208", title: "Discrete Structure"),
  Course(id: "MAT 205", department: "Mathematics", code: "MAT 205", title: "Linear Algebra I"),
  Course(id: "STA 209", department: "Statistics", code: "STA 209", title: "Statistics for Physical Sciences and Engineering I"),
  Course(id: "GNS 201", department: "General Studies", code: "GNS 201", title: "Logic, Philosophy and Human Existence"),
  Course(id: "GNS 202", department: "General Studies", code: "GNS 202", title: "Nigerian People, Culture and the Economy"),
  Course(id: "GNS 203", department: "General Studies", code: "GNS 203", title: "Basic Communication in Arabic II"),
  Course(id: "GNS 204", department: "General Studies", code: "GNS 204", title: "Basic Islamic Concepts"),
  Course(id: "GNS 205", department: "General Studies", code: "GNS 205", title: "Introduction to Entrepreneurship"),
  Course(id: "GNS 206", department: "General Studies", code: "GNS 206", title: "Contemporary Health Issues"),
  Course(id: "CMP 331", department: "Computer Science", code: "CMP 331", title: "Operations Research"),
  Course(id: "SEN 301", department: "Software Engineering", code: "SEN 301", title: "Object-Oriented Analysis and Design"),
  Course(id: "SEN 303", department: "Software Engineering", code: "SEN 303", title: "Software Testing and Quality Assurance"),
  Course(id: "SEN 305", department: "Software Engineering", code: "SEN 305", title: "Web Application Development"),
  Course(id: "SEN 307", department: "Software Engineering", code: "SEN 307", title: "Database Systems"),
  Course(id: "CMP 317", department: "Computer Science", code: "CMP 317", title: "Research Methodology"),
  Course(id: "SEN 313", department: "Software Engineering", code: "SEN 313", title: "Engineering Mobile Applications"),
  Course(id: "SEN 388", department: "Software Engineering", code: "SEN 388", title: "Industrial Training"),
  Course(id: "GNS 301", department: "General Studies", code: "GNS 301", title: "Environment & Sustainable Development"),
  Course(id: "GNS 302", department: "General Studies", code: "GNS 302", title: "Leadership Skills, Peace & Conflict Resolution"),
  Course(id: "GNS 303", department: "General Studies", code: "GNS 303", title: "Entrepreneurship and Skills Development"),
  Course(id: "CMP 401", department: "Computer Science", code: "CMP 401", title: "Organization of Programming Languages"),
  Course(id: "CMP 408", department: "Computer Science", code: "CMP 408", title: "Human Computer Interface"),
  Course(id: "CMP 411", department: "Computer Science", code: "CMP 411", title: "Artificial Intelligence"),
  Course(id: "CMP 412", department: "Computer Science", code: "CMP 412", title: "Modeling and Simulation"),
  Course(id: "CMP 420", department: "Computer Science", code: "CMP 420", title: "Computer Networks and Communications"),
  Course(id: "CMP 433", department: "Computer Science", code: "CMP 433", title: "Computer Graphics and Visualization"),
  Course(id: "SEN 401", department: "Software Engineering", code: "SEN 401", title: "Software Configuration Management and Maintenance"),
  Course(id: "SEN 402", department: "Software Engineering", code: "SEN 402", title: "Software Engineering Economics"),
  Course(id: "SEN 403", department: "Software Engineering", code: "SEN 403", title: "Software Engineering Project Management"),
  Course(id: "SEN 406", department: "Software Engineering", code: "SEN 406", title: "Open Source Software Development and Applications"),
  Course(id: "SEN 407", department: "Software Engineering", code: "SEN 407", title: "Software Engineering Professional Practice"),
  Course(id: "SEN 408", department: "Software Engineering", code: "SEN 408", title: "Distributed, Parallel and Cloud Computer Science"),
  Course(id: "SEN 409", department: "Software Engineering", code: "SEN 409", title: "Software Engineering Security"),
  Course(id: "SEN 410", department: "Software Engineering", code: "SEN 410", title: "Software Architecture and Design"),
  Course(id: "SEN 412", department: "Software Engineering", code: "SEN 412", title: "Special Topics in Software Engineering"),
  Course(id: "SEN 413", department: "Software Engineering", code: "SEN 413", title: "Parallel Algorithm and Programming"),
  Course(id: "SEN 414", department: "Software Engineering", code: "SEN 414", title: "Fault-Tolerant Computer Science"),
  Course(id: "SEN 416", department: "Software Engineering", code: "SEN 416", title: "Game Design and Development"),
  Course(id: "SEN 420", department: "Software Engineering", code: "SEN 420", title: "Unix/Linux Operating Systems"),
  Course(id: "SEN 499", department: "Software Engineering", code: "SEN 499", title: "Project"),
];

List<Course> cyber = [
  Course(id: "BGY101", department: "Biology", code: "BGY101", title: "General Introductory Biology"),
  Course(id: "CHM105", department: "Chemistry", code: "CHM105", title: "General Physical Chemistry"),
  Course(id: "CMP101", department: "Computer Science", code: "CMP101", title: "Introduction to Computer Science"),
  Course(id: "CMP102", department: "Computer Science", code: "CMP102", title: "Introduction to Problem Solving"),
  Course(id: "CMP201", department: "Computer Science", code: "CMP201", title: "Computer Programming I"),
  Course(id: "CMP202", department: "Computer Science", code: "CMP202", title: "Computer Programming II"),
  Course(id: "CMP204", department: "Computer Science", code: "CMP204", title: "Fundamentals of Data Structures"),
  Course(id: "CMP205", department: "Computer Science", code: "CMP205", title: "Operating Systems I"),
  Course(id: "CMP208", department: "Computer Science", code: "CMP208", title: "Discrete Structure"),
  Course(id: "CMP310", department: "Computer Science", code: "CMP310", title: "Algorithms and Complexity Analysis"),
  Course(id: "CMP315", department: "Computer Science", code: "CMP315", title: "Computer Architecture and Organization I"),
  Course(id: "CMP321", department: "Computer Science", code: "CMP321", title: "System Analysis and Design"),
  Course(id: "CMP403", department: "Computer Science", code: "CMP403", title: "Software Engineering"),
  Course(id: "CMP411", department: "Computer Science", code: "CMP411", title: "Artificial Intelligence"),
  Course(id: "CMP412", department: "Computer Science", code: "CMP412", title: "Special Topics on Information Security Modelling and Simulation"),
  Course(id: "CMP420", department: "Computer Science", code: "CMP420", title: "Computer Networks and Communication"),
  Course(id: "CYB102", department: "Cyber Security", code: "CYB102", title: "Fundamentals of Cyber Security I"),
  Course(id: "CYB201", department: "Cyber Security", code: "CYB201", title: "Fundamentals of Cyber Security I"),
  Course(id: "CYB202", department: "Cyber Security", code: "CYB202", title: "System and Network Administration"),
  Course(id: "CYB203", department: "Cyber Security", code: "CYB203", title: "Cybersecurity in Business and Industry"),
  Course(id: "CYB204", department: "Cyber Security", code: "CYB204", title: "Computer Communication Networks"),
  Course(id: "CYB205", department: "Cyber Security", code: "CYB205", title: "Introduction to Digital Forensics"),
  Course(id: "CYB206", department: "Cyber Security", code: "CYB206", title: "Enterprise and Perimeter Security"),
  Course(id: "CYB208", department: "Cyber Security", code: "CYB208", title: "Information Security Policy"),
  Course(id: "CYB301", department: "Cyber Security", code: "CYB301", title: "Software Defined Networks"),
  Course(id: "CYB303", department: "Cyber Security", code: "CYB303", title: "Cryptographic Techniques"),
  Course(id: "CYB305", department: "Cyber Security", code: "CYB305", title: "Biometric Security"),
  Course(id: "CYB307", department: "Cyber Security", code: "CYB307", title: "Information Security Engineering"),
  Course(id: "CYB309", department: "Cyber Security", code: "CYB309", title: "System Security"),
  Course(id: "CYB388", department: "Cyber Security", code: "CYB388", title: "Industrial Training"),
  Course(id: "CYB401", department: "Cyber Security", code: "CYB401", title: "Database Management and Control System"),
  Course(id: "CYB402", department: "Cyber Security", code: "CYB402", title: "Fault Tolerant Computing"),
  Course(id: "CYB403", department: "Cyber Security", code: "CYB403", title: "System Vulnerability Assessment and Testing"),
  Course(id: "CYB404", department: "Cyber Security", code: "CYB404", title: "Cryptography: Algorithms and"),
  Course(id: "CYB405", department: "Cyber Security", code: "CYB405", title: "Cloud Computing Security"),
  Course(id: "CYB406", department: "Cyber Security", code: "CYB406", title: "Applications"),
  Course(id: "CYB407", department: "Cyber Security", code: "CYB407", title: "Information Disaster Recovery"),
  Course(id: "CYB408", department: "Cyber Security", code: "CYB408", title: "Cyber Law"),
  Course(id: "CYB409", department: "Cyber Security", code: "CYB409", title: "VoIP and Multimedia Security"),
  Course(id: "CYB410", department: "Cyber Security", code: "CYB410", title: "Information Security Risk Analysis and Management"),
  Course(id: "CYB412", department: "Cyber Security", code: "CYB412", title: "Ethical Hacking and Reverse Engineering"),
  Course(id: "CYB414", department: "Cyber Security", code: "CYB414", title: "Information Security Models"),
  Course(id: "CYB420", department: "Cyber Security", code: "CYB420", title: "Privacy in a Networked World"),
  Course(id: "CYB499", department: "Cyber Security", code: "CYB499", title: "Final Year Students Project"),
  Course(id: "GNS101", department: "General Studies", code: "GNS101", title: "Use of English I"),
  Course(id: "GNS102", department: "General Studies", code: "GNS102", title: "Use of English II"),
  Course(id: "GNS103", department: "General Studies", code: "GNS103", title: "Beginners' Arabic Reading and Conversation I"),
  Course(id: "GNS104", department: "General Studies", code: "GNS104", title: "Islamic Faith and Practices"),
  Course(id: "GNS201", department: "General Studies", code: "GNS201", title: "Philosophy, Logic and Afro-Arab Culture I"),
  Course(id: "GNS202", department: "General Studies", code: "GNS202", title: "Nigerian people, Culture & Economy"),
  Course(id: "GNS203", department: "General Studies", code: "GNS203", title: "Beginners’ Arabic Reading and Conversation II"),
  Course(id: "GNS204", department: "General Studies", code: "GNS204", title: "Basic Islamic Concepts"),
  Course(id: "GNS301", department: "General Studies", code: "GNS301", title: "Philosophy of Science and Computer Application"),
  Course(id: "GSE301", department: "Graduate Studies", code: "GSE301", title: "Graduate Self Employment Scheme"),
  Course(id: "MAT101", department: "Mathematics", code: "MAT101", title: "Algebra and Trigonometry"),
  Course(id: "MAT102", department: "Mathematics", code: "MAT102", title: "Calculus"),
  Course(id: "MAT103", department: "Mathematics", code: "MAT103", title: "Vector, Mechanics and Geometry"),
  Course(id: "MAT201", department: "Mathematics", code: "MAT201", title: "Mathematical Methods I"),
  Course(id: "MAT205", department: "Mathematics", code: "MAT205", title: "Linear Algebra 1"),
  Course(id: "PHY101", department: "Physics", code: "PHY101", title: "Mechanics, Thermal Physics & Waves"),
  Course(id: "PHY102", department: "Physics", code: "PHY102", title: "Electricity, Magnetism & Modern Physics"),
  Course(id: "PHY107", department: "Physics", code: "PHY107", title: "General Physics Laboratory I"),
  Course(id: "PHY108", department: "Physics", code: "PHY108", title: "General Physics Laboratory II"),
  Course(id: "STA102", department: "Statistics", code: "STA102", title: "Statistical"),
  Course(id: "STA104", department: "Statistics", code: "STA104", title: "Introduction to Probability"),
];

List<Course> information = [
  Course(id: "BGY 101", department: "Biology", code: "BGY 101", title: "Introductory General Biology"),
  Course(id: "CHM 105", department: "Chemistry", code: "CHM 105", title: "General Physical Chemistry"),
  Course(id: "CMP 101", department: "Computer Science", code: "CMP 101", title: "Introduction to Computer Science"),
  Course(id: "MAT 101", department: "Mathematics", code: "MAT 101", title: "Elementary Mathematics I (Algebra and Trigonometry)"),
  Course(id: "MAT 103", department: "Mathematics", code: "MAT 103", title: "Elementary Mathematics III (Vectors, Mechanics and Geometry)"),
  Course(id: "PHY 101", department: "Physics", code: "PHY 101", title: "Mechanics, Thermal Physics and Waves"),
  Course(id: "PHY 107", department: "Physics", code: "PHY 107", title: "General Physics Laboratory I"),
  Course(id: "GNS 101", department: "General Studies", code: "GNS 101", title: "Communication in English I"),
  Course(id: "GNS 103", department: "General Studies", code: "GNS 103", title: "Basic Communication in Arabic I"),
  Course(id: "GNS 105", department: "General Studies", code: "GNS 105", title: "Use of Library, Study Skills and ICT"),
  Course(id: "CHM 104", department: "Chemistry", code: "CHM 104", title: "General Inorganic Chemistry"),
  Course(id: "CMP 102", department: "Computer Science", code: "CMP 102", title: "Introduction to Problem Solving"),
  Course(id: "MAT 102", department: "Mathematics", code: "MAT 102", title: "Elementary Mathematics II (Calculus)"),
  Course(id: "PHY 102", department: "Physics", code: "PHY 102", title: "Electricity, Magnetism and Modern Physics"),
  Course(id: "PHY 108", department: "Physics", code: "PHY 108", title: "General Physics Laboratory II"),
  Course(id: "GNS 102", department: "General Studies", code: "GNS 102", title: "Communication in English II"),
  Course(id: "GNS 104", department: "General Studies", code: "GNS 104", title: "Islamic Faith and Practices"),
  Course(id: "INS 102", department: "Information Systems", code: "INS 102", title: "Introduction to Information Systems"),
  Course(id: "STA 104", department: "Statistics", code: "STA 104", title: "Introduction to Probability Distribution"),
  Course(id: "CMP 201", department: "Computer Science", code: "CMP 201", title: "Computer Programming I"),
  Course(id: "CMP 205", department: "Computer Science", code: "CMP 205", title: "Operating Systems I"),
  Course(id: "MAT 201", department: "Mathematics", code: "MAT 201", title: "Mathematical Methods I"),
  Course(id: "MAT 205", department: "Mathematics", code: "MAT 205", title: "Linear Algebra I"),
  Course(id: "GNS 201", department: "General Studies", code: "GNS 201", title: "Logic, Philosophy and Human Existence"),
  Course(id: "GNS 203", department: "General Studies", code: "GNS 203", title: "Basic Communication in Arabic II"),
  Course(id: "GNS 205", department: "General Studies", code: "GNS 205", title: "Introduction to Entrepreneurship"),
  Course(id: "BU211", department: "Business", code: "BU211", title: "Introduction to Business I"),
  Course(id: "INS 201", department: "Information Systems", code: "INS 201", title: "Principles of Information Systems"),
  Course(id: "INS 203", department: "Information Systems", code: "INS 203", title: "Analysis of Business Requirements"),
  Course(id: "INS 205", department: "Information Systems", code: "INS 205", title: "Application Design and Development"),
  Course(id: "CMP 202", department: "Computer Science", code: "CMP 202", title: "Computer Programming II"),
  Course(id: "CMP 204", department: "Computer Science", code: "CMP 204", title: "Fundamentals of Data Structures"),
  Course(id: "CMP 208", department: "Computer Science", code: "CMP 208", title: "Discrete Structure"),
  Course(id: "GNS 202", department: "General Studies", code: "GNS 202", title: "Nigerian People, Culture and the Economy"),
  Course(id: "GNS 204", department: "General Studies", code: "GNS 204", title: "Basic Islamic Concepts"),
  Course(id: "GNS 206", department: "General Studies", code: "GNS 206", title: "Contemporary Health Issues"),
  Course(id: "BUS212", department: "Business", code: "BUS212", title: "Introduction to Business II"),
  Course(id: "BUS214", department: "Business", code: "BUS214", title: "Interpersonal Communication"),
  Course(id: "BUS216", department: "Business", code: "BUS216", title: "Human Behaviour in Organisation"),
  Course(id: "INS 206", department: "Information Systems", code: "INS 206", title: "Database Management Practice"),
  Course(id: "INS 301", department: "Information Systems", code: "NIS 301", title: "Systems Thinking, Modeling and Computer Simulation"),
  Course(id: "INS 303", department: "Information Systems", code: "INS 303", title: "E-Business Systems Development"),
  Course(id: "INS 305", department: "Information Systems", code: "INS 305", title: "Enterprise Architecture"),
  Course(id: "INS 307", department: "Information Systems", code: "INS 307", title: "Business Process Management"),
  Course(id: "INS 321", department: "Information Systems", code: "INS 321", title: "Agile Web Development with Open Source Framework"),
  Course(id: "INS 323", department: "Information Systems", code: "INS 323", title: "IS Innovation and New Technologies"),
  Course(id: "INS 351", department: "Information Systems", code: "INS 351", title: "Computer Crimes, Forensics and Auditing"),
  Course(id: "CMP 321", department: "Computer Science", code: "CMP 321", title: "System Analysis and Design"),
  Course(id: "CMP 317", department: "Computer Science", code: "CMP 317", title: "Research Methodology"),
  Course(id: "GNS 301", department: "General Studies", code: "GNS 301", title: "Environment & Sustainable Development"),
  Course(id: "GNS 303", department: "General Studies", code: "GNS 303", title: "Entrepreneurship and Skills Development"),
  Course(id: "GNS 302", department: "General Studies", code: "GNS 302", title: "Leadership Skills, Peace & Conflict Resolution"),
  Course(id: "INS 388", department: "Information Systems", code: "INS 388", title: "Industrial Training"),
  Course(id: "INS 403", department: "Information Systems", code: "INS 403", title: "Systems Integration and Architecture"),
  Course(id: "INS 405", department: "Information Systems", code: "INS 405", title: "Business Process Reengineering"),
  Course(id: "INS 407", department: "Information Systems", code: "INS 407", title: "Information Systems Project Management"),
  Course(id: "INS 411", department: "Information Systems", code: "INS 411", title: "Database Analysis and Design"),
  Course(id: "INS 433", department: "Information Systems", code: "INS 433", title: "Mobile Application Development"),
  Course(id: "INS 437", department: "Information Systems", code: "INS 437", title: "Network Servers and Infrastructures"),
  Course(id: "INS 499", department: "Information Systems", code: "INS 499", title: "Project"),
  Course(id: "CMP 408", department: "Computer Science", code: "CMP 408", title: "Human Computer Interface"),
  Course(id: "CMP 420", department: "Computer Science", code: "CMP 420", title: "Computer Networks and Communications"),
  Course(id: "INS 402", department: "Information Systems", code: "INS 402", title: "IT Governance"),
  Course(id: "INS 404", department: "Information Systems", code: "INS 404", title: "Legal and Professional Issues in IT"),
  Course(id: "INS 406", department: "Information Systems", code: "INS 406", title: "Information Assurance and Security"),
  Course(id: "INS 408", department: "Information Systems", code: "INS 408", title: "Database Administration"),
  Course(id: "INS 410", department: "Information Systems", code: "INS 410", title: "Database Programming"),
  Course(id: "INS 412", department: "Information Systems", code: "INS 412", title: "Special Topics in Information Systems"),
  Course(id: "INS 432", department: "Information Systems", code: "INS 432", title: "Web Application Development"),
  Course(id: "INS 436", department: "Information Systems", code: "INS 436", title: "Network Administration"),
  Course(id: "INS 438", department: "Information Systems", code: "INS 438", title: "Information Storage and Management Technologies"),
  Course(id: "INS 440", department: "Information Systems", code: "INS 440", title: "Business Models and Innovation"),
];

List<Course> computer =[
  Course(id: "BGY 101", department: "Biology", code: "BGY 101", title: "Introductory General Biology"),
  Course(id: "CHM 105", department: "Chemistry", code: "CHM 105", title: "General Physical Chemistry"),
  Course(id: "CMP 101", department: "Computer Science", code: "CMP 101", title: "Introduction to Computer Science"),
  Course(id: "GNS 101", department: "General Studies", code: "GNS 101", title: "Communication in English I"),
  Course(id: "GNS 103", department: "General Studies", code: "GNS 103", title: "Basic Communication in Arabic I"),
  Course(id: "GNS 105", department: "General Studies", code: "GNS 105", title: "Use of Library, Study Skills and ICT"),
  Course(id: "MAT 101", department: "Mathematics", code: "MAT 101", title: "Elementary Mathematics I (Algebra and Trigonometry)"),
  Course(id: "MAT 103", department: "Mathematics", code: "MAT 103", title: "Elementary Mathematics III (Vectors, Mechanics and Geometry)"),
  Course(id: "PHY 101", department: "Physics", code: "PHY 101", title: "Mechanics, Thermal Physics and Waves"),
  Course(id: "PHY 107", department: "Physics", code: "PHY 107", title: "General Physics Laboratory I"),
  Course(id: "CMP 102", department: "Computer Science", code: "CMP 102", title: "Introduction to Problem Solving"),
  Course(id: "GNS 102", department: "General Studies", code: "GNS 102", title: "Communication in English II"),
  Course(id: "GNS 104", department: "General Studies", code: "GNS 104", title: "Islamic Faith and Practices"),
  Course(id: "MAT 102", department: "Mathematics", code: "MAT 102", title: "Elementary Mathematics II (Calculus)"),
  Course(id: "PHY 102", department: "Physics", code: "PHY 102", title: "Electricity, Magnetism and Modern Physics"),
  Course(id: "PHY 108", department: "Physics", code: "PHY 108", title: "General Physics Laboratory II"),
  Course(id: "STA 104", department: "Statistics", code: "STA 104", title: "Introduction to Probability Distribution"),
  Course(id: "CMP 201", department: "Computer Science", code: "CMP 201", title: "Computer Programming I"),
  Course(id: "CMP 205", department: "Computer Science", code: "CMP 205", title: "Operating Systems I"),
  Course(id: "CMP 207", department: "Computer Science", code: "CMP 207", title: "Foundations of Sequential Program"),
  Course(id: "CMP 299", department: "Computer Science", code: "CMP 299", title: "Industrial Training I"),
  Course(id: "GNS 201", department: "General Studies", code: "GNS 201", title: "Logic, Philosophy and Human Existence"),
  Course(id: "GNS 203", department: "General Studies", code: "GNS 203", title: "Basic Communication in Arabic II"),
  Course(id: "GNS 205", department: "General Studies", code: "GNS 205", title: "Introduction to Entrepreneurship"),
  Course(id: "MAT 201", department: "Mathematics", code: "MAT 201", title: "Mathematical Methods I"),
  Course(id: "MAT 203", department: "Mathematics", code: "MAT 203", title: "Sets, Logic and Algebra"),
  Course(id: "MAT 205", department: "Mathematics", code: "MAT 205", title: "Linear Algebra I"),
  Course(id: "MAT 207", department: "Mathematics", code: "MAT 207", title: "Real Analysis I"),
  Course(id: "STA 203", department: "Statistics", code: "STA 203", title: "Statistical Inference II"),
  Course(id: "STA 209", department: "Statistics", code: "STA 209", title: "Statistics for Physical Sciences and Engineering I"),
  Course(id: "CMP 202", department: "Computer Science", code: "CMP 202", title: "Computer Programming II"),
  Course(id: "CMP 204", department: "Computer Science", code: "CMP 204", title: "Fundamentals of Data Structures"),
  Course(id: "CMP 208", department: "Computer Science", code: "CMP 208", title: "Discrete Structure"),
  Course(id: "CMP 212", department: "Computer Science", code: "CMP 212", title: "Computer Hardware"),
  Course(id: "GNS 202", department: "General Studies", code: "GNS 202", title: "Nigerian People, Culture and the Economy"),
  Course(id: "GNS 204", department: "General Studies", code: "GNS 204", title: "Basic Islamic Concepts"),
  Course(id: "GNS 206", department: "General Studies", code: "GNS 206", title: "Contemporary Health Issues"),
  Course(id: "MAT 202", department: "Mathematics", code: "MAT 202", title: "Elementary Differential Equations"),
  Course(id: "MAT 206", department: "Mathematics", code: "MAT 206", title: "Linear Algebra II"),
  Course(id: "PHY 202", department: "Physics", code: "PHY 202", title: "Electric Circuit Theory and Electronics"),
  Course(id: "STA 204", department: "Statistics", code: "STA 204", title: "Probability II"),
  Course(id: "STA 210", department: "Statistics", code: "STA 210", title: "Statistics for Physical Sciences and Engineering II"),
  Course(id: "CMP 301", department: "Computer Science", code: "CMP 301", title: "Structured Programming"),
  Course(id: "CMP 305", department: "Computer Science", code: "CMP 305", title: "Operating Systems II"),
  Course(id: "CMP 315", department: "Computer Science", code: "CMP 315", title: "Computer Architecture and Organization I"),
  Course(id: "CMP 317", department: "Computer Science", code: "CMP 317", title: "Research Methodology"),
  Course(id: "CMP 321", department: "Computer Science", code: "CMP 321", title: "System Analysis and Design"),
  Course(id: "CMP 331", department: "Computer Science", code: "CMP 331", title: "Operations Research"),
  Course(id: "CMP 333", department: "Computer Science", code: "CMP 333", title: "Computational Science and Numerical Methods"),
  Course(id: "CMP 335", department: "Computer Science", code: "CMP 335", title: "Statistical Computing"),
  Course(id: "CMP 399", department: "Computer Science", code: "CMP 399", title: "Industrial Training II"),
  Course(id: "GNS 301", department: "General Studies", code: "GNS 301", title: "Environment & Sustainable Development"),
  Course(id: "GNS 303", department: "General Studies", code: "GNS 303", title: "Entrepreneurship and Skills Development"),
  Course(id: "CMP 302", department: "Computer Science", code: "CMP 302", title: "Object Oriented programming"),
  Course(id: "CMP 304", department: "Computer Science", code: "CMP 304", title: "Data Management I"),
  Course(id: "CMP 306", department: "Computer Science", code: "CMP 306", title: "Theory of Computing"),
  Course(id: "CMP 308", department: "Computer Science", code: "CMP 308", title: "Formal Methods and Software Development"),
  Course(id: "CMP 310", department: "Computer Science", code: "CMP 310", title: "Algorithms and Complexity Analysis"),
  Course(id: "CMP 314", department: "Computer Science", code: "CMP 314", title: "Computer Architecture and Organization II"),
  Course(id: "CMP 316", department: "Computer Science", code: "CMP 316", title: "Compiler Construction I"),
  Course(id: "CMP 332", department: "Computer Science", code: "CMP 332", title: "Survey of Programming Languages"),
  Course(id: "CMP 334", department: "Computer Science", code: "CMP 334", title: "Numerical Analysis"),
  Course(id: "GNS 302", department: "General Studies", code: "GNS 302", title: "Leadership Skills, Peace & Conflict Resolution"),
  Course(id: "CMP 401", department: "Computer Science", code: "CMP 401", title: "Organization of Programming Languages"),
  Course(id: "CMP 403", department: "Computer Science", code: "CMP 403", title: "Software Engineering"),
  Course(id: "CMP 411", department: "Computer Science", code: "CMP 411", title: "Artificial Intelligence"),
  Course(id: "CMP 415", department: "Computer Science", code: "CMP 415", title: "Computer System Performance Evaluation"),
  Course(id: "CMP 433", department: "Computer Science", code: "CMP 433", title: "Computer Graphics and Visualization"),
  Course(id: "CMP 499", department: "Computer Science", code: "CMP 499", title: "Project"),
  Course(id: "CMP 404", department: "Computer Science", code: "CMP 404", title: "Data Management II"),
  Course(id: "CMP 408", department: "Computer Science", code: "CMP 408", title: "Human Computer Interface"),
  Course(id: "CMP 410", department: "Computer Science", code: "CMP 410", title: "Compiler Construction II"),
  Course(id: "CMP 412", department: "Computer Science", code: "CMP 412", title: "Modeling and Simulation"),
  Course(id: "CMP 416", department: "Computer Science", code: "CMP 416", title: "Formal Models of Computation"),
  Course(id: "CMP 418", department: "Computer Science", code: "CMP 418", title: "Net-Centric Computing"),
  Course(id: "CMP 420", department: "Computer Science", code: "CMP 420", title: "Computer Networks and Communications"),
  Course(id: "CMP 422", department: "Computer Science", code: "CMP 422", title: "Special Topics in Computer Science"),
];