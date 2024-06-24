import 'package:cloud_firestore/cloud_firestore.dart';

import '../features/authentication/domain/model/model.dart';

List<Lecture> rain = [
  Lecture(
      id: "CMP 102",
      department: "Computer Science",
      code: "CMP 102",
      title: "Introduction to Problem Solving",
      occurrences: [
        LectureOccurrence(day: 2, start: 14, end: 16, venue: "CBT"),
      ]),
  Lecture(
      id: "PHY 102",
      department: "Physics",
      code: "PHY 102",
      title: "Electricity, Magnetism and Modern Physics",
      occurrences: [
        LectureOccurrence(day: 5, start: 16, end: 17, venue: "CBT"),
        LectureOccurrence(day: 2, start: 08, end: 10, venue: "CBT"),
      ]),
  Lecture(
      id: "PHY 108",
      department: "Physics",
      code: "PHY 108",
      title: "General Physics Laboratory II",
      occurrences: [
        LectureOccurrence(day: 3, start: 08, end: 12, venue: "PLAB"),
      ]),
  Lecture(
      id: "SEN 102",
      department: "Computer Science",
      code: "SEN 102",
      title: "Principles of Programming I",
      occurrences: [
        LectureOccurrence(day: 5, start: 11, end: 13, venue: "LR 16"),
        LectureOccurrence(day: 3, start: 11, end: 12, venue: "LR13"),
      ]),
  Lecture(
      id: "SEN 104",
      department: "Computer Science",
      code: "SEN 104",
      title: "Introduction to Web Technologies",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 11, venue: "LR13"),
        LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 16"),
      ]),
  Lecture(
      id: "MAT 102",
      department: "Mathematics",
      code: "MAT 102",
      title: "Elementary Mathematics II (Calculus)",
      occurrences: []),
  Lecture(
    id: "STA 102",
    department: "Statistics",
    code: "STA102",
    title: "Statistical",
    occurrences: [
      LectureOccurrence(day: 4, start: 16, end: 18, venue: "LR13"),

    ],
  ),
  Lecture(
      id: "STA 104",
      department: "Statistics",
      code: "STA 104",
      title: "Introduction to Probability Distribution",
      occurrences: [
        LectureOccurrence(day: 3, start: 08, end: 10, venue: "LR10"),
      ]),
  Lecture(
      id: "GNS 102",
      department: "General Studies",
      code: "GNS 102",
      title: "Communication in English II",
      occurrences: []),
  Lecture(
      id: "GNS 104",
      department: "General Studies",
      code: "GNS 104",
      title: "Islamic Faith and Practices",
      occurrences: [
        LectureOccurrence(day: 2, start: 12, end: 13, venue: "AUD"),
      ]),
  Lecture(
      id: "CMP 212",
      department: "Computer Science",
      code: "CMP 212",
      title: "Computer Hardware",
      occurrences: [
        LectureOccurrence(day: 1, start: 08, end: 10, venue: "AUD"),
        LectureOccurrence(day: 2, start: 14, end: 15, venue: "ILAB"),
      ]),
  Lecture(
      id: "SEN 202",
      department: "Software Engineering",
      code: "SEN 202",
      title: "Software Engineering Process",
      occurrences: [
        LectureOccurrence(day: 4, start: 14, end: 16, venue: "ILAB"),
        LectureOccurrence(day: 2, start: 09, end: 10, venue: "GLAB"),
      ]),
  Lecture(
      id: "SEN 204",
      department: "Software Engineering",
      code: "SEN 204",
      title: "Logic and Its Application in Computer Science",
      occurrences: [
        LectureOccurrence(day: 4, start: 16, end: 18, venue: "LR 11"),
      ]),
  Lecture(
      id: "SEN 208",
      department: "Software Engineering",
      code: "SEN 208",
      title: "Design and Analysis of Computer Algorithms",
      occurrences: [
        LectureOccurrence(day: 1, start: 16, end: 18, venue: "GLAB"),
      ]),
  Lecture(
    id: "CMP 204",
    department: "Computer Science",
    code: "CMP204",
    title: "Fundamentals of Data Structures",
    occurrences: [
      LectureOccurrence(day: 4, start: 12, end: 13, venue: "LR 13"),
      LectureOccurrence(day: 1, start: 11, end: 13, venue: "CBT"),
    ],
  ),
  Lecture(
      id: "CMP 208",
      department: "Computer Science",
      code: "CMP 208",
      title: "Discrete Structure",
      occurrences: [
        LectureOccurrence(day: 5, start: 11, end: 12, venue: "LR 13"),
        LectureOccurrence(day: 2, start: 15, end: 16, venue: "LR9"),
      ]),
  Lecture(
      id: "GNS 202",
      department: "General Studies",
      code: "GNS 202",
      title: "Nigerian People, Culture and the Economy",
      occurrences: [
        LectureOccurrence(day: 4, start: 10, end: 12, venue: "AUD"),

      ]),
  Lecture(
    id: "GNS 204",
    department: "General Studies",
    code: "GNS204",
    title: "Basic Islamic Concepts",
    occurrences: [
      LectureOccurrence(day: 3, start: 11, end: 12, venue: "AUD"),
    ],
  ),
  Lecture(
      id: "GNS 206",
      department: "General Studies",
      code: "GNS 206",
      title: "Contemporary Health Issues",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "AUD"),
      ]),
  Lecture(
      id: "SEN 388",
      department: "Software Engineering",
      code: "SEN 388",
      title: "Industrial Training",
      occurrences: []),
  Lecture(
      id: "GNS 302",
      department: "General Studies",
      code: "GNS 302",
      title: "Leadership Skills, Peace & Conflict Resolution",
      occurrences: [
        LectureOccurrence(day: 2, start: 09, end: 11, venue: "AUD"),
      ]),
  Lecture(
      id: "CMP 408",
      department: "Computer Science",
      code: "CMP 408",
      title: "Human Computer Interface",
      occurrences: [
        LectureOccurrence(day: 5, start: 08, end: 10, venue: "LR 9"),
        LectureOccurrence(day: 4, start: 15, end: 16, venue: "LR 10"),
      ]),
  Lecture(
      id: "CMP 412",
      department: "Computer Science",
      code: "CMP 412",
      title: "Modeling and Simulation",
      occurrences: [
        LectureOccurrence(day: 2, start: 12, end: 13, venue: "LR11"),
        LectureOccurrence(day: 1, start: 08, end: 10, venue: "ILAB"),
      ]),
  Lecture(
      id: "CMP 420",
      department: "Computer Science",
      code: "CMP 420",
      title: "Computer Networks and Communications",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "ILAB"),
        LectureOccurrence(day: 4, start: 14, end: 15, venue: "LR 12"),
      ]),
  Lecture(
      id: "SEN 402",
      department: "Software Engineering",
      code: "SEN 402",
      title: "Software Engineering Economics",
      occurrences: [
        LectureOccurrence(day: 2, start: 08, end: 10, venue: "LR13"),
      ]),
  Lecture(
      id: "SEN 406",
      department: "Software Engineering",
      code: "SEN 406",
      title: "Open Source Software Development and Applications",
      occurrences: [
        LectureOccurrence(day: 1, start: 14, end: 16, venue: "BLAB"),
      ]),
  Lecture(
      id: "SEN 408",
      department: "Software Engineering",
      code: "SEN 408",
      title: "Distributed, Parallel and Cloud Computer Science",
      occurrences: [
        LectureOccurrence(day: 2, start: 14, end: 16, venue: "LR13"),
      ]),
  Lecture(
      id: "SEN 410",
      department: "Software Engineering",
      code: "SEN 410",
      title: "Software Architecture and Design",
      occurrences: [
        LectureOccurrence(day: 3, start: 08, end: 10, venue: "CBT"),
      ]),
  Lecture(
      id: "SEN 412",
      department: "Software Engineering",
      code: "SEN 412",
      title: "Special Topics in Software Engineering",
      occurrences: [
        LectureOccurrence(day: 4, start: 08, end: 10, venue: "LR 13"),
      ]),
  Lecture(
      id: "SEN 414",
      department: "Software Engineering",
      code: "SEN 414",
      title: "Fault-Tolerant Computer Science",
      occurrences: [
        LectureOccurrence(day: 1, start: 16, end: 18, venue: "ILAB"),
      ]),
  Lecture(
      id: "SEN 416",
      department: "Software Engineering",
      code: "SEN 416",
      title: "Game Design and Development",
      occurrences: []),
  Lecture(
      id: "SEN 420",
      department: "Software Engineering",
      code: "SEN 420",
      title: "Unix/Linux Operating Systems",
      occurrences: [
        LectureOccurrence(day: 3, start: 11, end: 13, venue: "CBT"),
      ]),
  Lecture(
    id: "CMP 202",
    department: "Computer Science",
    code: "CMP202",
    title: "Computer Programming II",
    occurrences: [
      LectureOccurrence(day: 1, start: 10, end: 11, venue: "LR 13"),
      LectureOccurrence(day: 3, start: 10, end: 12, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "CMP 310",
    department: "Computer Science",
    code: "CMP310",
    title: "Algorithms and Complexity Analysis",
    occurrences: [
      LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 12"),
    ],
  ),
  Lecture(
    id: "CYB 102",
    department: "Cyber Security",
    code: "CYB102",
    title: "Fundamentals of Cyber Security I",
    occurrences: [
      LectureOccurrence(day: 1, start: 14, end: 14, venue: "CBT"),
      LectureOccurrence(day: 2, start: 17, end: 18, venue: "LR12"),
    ],
  ),
  Lecture(
    id: "CYB 202",
    department: "Cyber Security",
    code: "CYB202",
    title: "System and Network Administration",
    occurrences: [
      LectureOccurrence(day: 4, start: 08, end: 10, venue: "ILAB"),
      LectureOccurrence(day: 3, start: 15, end: 16, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "CYB 204",
    department: "Cyber Security",
    code: "CYB204",
    title: "Computer Communication Networks",
    occurrences: [
      LectureOccurrence(day: 2, start: 10, end: 11, venue: "LR12"),
      LectureOccurrence(day: 1, start: 08, end: 10, venue: "LR 15"),
    ],
  ),
  Lecture(
    id: "CYB 206",
    department: "Cyber Security",
    code: "CYB206",
    title: "Enterprise and Perimeter Security",
    occurrences: [
      LectureOccurrence(day: 5, start: 16, end: 18, venue: "LR 12"),
    ],
  ),
  Lecture(
    id: "CYB 208",
    department: "Cyber Security",
    code: "CYB208",
    title: "Information Security Policy",
    occurrences: [
      LectureOccurrence(day: 2, start: 08, end: 10, venue: "LR12"),
    ],
  ),
  Lecture(
    id: "CYB 402",
    department: "Cyber Security",
    code: "CYB402",
    title: "Fault Tolerant Computing",
    occurrences: [
      LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR10"),
    ],
  ),
  Lecture(
    id: "CYB 404",
    department: "Cyber Security",
    code: "CYB404",
    title: "Cryptography: Algorithms and",
    occurrences: [
      LectureOccurrence(day: 4, start: 11, end: 13, venue: "LR 10"),
    ],
  ),
  Lecture(
    id: "CYB 406",
    department: "Cyber Security",
    code: "CYB406",
    title: "Applications",
    occurrences: [],
  ),
  Lecture(
    id: "CYB 408",
    department: "Cyber Security",
    code: "CYB408",
    title: "Cyber Law",
    occurrences: [
      LectureOccurrence(day: 5, start: 16, end: 18, venue: "LR 9"),
    ],
  ),
  Lecture(
    id: "CYB 410",
    department: "Cyber Security",
    code: "CYB410",
    title: "Information Security Risk Analysis and Management",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 10, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "CYB 412",
    department: "Cyber Security",
    code: "CYB412",
    title: "Ethical Hacking and Reverse Engineering",
    occurrences: [
      LectureOccurrence(day: 4, start: 16, end: 18, venue: "AUD"),
    ],
  ),
  Lecture(
    id: "CYB 414",
    department: "Cyber Security",
    code: "CYB414",
    title: "Information Security Models",
    occurrences: [],
  ),
  Lecture(
    id: "CYB 420",
    department: "Cyber Security",
    code: "CYB420",
    title: "Privacy in a Networked World",
    occurrences: [],
  ),
  Lecture(
    id: "CHM 104",
    department: "Chemistry",
    code: "CHM 104",
    title: "General Inorganic Chemistry",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 10, venue: "CBT"),
    ],
  ),
  Lecture(
    id: "INS 102",
    department: "Information Systems",
    code: "INS 102",
    title: "Introduction to Information Systems",
    occurrences: [
      LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 14"),
      LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 14"),
    ],
  ),
  Lecture(
    id: "BUS 212",
    department: "Business",
    code: "BUS212",
    title: "Introduction to Business II",
    occurrences: [
      LectureOccurrence(day: 1, start: 14, end: 16, venue: "ILAB"),

    ],
  ),
  Lecture(
    id: "BUS 214",
    department: "Business",
    code: "BUS 214",
    title: "Interpersonal Communication",
    occurrences: [
      LectureOccurrence(day: 4, start: 14, end: 16, venue: "ILAB"),

    ],
  ),
  Lecture(
    id: "BUS 216",
    department: "Business",
    code: "BUS216",
    title: "Human Behaviour in Organisation",
    occurrences: [
      LectureOccurrence(day: 2, start: 16, end: 18, venue: "AUD"),

    ],
  ),
  Lecture(
    id: "INS 206",
    department: "Information Systems",
    code: "INS 206",
    title: "Database Management Practice",
    occurrences: [
      LectureOccurrence(day: 5, start: 12, end: 13, venue: "LR 13"),
      LectureOccurrence(day: 4, start: 16, end: 18, venue: "LR 16"),
    ],
  ),
  Lecture(
    id: "INS 404",
    department: "Information Systems",
    code: "INS 404",
    title: "Legal and Professional Issues in IT",
    occurrences: [
      LectureOccurrence(day: 3, start: 11, end: 13, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "INS 406",
    department: "Information Systems",
    code: "INS 406",
    title: "Information Assurance and Security",
    occurrences: [
      LectureOccurrence(day: 4, start: 08, end: 09, venue: "LR 9"),
      LectureOccurrence(day: 2, start: 08, end: 10, venue: "LR11"),
    ],
  ),
  Lecture(
    id: "INS 408",
    department: "Information Systems",
    code: "INS 408",
    title: "Database Administration",
    occurrences: [],
  ),
  Lecture(
    id: "INS 410",
    department: "Information Systems",
    code: "INS 410",
    title: "Database Programming",
    occurrences: [],
  ),
  Lecture(
    id: "INS 412",
    department: "Information Systems",
    code: "INS 412",
    title: "Special Topics in Information Systems",
    occurrences: [
      LectureOccurrence(day: 4, start: 09, end: 10, venue: "LR 9"),
      LectureOccurrence(day: 2, start: 10, end: 12, venue: "LR11"),
    ],
  ),
  Lecture(
    id: "INS 432",
    department: "Information Systems",
    code: "INS 432",
    title: "Web Application Development",
    occurrences: [
      LectureOccurrence(day: 1, start: 11, end: 13, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "INS 436",
    department: "Information Systems",
    code: "INS 436",
    title: "Network Administration",
    occurrences: [
      LectureOccurrence(day: 3, start: 10, end: 11, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "INS 438",
    department: "Information Systems",
    code: "INS 438",
    title: "Information Storage and Management Technologies",
    occurrences: [],
  ),
  Lecture(
    id: "INS 440",
    department: "Information Systems",
    code: "INS 440",
    title: "Business Models and Innovation",
    occurrences: [],
  ),
  Lecture(
      id: "MAT 202",
      department: "Mathematics",
      code: "MAT 202",
      title: "Elementary Differential Equations",
      occurrences: [
        LectureOccurrence(day: 3, start: 12, end: 13, venue: "LR10"),
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "LR14"),
      ]),
  Lecture(
      id: "MAT 206",
      department: "Mathematics",
      code: "MAT 206",
      title: "Linear Algebra II",
      occurrences: [
        LectureOccurrence(day: 5, start: 08, end: 10, venue: "LR 13"),
      ]),
  Lecture(
      id: "PHY 202",
      department: "Physics",
      code: "PHY 202",
      title: "Electric Circuit Theory and Electronics",
      occurrences: [
        LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 13"),
      ]),
  Lecture(
      id: "STA 204",
      department: "Statistics",
      code: "STA 204",
      title: "Probability II",
      occurrences: [
        LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 11"),

      ]),
  Lecture(
      id: "STA 210",
      department: "Statistics",
      code: "STA 210",
      title: "Statistics for Physical Sciences and Engineering II",
      occurrences: [
        LectureOccurrence(day: 4, start: 16, end: 18, venue: "LR 12"),

      ]),
  Lecture(
      id: "CMP 302",
      department: "Computer Science",
      code: "CMP 302",
      title: "Object Oriented programming",
      occurrences: [
        LectureOccurrence(day: 2, start: 15, end: 16, venue: "LR16"),
        LectureOccurrence(day: 1, start: 11, end: 13, venue: "LR11"),
      ]),
  Lecture(
      id: "CMP 304",
      department: "Computer Science",
      code: "CMP 304",
      title: "Data Management I",
      occurrences: [
        LectureOccurrence(day: 4, start: 10, end: 13, venue: "LR 12"),
        LectureOccurrence(day: 3, start: 15, end: 16, venue: "LR12"),
      ]),
  Lecture(
      id: "CMP 306",
      department: "Computer Science",
      code: "CMP 306",
      title: "Theory of Computing",
      occurrences: []),
  Lecture(
      id: "CMP 308",
      department: "Computer Science",
      code: "CMP 308",
      title: "Formal Methods and Software Development",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 13, venue: "LR 10"),
      ]),
  Lecture(
      id: "CMP 314",
      department: "Computer Science",
      code: "CMP 314",
      title: "Computer Architecture and Organization II",
      occurrences: [
        LectureOccurrence(day: 2, start: 14, end: 15, venue: "LR16"),
        LectureOccurrence(day: 1, start: 14, end: 16, venue: "LR 13"),
      ]),
  Lecture(
      id: "CMP 316",
      department: "Computer Science",
      code: "CMP 316",
      title: "Compiler Construction I",
      occurrences: [
        LectureOccurrence(day: 3, start: 11, end: 13, venue: "LR12"),
        LectureOccurrence(day: 2, start: 17, end: 18, venue: "LR9"),
      ]),
  Lecture(
      id: "CMP 332",
      department: "Computer Science",
      code: "CMP 332",
      title: "Survey of Programming Languages",
      occurrences: [
        LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 13"),
        LectureOccurrence(day: 2, start: 11, end: 13, venue: "LR12"),
      ]),
  Lecture(
      id: "CMP 334",
      department: "Computer Science",
      code: "CMP 334",
      title: "Numerical Analysis",
      occurrences: []),
  Lecture(
      id: "CMP 404",
      department: "Computer Science",
      code: "CMP 404",
      title: "Data Management II",
      occurrences: [
        LectureOccurrence(day: 3, start: 10, end: 12, venue: "LR9"),
        LectureOccurrence(day: 1, start: 10, end: 11, venue: "LR 12"),
      ]),
  Lecture(
      id: "CMP 410",
      department: "Computer Science",
      code: "CMP 410",
      title: "Compiler Construction II",
      occurrences: [
        LectureOccurrence(day: 4, start: 11, end: 13, venue: "ILAB"),
        LectureOccurrence(day: 2, start: 16, end: 17, venue: "LR9"),
      ]),
  Lecture(
      id: "CMP 416",
      department: "Computer Science",
      code: "CMP 416",
      title: "Formal Models of Computation",
      occurrences: [
        LectureOccurrence(day: 4, start: 15, end: 16, venue: "CLAB"),
      ]),
  Lecture(
      id: "CMP 418",
      department: "Computer Science",
      code: "CMP 418",
      title: "Net-Centric Computing",
      occurrences: [
        LectureOccurrence(day: 1, start: 14, end: 16, venue: "LR 12"),
        LectureOccurrence(day: 2, start: 15, end: 16, venue: "ILAB"),
      ]),
  Lecture(
      id: "CMP 422",
      department: "Computer Science",
      code: "CMP 422",
      title: "Special Topics in Computer Science",
      occurrences: []),
];
void upload(){
  rain.forEach((element) {
    FirebaseFirestore.instance.collection("RAIN").doc(element.id).set(element.toMap());
  });
}