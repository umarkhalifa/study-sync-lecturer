

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


];
List<Lecture> software = [
  Lecture(
      id: "CMP 102",
      department: "Computer Science",
      code: "CMP 102",
      title: "Introduction to Problem Solving",
      occurrences: [
        LectureOccurrence(day: 2, start: 14, end: 16, venue: "CBT"),

      ]),
  Lecture(
      id: "CHM 105",
      department: "Chemistry",
      code: "CHM 105",
      title: "General Physical Chemistry",
      occurrences: [
        LectureOccurrence(day: 2, start: 14, end: 16, venue: "CBT"),
        LectureOccurrence(day: 4, start: 16, end: 17, venue: "LR 12"),
      ]),
  Lecture(
      id: "PHY 101",
      department: "Physics",
      code: "PHY 101",
      title: "Mechanics, Thermal Physics and Waves",
      occurrences: [
        LectureOccurrence(day: 1, start: 08, end: 09, venue: "CBT"),
        LectureOccurrence(day: 5, start: 15, end: 16, venue: "CBT"),
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
      id: "PHY 107",
      department: "Physics",
      code: "PHY 107",
      title: "General Physics Laboratory I",
      occurrences: [
        LectureOccurrence(day: 5, start: 08, end: 13, venue: "PLAB"),
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
      id: "SEN 101",
      department: "Computer Science",
      code: "SEN 101",
      title: "Introduction to Computer Science and Applications",
      lecturer: "Mrs Tajudeen K.",
      phoneNumber: "07044873800",
      occurrences: [
        LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 9"),
        LectureOccurrence(day: 2, start: 16, end: 17, venue: "LR 12"),
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
      id: "MAT 101",
      department: "Mathematics",
      code: "MAT 101",
      title: "Elementary Mathematics I (Algebra and Trigonometry)",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "CBT"),
        LectureOccurrence(day: 4, start: 14, end: 15, venue: "CBT"),
      ]),
  Lecture(
      id: "MAT 102",
      department: "Mathematics",
      code: "MAT 102",
      title: "Elementary Mathematics II (Calculus)",
      occurrences: []),
  Lecture(
      id: "MAT 103",
      department: "Mathematics",
      code: "MAT 103",
      title: "Elementary Mathematics III (Vectors, Mechanics and Geometry)",
      occurrences: [
        LectureOccurrence(day: 4, start: 08, end: 10, venue: "LR 13"),
        LectureOccurrence(day: 3, start: 10, end: 11, venue: "LR 13"),
      ]),
  Lecture(
      id: "STA 104",
      department: "Statistics",
      code: "STA 104",
      title: "Introduction to Probability Distribution",
      occurrences: [
        LectureOccurrence(day: 3, start: 08, end: 10, venue: "LR10"),

      ]),
  Lecture(
      id: "GNS 101",
      department: "General Studies",
      code: "GNS 101",
      title: "Communication in English I",
      occurrences: []),
  Lecture(
      id: "GNS 102",
      department: "General Studies",
      code: "GNS 102",
      title: "Communication in English II",
      occurrences: []),
  Lecture(
      id: "GNS 103",
      department: "General Studies",
      code: "GNS 103",
      title: "Basic Communication in Arabic I",
      occurrences: [
        LectureOccurrence(day: 2, start: 12, end: 13, venue: "AUD"),
      ]),
  Lecture(
      id: "GNS 105",
      department: "General Studies",
      code: "GNS 105",
      title: "Use of Library, Study Skills and ICT",
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
      id: "SEN 201",
      department: "Software Engineering",
      code: "SEN 201",
      title: "Introduction to Software Engineering",
      lecturer: "Dr Diekola A.",
      phoneNumber: "08098488156",
      occurrences: [
        LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 10"),
        LectureOccurrence(day: 5, start: 09, end: 10, venue: "LR 13"),
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
      id: "SEN 205",
      department: "Software Engineering",
      code: "SEN 205",
      title: "Software Requirements and Design",
      lecturer: "Prof Abikoye O.C",
      phoneNumber: "08034544437",
      occurrences: [
        LectureOccurrence(day: 3, start: 08, end: 10, venue: "LR 13"),
        LectureOccurrence(day: 3, start: 11, end: 12, venue: "ILAB"),
      ]),
  Lecture(
      id: "SEN 207",
      department: "Software Engineering",
      code: "SEN 207",
      title: "Computer Architecture and Organization",
      lecturer: "Mrs Jimoh Mahmud A.O",
      phoneNumber: "08054316369",
      occurrences: [
        LectureOccurrence(day: 2, start: 14, end: 16, venue: "LR 11"),
        LectureOccurrence(day: 3, start: 15, end: 16, venue: "ILAB"),
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
      id: "SEN 211",
      department: "Software Engineering",
      code: "SEN 211",
      title: "Software Construction",
      lecturer: "Dr. Gbolagade M.D",
      phoneNumber: "07030848418",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "LR 16"),
      ]),
  Lecture(
      id: "SEN 213",
      department: "Software Engineering",
      code: "SEN 213",
      title: "Principle of Operating System",
      lecturer: "Abdulsalam O.S",
      phoneNumber: "08030785287",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "LR 13"),
        LectureOccurrence(day: 4, start: 10, end: 11, venue: "LR 9"),
      ]),
  Lecture(
      id: "CMP 204",
      department: "Computer Science",
      code: "CMP 204",
      title: "Fundamentals of Data Structures",
      occurrences: [
        LectureOccurrence(day: 1, start:11, end: 13, venue: "CBT"),

      ]),
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
      id: "MAT 205",
      department: "Mathematics",
      code: "MAT 205",
      title: "Linear Algebra I",
      occurrences: [
        LectureOccurrence(day: 1, start: 14, end: 16, venue: "LR 12"),
      ]),
  Lecture(
      id: "STA 209",
      department: "Statistics",
      code: "STA 209",
      title: "Statistics for Physical Sciences and Engineering I",
      occurrences: [
        LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 13"),
      ]),
  Lecture(
      id: "GNS 201",
      department: "General Studies",
      code: "GNS 201",
      title: "Logic, Philosophy and Human Existence",
      occurrences: [
        LectureOccurrence(day: 3, start: 11, end: 13, venue: "AUD"),
      ]),
  Lecture(
      id: "GNS 202",
      department: "General Studies",
      code: "GNS 202",
      title: "Nigerian People, Culture and the Economy",
      occurrences: []),
  Lecture(
      id: "GNS 203",
      department: "General Studies",
      code: "GNS 203",
      title: "Basic Communication in Arabic II",
      occurrences: [
        LectureOccurrence(day: 1, start: 12, end: 13, venue: "AUD"),
      ]),
  Lecture(
      id: "GNS 204",
      department: "General Studies",
      code: "GNS 204",
      title: "Basic Islamic Concepts",
      occurrences: []),
  Lecture(
      id: "GNS 205",
      department: "General Studies",
      code: "GNS 205",
      title: "Introduction to Entrepreneurship",
      occurrences: [
        LectureOccurrence(day: 4, start: 08, end: 10, venue: "AUD"),
      ]),
  Lecture(
      id: "GNS 206",
      department: "General Studies",
      code: "GNS 206",
      title: "Contemporary Health Issues",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "AUD"),

      ]),
  Lecture(
      id: "CMP 331",
      department: "Computer Science",
      code: "CMP 331",
      title: "Operations Research",
      lecturer: "Prof Olayibi S.O",
      phoneNumber: "08036669863",
      occurrences: [
        LectureOccurrence(day: 5, start: 16, end: 18, venue: "LR 13"),
      ]),
  Lecture(
      id: "SEN 301",
      department: "Software Engineering",
      code: "SEN 301",
      title: "Object-Oriented Analysis and Design",
      lecturer: "Mrs Jimoh Mahmud A.O",
      phoneNumber: "08054316369",
      occurrences: [
        LectureOccurrence(day: 3, start: 10, end: 11, venue: "LR 12"),
        LectureOccurrence(day: 5, start: 08, end: 10, venue: "ILAB"),
      ]),
  Lecture(
      id: "SEN 303",
      department: "Software Engineering",
      code: "SEN 303",
      title: "Software Testing and Quality Assurance",
      lecturer: "Dr Abdulrauf Tosho",
      phoneNumber: "08060869024",
      occurrences: [
        LectureOccurrence(day: 4, start: 11, end: 13, venue: "LR 10"),
      ]),
  Lecture(
      id: "SEN 305",
      department: "Software Engineering",
      code: "SEN 305",
      title: "Web Application Development",
      lecturer: "Dr Diekola A.",
      phoneNumber: "08098488156",
      occurrences: [
        LectureOccurrence(day: 4, start: 16, end: 18, venue: "ILAB"),
        LectureOccurrence(day: 5, start: 10, end: 11, venue: "LR 10"),
      ]),
  Lecture(
      id: "SEN 307",
      department: "Software Engineering",
      code: "SEN 307",
      title: "Database Systems",
      lecturer: "Mrs Tajudeen K.",
      phoneNumber: "07044873800",
      occurrences: [
        LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 12"),
        LectureOccurrence(day: 4, start: 10, end: 11, venue: "LR 11"),
      ]),
  Lecture(
      id: "CMP 317",
      department: "Computer Science",
      code: "CMP 317",
      title: "Research Methodology",
      lecturer: "Dr Abdulrauf Tosho",
      phoneNumber: "08060869024",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "ILAB"),
      ]),
  Lecture(
      id: "SEN 313",
      department: "Software Engineering",
      code: "SEN 313",
      title: "Engineering Mobile Applications",
      occurrences: []),
  Lecture(
      id: "SEN 388",
      department: "Software Engineering",
      code: "SEN 388",
      title: "Industrial Training",
      occurrences: []),
  Lecture(
      id: "GNS 301",
      department: "General Studies",
      code: "GNS 301",
      title: "Environment & Sustainable Development",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "AUD"),
      ]),
  Lecture(
      id: "GNS 302",
      department: "General Studies",
      code: "GNS 302",
      title: "Leadership Skills, Peace & Conflict Resolution",
      occurrences: [
        LectureOccurrence(day: 2, start: 09, end: 11, venue: "AUD"),

      ]),
  Lecture(
      id: "GNS 303",
      department: "General Studies",
      code: "GNS 303",
      title: "Entrepreneurship and Skills Development",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "AUD"),
      ]),
  Lecture(
      id: "CMP 401",
      department: "Computer Science",
      code: "CMP 401",
      title: "Organization of Programming Languages",
      lecturer: "Dr. Mustapha I.O",
      phoneNumber: "07032351010",
      occurrences: [
        LectureOccurrence(day: 1, start: 14, end: 16, venue: "ILAB"),
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
      id: "CMP 411",
      department: "Computer Science",
      code: "CMP 411",
      title: "Artificial Intelligence",
      lecturer: "Dr Abdulrauf Tosho",
      phoneNumber: "08060869024",
      occurrences: [
        LectureOccurrence(day: 1, start: 11, end: 12, venue: "LR 12"),
        LectureOccurrence(day: 4, start: 11, end: 13, venue: "LR 14"),
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
      id: "CMP 433",
      department: "Computer Science",
      code: "CMP 433",
      title: "Computer Graphics and Visualization",
      lecturer: "Dr. Mustapha I.O",
      phoneNumber: "07032351010",
      occurrences: [
        LectureOccurrence(day: 5, start: 15, end: 16, venue: "LR 11"),
        LectureOccurrence(day: 4, start: 16, end: 18, venue: "LR 13"),
      ]),
  Lecture(
      id: "SEN 401",
      department: "Software Engineering",
      code: "SEN 401",
      title: "Software Configuration Management and Maintenance",
      lecturer: "Dr. Mustapha I.O",
      phoneNumber: "07032351010",
      occurrences: [
        LectureOccurrence(day: 1, start: 08, end: 10, venue: "LR 11"),
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
      id: "SEN 403",
      department: "Software Engineering",
      code: "SEN 403",
      title: "Software Engineering Project Management",
      lecturer: "Dr. Aro T.O",
      phoneNumber: "0803617634",
      occurrences: [
        LectureOccurrence(day: 5, start: 16, end: 18, venue: "LR 10"),
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
      id: "SEN 407",
      department: "Software Engineering",
      code: "SEN 407",
      title: "Software Engineering Professional Practice",
      lecturer: "Dr. Aro T.O",
      phoneNumber: "0803617634",
      occurrences: [
        LectureOccurrence(day: 3, start: 11, end: 13, venue: "ILAB"),
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
      id: "SEN 409",
      department: "Software Engineering",
      code: "SEN 409",
      title: "Software Engineering Security",
      lecturer: "Dr. Alabi A.A",
      phoneNumber: "08036533262",
      occurrences: [
        LectureOccurrence(day: 1, start: 10, end: 12, venue: "LR 13"),
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
      id: "SEN 413",
      department: "Software Engineering",
      code: "SEN 413",
      title: "Parallel Algorithm and Programming",
      lecturer: "Dr. Alabi A.A",
      phoneNumber: "08036533262",
      occurrences: [
        LectureOccurrence(day: 3, start: 16, end: 18, venue: "LR 13"),

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
      id: "SEN 499",
      department: "Software Engineering",
      code: "SEN 499",
      title: "Project",
      occurrences: []),
];
List<Lecture> cyber = [
  Lecture(
    id: "BGY 101",
    department: "Biology",
    code: "BGY101",
    title: "General Introductory Biology",
    occurrences: [
      LectureOccurrence(day: 3, start: 14, end: 15, venue: "CBT"),
      LectureOccurrence(day: 4, start: 08, end: 10, venue: "CBT"),
    ],
  ),
  Lecture(
    id: "CHM 105",
    department: "Chemistry",
    code: "CHM105",
    title: "General Physical Chemistry",
    occurrences: [
      LectureOccurrence(day: 2, start: 14, end: 16, venue: "CBT"),
      LectureOccurrence(day: 4, start: 16, end: 17, venue: "LR 12"),
    ],
  ),
  Lecture(
    id: "CMP 101",
    department: "Computer Science",
    code: "CMP101",
    title: "Introduction to Computer Science",
    occurrences: [],
  ),
  Lecture(
    id: "CMP 102",
    department: "Computer Science",
    code: "CMP102",
    title: "Introduction to Problem Solving",
    occurrences: [],
  ),
  Lecture(
    id: "CMP 201",
    department: "Computer Science",
    code: "CMP201",
    title: "Computer Programming I",
    occurrences: [
      LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 11"),
    ],
  ),
  Lecture(
    id: "CMP 202",
    department: "Computer Science",
    code: "CMP202",
    title: "Computer Programming II",
    occurrences: [
      LectureOccurrence(day: 1, start: 10, end: 11, venue: "LR 13"),

    ],
  ),
  Lecture(
    id: "CMP 204",
    department: "Computer Science",
    code: "CMP204",
    title: "Fundamentals of Data Structures",
    occurrences: [
      LectureOccurrence(day: 4, start: 12, end: 13, venue: "LR 13"),

      LectureOccurrence(day: 1, start:11, end: 13, venue: "CBT"),

    ],
  ),
  Lecture(
    id: "CMP 205",
    department: "Computer Science",
    code: "CMP205",
    title: "Operating Systems I",
    lecturer: "Mr Akanni A.O",
    phoneNumber: "08167813328",
    occurrences: [
      LectureOccurrence(day: 2, start: 10, end: 12, venue: "LR 13"),
      LectureOccurrence(day: 4, start: 10, end: 11, venue: "LR 9"),
    ],
  ),
  Lecture(
    id: "CMP 208",
    department: "Computer Science",
    code: "CMP208",
    title: "Discrete Structure",
    occurrences: [
      LectureOccurrence(day: 5, start: 11, end: 12, venue: "LR 13"),

      LectureOccurrence(day: 2, start: 15, end: 16, venue: "LR9"),


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
    id: "CMP 315",
    department: "Computer Science",
    code: "CMP315",
    title: "Computer Architecture and Organization I",
    occurrences: [
      LectureOccurrence(day: 2, start: 14, end: 16, venue: "LR 11"),
      LectureOccurrence(day: 3, start: 15, end: 16, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "CMP 321",
    department: "Computer Science",
    code: "CMP321",
    title: "System Analysis and Design",
    lecturer: "Mr Ogidan B.S",
    phoneNumber: "08033844787",
    occurrences: [
      LectureOccurrence(day: 1, start: 11, end: 13, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "CMP 403",
    department: "Computer Science",
    code: "CMP403",
    title: "Software Engineering",
    lecturer: "Dr Diekola A.",
    phoneNumber: "08098488156",
    occurrences: [
      LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 10"),
      LectureOccurrence(day: 5, start: 09, end: 10, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "CMP 411",
    department: "Computer Science",
    code: "CMP411",
    title: "Artificial Intelligence",
    lecturer: "Dr Abdulrauf Tosho",
    phoneNumber: "08060869024",
    occurrences: [
      LectureOccurrence(day: 1, start: 11, end: 12, venue: "LR 12"),
      LectureOccurrence(day: 4, start: 11, end: 13, venue: "LR 14"),
    ],
  ),
  Lecture(
    id: "CMP 412",
    department: "Computer Science",
    code: "CMP412",
    title: "Special Topics on Information Security Modelling and Simulation",
    occurrences: [
      LectureOccurrence(day: 2, start: 12, end: 13, venue: "LR11"),

      LectureOccurrence(day: 1, start: 08, end: 10, venue: "ILAB"),

    ],
  ),
  Lecture(
    id: "CMP 420",
    department: "Computer Science",
    code: "CMP420",
    title: "Computer Networks and Communication",
    occurrences: [
      LectureOccurrence(day: 5, start: 10, end: 12, venue: "ILAB"),
      LectureOccurrence(day: 4, start: 14, end: 15, venue: "LR 12"),
    ],
  ),
  Lecture(
    id: "CYB 102",
    department: "Cyber Security",
    code: "CYB102",
    title: "Fundamentals of Cyber Security I",
    occurrences: [
      LectureOccurrence(day: 1, start:14, end: 14, venue: "CBT"),
      LectureOccurrence(day: 2, start: 17, end: 18, venue: "LR12"),


    ],
  ),
  Lecture(
    id: "CYB 201",
    department: "Cyber Security",
    code: "CYB201",
    title: "Fundamentals of Cyber Security I",
    lecturer: "Mr Saka Kamil",
    phoneNumber: "08165549631",
    occurrences: [
      LectureOccurrence(day: 5, start: 11, end: 13, venue: "LR 10"),
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
    id: "CYB 203",
    department: "Cyber Security",
    code: "CYB203",
    title: "Cyber security in Business and Industry",
    lecturer: "Mr Ajiboye I.K",
    occurrences: [
      LectureOccurrence(day: 3, start: 08, end: 10, venue: "ILAB"),
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
    id: "CYB 205",
    department: "Cyber Security",
    code: "CYB205",
    title: "Introduction to Digital Forensics",
    lecturer: "Mr Ajiboye I.K",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 10, venue: "LR 14"),
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
    id: "CYB 301",
    department: "Cyber Security",
    code: "CYB301",
    title: "Software Defined Networks",
    lecturer: "Dr. Aro T.O",
    phoneNumber: "0803617634",
    occurrences: [
      LectureOccurrence(day: 2, start: 11, end: 13, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "CYB 303",
    department: "Cyber Security",
    code: "CYB303",
    title: "Cryptographic Techniques",
    lecturer: "Mrs Tajudeen K.",
    phoneNumber: "07044873800",
    occurrences: [
      LectureOccurrence(day: 2, start: 16, end: 18, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "CYB 305",
    department: "Cyber Security",
    code: "CYB305",
    title: "Biometric Security",
    lecturer: "Mr Ajiboye I.K",
    occurrences: [
      LectureOccurrence(day: 4, start: 11, end: 13, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "CYB 307",
    department: "Cyber Security",
    code: "CYB307",
    title: "Information Security Engineering",
    lecturer: "Mr Owolewa R.O.",
    phoneNumber: "08142295525",
    occurrences: [
      LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 15"),
    ],
  ),
  Lecture(
    id: "CYB 309",
    department: "Cyber Security",
    code: "CYB309",
    title: "System Security",
    lecturer: "Dr Diekola A.",
    phoneNumber: "08098488156",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 10, venue: "CLAB"),
    ],
  ),
  Lecture(
    id: "CYB 388",
    department: "Cyber Security",
    code: "CYB388",
    title: "Industrial Training",
    occurrences: [],
  ),
  Lecture(
    id: "CYB 401",
    department: "Cyber Security",
    code: "CYB401",
    title: "Database Management and Control System",
    lecturer: "Dr. Asaju-Gbolagade Aishat",
    phoneNumber: "0706700961",
    occurrences: [
      LectureOccurrence(day: 5, start: 16, end: 18, venue: "GLAB"),
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
    id: "CYB 403",
    department: "Cyber Security",
    code: "CYB403",
    title: "System Vulnerability Assessment and Testing",
    lecturer: "Mr Saka Kamil",
    phoneNumber: "08165549631",
    occurrences: [
      LectureOccurrence(day: 1, start: 08, end: 10, venue: "LR 13"),
      LectureOccurrence(day: 2, start: 10, end: 11, venue: "LR 10"),
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
    id: "CYB 405",
    department: "Cyber Security",
    code: "CYB405",
    title: "Cloud Computing Security",
    lecturer: "Mr Owolewa R.O.",
    phoneNumber: "08142295525",
    occurrences: [
      LectureOccurrence(day: 1, start: 14, end: 16, venue: "CBT"),
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
    id: "CYB 407",
    department: "Cyber Security",
    code: "CYB407",
    title: "Information Disaster Recovery",
    lecturer: "Mr Owolewa R.O.",
    phoneNumber: "08142295525",
    occurrences: [
      LectureOccurrence(day: 1, start: 11, end: 13, venue: "LR 15"),
    ],
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
    id: "CYB 409",
    department: "Cyber Security",
    code: "CYB409",
    title: "VoIP and Multimedia Security",
    lecturer: "Dr. Asaju-Gbolagade Aishat",
    phoneNumber: "0706700961",
    occurrences: [
      LectureOccurrence(day: 4, start: 16, end: 18, venue: "LR 9"),
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
    id: "CYB 499",
    department: "Cyber Security",
    code: "CYB499",
    title: "Final Year Students Project",
    occurrences: [],
  ),
  Lecture(
    id: "GNS 101",
    department: "General Studies",
    code: "GNS101",
    title: "Use of English I",
    occurrences: [],
  ),
  Lecture(
    id: "GNS 102",
    department: "General Studies",
    code: "GNS102",
    title: "Use of English II",
    occurrences: [],
  ),
  Lecture(
    id: "GNS 103",
    department: "General Studies",
    code: "GNS103",
    title: "Beginners' Arabic Reading and Conversation I",
    occurrences: [LectureOccurrence(day: 2, start: 12, end: 13, venue: "AUD")],
  ),
  Lecture(
    id: "GNS 104",
    department: "General Studies",
    code: "GNS104",
    title: "Islamic Faith and Practices",
    occurrences: [
      LectureOccurrence(day: 2, start: 12, end: 13, venue: "AUD"),

    ],
  ),
  Lecture(
    id: "GNS 201",
    department: "General Studies",
    code: "GNS201",
    title: "Philosophy, Logic and Afro-Arab Culture I",
    occurrences: [LectureOccurrence(day: 3, start: 11, end: 13, venue: "AUD")],
  ),
  Lecture(
    id: "GNS 202",
    department: "General Studies",
    code: "GNS202",
    title: "Nigerian people, Culture & Economy",
    occurrences: [],
  ),
  Lecture(
    id: "GNS 203",
    department: "General Studies",
    code: "GNS203",
    title: "Beginners’ Arabic Reading and Conversation II",
    occurrences: [LectureOccurrence(day: 1, start: 12, end: 13, venue: "AUD")],
  ),
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
    id: "GNS 301",
    department: "General Studies",
    code: "GNS301",
    title: "Philosophy of Science and Computer Application",
    occurrences: [LectureOccurrence(day: 2, start: 10, end: 12, venue: "AUD")],
  ),
  Lecture(
    id: "GNS 303",
    department: "Graduate Studies",
    code: "GSE303",
    title: "Graduate Self Employment Scheme",
    occurrences: [LectureOccurrence(day: 5, start: 10, end: 12, venue: "AUD")],
  ),
  Lecture(
    id: "MAT 101",
    department: "Mathematics",
    code: "MAT101",
    title: "Algebra and Trigonometry",
    occurrences: [
      LectureOccurrence(day: 2, start: 10, end: 12, venue: "CBT"),
      LectureOccurrence(day: 4, start: 14, end: 15, venue: "CBT")
    ],
  ),
  Lecture(
    id: "MAT 102",
    department: "Mathematics",
    code: "MAT102",
    title: "Calculus",
    occurrences: [],
  ),
  Lecture(
    id: "MAT 103",
    department: "Mathematics",
    code: "MAT103",
    title: "Vector, Mechanics and Geometry",
    occurrences: [
      LectureOccurrence(day: 4, start: 08, end: 10, venue: "LR 13"),
      LectureOccurrence(day: 3, start: 10, end: 11, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "MAT 201",
    department: "Mathematics",
    code: "MAT201",
    title: "Mathematical Methods I",
    occurrences: [
      LectureOccurrence(day: 2, start: 08, end: 10, venue: "LR 13"),
      LectureOccurrence(day: 3, start: 14, end: 15, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "MAT 205",
    department: "Mathematics",
    code: "MAT205",
    title: "Linear Algebra 1",
    occurrences: [
      LectureOccurrence(day: 1, start: 14, end: 16, venue: "LR 12"),
    ],
  ),
  Lecture(
    id: "PHY 101",
    department: "Physics",
    code: "PHY101",
    title: "Mechanics, Thermal Physics & Waves",
    occurrences: [
      LectureOccurrence(day: 1, start: 08, end: 09, venue: "CBT"),
      LectureOccurrence(day: 5, start: 15, end: 16, venue: "CBT"),
    ],
  ),
  Lecture(
    id: "PHY 102",
    department: "Physics",
    code: "PHY102",
    title: "Electricity, Magnetism & Modern Physics",
    occurrences: [
      LectureOccurrence(day: 5, start: 16, end: 17, venue: "CBT"),

      LectureOccurrence(day: 2, start: 08, end: 10, venue: "CBT"),

    ],
  ),
  Lecture(
    id: "PHY 107",
    department: "Physics",
    code: "PHY107",
    title: "General Physics Laboratory I",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 13, venue: "PLAB"),
    ],
  ),
  Lecture(
    id: "PHY 108",
    department: "Physics",
    code: "PHY108",
    title: "General Physics Laboratory II",
    occurrences: [
      LectureOccurrence(day: 3, start: 08, end: 12, venue: "PLAB"),

    ],
  ),
  Lecture(
    id: "STA 102",
    department: "Statistics",
    code: "STA102",
    title: "Statistical",
    occurrences: [],
  ),
  Lecture(
    id: "STA 104",
    department: "Statistics",
    code: "STA104",
    title: "Introduction to Probability",
    occurrences: [
      LectureOccurrence(day: 3, start: 08, end: 10, venue: "LR10"),

    ],
  ),
];

List<Lecture> ins = [
  Lecture(
    id: "BGY 101",
    department: "Biology",
    code: "BGY101",
    title: "General Introductory Biology",
    occurrences: [
      LectureOccurrence(day: 3, start: 14, end: 15, venue: "CBT"),
      LectureOccurrence(day: 4, start: 08, end: 10, venue: "CBT"),
    ],
  ),
  Lecture(
    id: "CHM 105",
    department: "Chemistry",
    code: "CHM105",
    title: "General Physical Chemistry",
    occurrences: [
      LectureOccurrence(day: 2, start: 14, end: 16, venue: "CBT"),
      LectureOccurrence(day: 4, start: 16, end: 17, venue: "LR 12"),
    ],
  ),
  Lecture(
    id: "CMP 101",
    department: "Computer Science",
    code: "CMP 101",
    title: "Introduction to Computer Science",
    occurrences: [],
  ),
  Lecture(
    id: "MAT 101",
    department: "Mathematics",
    code: "MAT101",
    title: "Algebra and Trigonometry",
    occurrences: [
      LectureOccurrence(day: 2, start: 10, end: 12, venue: "CBT"),
      LectureOccurrence(day: 4, start: 14, end: 15, venue: "CBT")
    ],
  ),
  Lecture(
    id: "MAT 103",
    department: "Mathematics",
    code: "MAT103",
    title: "Vector, Mechanics and Geometry",
    occurrences: [
      LectureOccurrence(day: 4, start: 08, end: 10, venue: "LR 13"),
      LectureOccurrence(day: 3, start: 10, end: 11, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "PHY 101",
    department: "Physics",
    code: "PHY101",
    title: "Mechanics, Thermal Physics & Waves",
    occurrences: [
      LectureOccurrence(day: 1, start: 08, end: 09, venue: "CBT"),
      LectureOccurrence(day: 5, start: 15, end: 16, venue: "CBT"),
    ],
  ),
  Lecture(
    id: "PHY 107",
    department: "Physics",
    code: "PHY107",
    title: "General Physics Laboratory I",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 13, venue: "PLAB"),
    ],
  ),
  Lecture(
    id: "GNS 101",
    department: "General Studies",
    code: "GNS 101",
    title: "Communication in English I",
    occurrences: [],
  ),
  Lecture(
    id: "GNS 103",
    department: "General Studies",
    code: "GNS103",
    title: "Beginners' Arabic Reading and Conversation I",
    occurrences: [LectureOccurrence(day: 2, start: 12, end: 13, venue: "AUD")],
  ),
  Lecture(
    id: "GNS 105",
    department: "General Studies",
    code: "GNS 105",
    title: "Use of Library, Study Skills and ICT",
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
    id: "CMP 102",
    department: "Computer Science",
    code: "CMP 102",
    title: "Introduction to Problem Solving",
    occurrences: [],
  ),
  Lecture(
    id: "MAT 102",
    department: "Mathematics",
    code: "MAT 102",
    title: "Elementary Mathematics II (Calculus,occurrences:[],),",
    occurrences: [],
  ),
  Lecture(
    id: "PHY 102",
    department: "Physics",
    code: "PHY 102",
    title: "Electricity, Magnetism and Modern Physics",
    occurrences: [
      LectureOccurrence(day: 5, start: 16, end: 17, venue: "CBT"),

      LectureOccurrence(day: 2, start: 08, end: 10, venue: "CBT"),

    ],
  ),
  Lecture(
    id: "PHY 108",
    department: "Physics",
    code: "PHY 108",
    title: "General Physics Laboratory II",
    occurrences: [
      LectureOccurrence(day: 3, start: 08, end: 12, venue: "PLAB"),

    ],
  ),
  Lecture(
    id: "GNS 102",
    department: "General Studies",
    code: "GNS 102",
    title: "Communication in English II",
    occurrences: [],
  ),
  Lecture(
    id: "GNS 104",
    department: "General Studies",
    code: "GNS 104",
    title: "Islamic Faith and Practices",
    occurrences: [
      LectureOccurrence(day: 2, start: 12, end: 13, venue: "AUD"),

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
    id: "STA 104",
    department: "Statistics",
    code: "STA 104",
    title: "Introduction to Probability Distribution",
    occurrences: [
      LectureOccurrence(day: 3, start: 08, end: 10, venue: "LR10"),

    ],
  ),
  Lecture(
    id: "CMP 201",
    department: "Computer Science",
    code: "CMP201",
    title: "Computer Programming I",
    occurrences: [
      LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 11"),
    ],
  ),
  Lecture(
    id: "CMP 205",
    department: "Computer Science",
    code: "CMP205",
    title: "Operating Systems I",
    lecturer: "Mr Akanni A.O",
    phoneNumber: "08167813328",
    occurrences: [
      LectureOccurrence(day: 2, start: 10, end: 12, venue: "LR 13"),
      LectureOccurrence(day: 4, start: 10, end: 11, venue: "LR 9"),
    ],
  ),
  Lecture(
    id: "MAT 201",
    department: "Mathematics",
    code: "MAT201",
    title: "Mathematical Methods I",
    occurrences: [
      LectureOccurrence(day: 2, start: 08, end: 10, venue: "LR 13"),
      LectureOccurrence(day: 3, start: 14, end: 15, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "MAT 205",
    department: "Mathematics",
    code: "MAT205",
    title: "Linear Algebra 1",
    occurrences: [
      LectureOccurrence(day: 1, start: 14, end: 16, venue: "LR 12"),
    ],
  ),
  Lecture(
    id: "GNS 201",
    department: "General Studies",
    code: "GNS201",
    title: "Philosophy, Logic and Afro-Arab Culture I",
    occurrences: [LectureOccurrence(day: 3, start: 11, end: 13, venue: "AUD")],
  ),
  Lecture(
    id: "GNS 203",
    department: "General Studies",
    code: "GNS203",
    title: "Beginners’ Arabic Reading and Conversation II",
    occurrences: [LectureOccurrence(day: 1, start: 12, end: 13, venue: "AUD")],
  ),
  Lecture(
      id: "GNS 205",
      department: "General Studies",
      code: "GNS 205",
      title: "Introduction to Entrepreneurship",
      occurrences: [
        LectureOccurrence(day: 4, start: 08, end: 10, venue: "AUD"),
      ]),
  Lecture(
    id: "BUS 211",
    department: "Business",
    code: "BU211",
    title: "Introduction to Business I",
    lecturer: "Mr Serki S.",
    phoneNumber: "08061363256",
    occurrences: [
      LectureOccurrence(day: 3, start: 08, end: 10, venue: "LR 14"),
      LectureOccurrence(day: 1, start: 08, end: 09, venue: "AUD"),
    ],
  ),
  Lecture(
    id: "INS 201",
    department: "Information Systems",
    code: "INS 201",
    title: "Principles of Information Systems",
    lecturer: "Mr Ogidan B.S",
    phoneNumber: "08033844787",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 10, venue: "LR 11"),
    ],
  ),
  Lecture(
    id: "INS 203",
    department: "Information Systems",
    code: "INS 203",
    title: "Analysis of Business Requirements",
      lecturer: "Mr Aliyu N.",
      phoneNumber: "08026154417",
    occurrences: [
      LectureOccurrence(day: 1, start: 16, end: 18, venue: "CBT"),
    ],
  ),
  Lecture(
    id: "INS 205",
    department: "Information Systems",
    code: "INS 205",
    lecturer: "Mr Akanni A.O",
    phoneNumber: "08167813328",
    title: "Application Design and Development",
    occurrences: [
      LectureOccurrence(day: 1, start: 09, end: 11, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "CMP 202",
    department: "Computer Science",
    code: "CMP 202",
    title: "Computer Programming II",
    occurrences: [
      LectureOccurrence(day: 1, start: 10, end: 11, venue: "LR 13"),

    ],
  ),
  Lecture(
    id: "CMP 204",
    department: "Computer Science",
    code: "CMP 204",
    title: "Fundamentals of Data Structures",
    occurrences: [
      LectureOccurrence(day: 1, start:11, end: 13, venue: "CBT"),

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


    ],
  ),
  Lecture(
    id: "GNS 202",
    department: "General Studies",
    code: "GNS 202",
    title: "Nigerian People, Culture and the Economy",
    occurrences: [],
  ),
  Lecture(
    id: "GNS 204",
    department: "General Studies",
    code: "GNS 204",
    title: "Basic Islamic Concepts",
    occurrences: [],
  ),
  Lecture(
    id: "GNS 206",
    department: "General Studies",
    code: "GNS 206",
    title: "Contemporary Health Issues",
    occurrences: [
      LectureOccurrence(day: 5, start: 10, end: 12, venue: "AUD"),

    ],
  ),
  Lecture(
    id: "BUS212",
    department: "Business",
    code: "BUS212",
    title: "Introduction to Business II",
    occurrences: [],
  ),
  Lecture(
    id: "BUS214",
    department: "Business",
    code: "BUS214",
    title: "Interpersonal Communication",
    occurrences: [],
  ),
  Lecture(
    id: "BUS216",
    department: "Business",
    code: "BUS216",
    title: "Human Behaviour in Organisation",
    occurrences: [],
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
    id: "INS 301",
    department: "Information Systems",
    code: "NIS 301",
    title: "Systems Thinking, Modeling and Computer Simulation",
    lecturer: "Dr. Adeleke A.O",
    phoneNumber: "08061772051",
    occurrences: [
      LectureOccurrence(day: 5, start: 10, end: 12, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "INS 303",
    department: "Information Systems",
    code: "INS 303",
    title: "E-Business Systems Development",
    lecturer: "Dr. Adeleke A.O",
    phoneNumber: "08061772051",
    occurrences: [
      LectureOccurrence(day: 4, start: 14, end: 16, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "INS 305",
    department: "Information Systems",
    code: "INS 305",
    title: "Enterprise Architecture",
    lecturer: "Dr. Adeleke A.O",
    phoneNumber: "08061772051",
    occurrences: [
      LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 15"),
    ],
  ),
  Lecture(
    id: "INS 307",
    department: "Information Systems",
    code: "INS 307",
    title: "Business Process Management",
    lecturer: "Dr. Gbolagade M.D",
    phoneNumber: "07030848418",
    occurrences: [
      LectureOccurrence(day: 3, start: 10, end: 12, venue: "LR 9"),
    ],
  ),
  Lecture(
    id: "INS 321",
    department: "Information Systems",
    code: "INS 321",
    title: "Agile Web Development with Open Source Framework",
    occurrences: [],
  ),
  Lecture(
    id: "INS 323",
    department: "Information Systems",
    code: "INS 323",
    title: "IS Innovation and New Technologies",
    occurrences: [],
  ),
  Lecture(
    id: "INS 351",
    department: "Information Systems",
    code: "INS 351",
    title: "Computer Crimes, Forensics and Auditing",
    occurrences: [],
  ),
  Lecture(
    id: "CMP 321",
    department: "Computer Science",
    code: "CMP321",
    title: "System Analysis and Design",
    lecturer: "Mr Ogidan B.S",
    phoneNumber: "08033844787",
    occurrences: [
      LectureOccurrence(day: 1, start: 11, end: 13, venue: "ILAB"),
    ],
  ),
  Lecture(
      id: "CMP 317",
      department: "Computer Science",
      code: "CMP 317",
      title: "Research Methodology",
      lecturer: "Dr Abdulrauf Tosho",
      phoneNumber: "08060869024",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "ILAB"),
      ]),
  Lecture(
      id: "GNS 301",
      department: "General Studies",
      code: "GNS 301",
      title: "Environment & Sustainable Development",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "AUD"),
      ]),
  Lecture(
      id: "GNS 303",
      department: "General Studies",
      code: "GNS 303",
      title: "Entrepreneurship and Skills Development",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "AUD"),
      ]),
  Lecture(
    id: "GNS 302",
    department: "General Studies",
    code: "GNS 302",
    title: "Leadership Skills, Peace & Conflict Resolution",
    occurrences: [
      LectureOccurrence(day: 2, start: 09, end: 11, venue: "AUD"),

    ],
  ),
  Lecture(
    id: "INS 388",
    department: "Information Systems",
    code: "INS 388",
    title: "Industrial Training",
    occurrences: [],
  ),
  Lecture(
    id: "INS 403",
    department: "Information Systems",
    code: "INS 403",
    title: "Systems Integration and Architecture",
    lecturer: "Dr. Adeleke A.O",
    phoneNumber: "08061772051",
    occurrences: [
      LectureOccurrence(day: 3, start: 08, end: 10, venue: "LR 15"),
      LectureOccurrence(day: 5, start: 15, end: 16, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "INS 405",
    department: "Information Systems",
    code: "INS 405",
    title: "Business Process Reengineering",
    lecturer: "Mr Ogidan B.S",
    phoneNumber: "08033844787",
    occurrences: [
      LectureOccurrence(day: 3, start: 10, end: 12, venue: "LR 15"),
    ],
  ),
  Lecture(
    id: "INS 407",
    department: "Information Systems",
    code: "INS 407",
    title: "Information Systems Project Management",
    lecturer: "Dr. Gbolagade M.D",
    phoneNumber: "07030848418",
    occurrences: [
      LectureOccurrence(day: 3, start: 15, end: 16, venue: "LR 11"),
      LectureOccurrence(day: 5, start: 08, end: 10, venue: "ILAB"),
    ],
  ),
  Lecture(
    id: "INS 409",
    department: "Information Systems",
    code: "INS 409",
    title: "Database Analysis and Design",
    occurrences: [
      LectureOccurrence(day: 2, start: 11, end: 13, venue: "LR 14"),
    ],
  ),
  Lecture(
    id: "INS 405",
    department: "Information Systems",
    code: "INS 405",
    title: "Mobile Application Development",
    lecturer: "Mr Ogidan B.S",
    phoneNumber: "08033844787",
    occurrences: [
      LectureOccurrence(day: 3, start: 10, end: 12, venue: "LR 15"),
    ],
  ),
  Lecture(
    id: "INS 437",
    department: "Information Systems",
    code: "INS 437",
    title: "Network Servers and Infrastructures",
    lecturer: "Mr Aliyu N.",
    phoneNumber: "08026154417",
    occurrences: [
      LectureOccurrence(day: 1, start: 14, end: 16, venue: "LR 14"),
    ],
  ),
  Lecture(
    id: "INS 499",
    department: "Information Systems",
    code: "INS 499",
    title: "Project",
    occurrences: [],
  ),
  Lecture(
    id: "CMP 408",
    department: "Computer Science",
    code: "CMP 408",
    title: "Human Computer Interface",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 10, venue: "LR 9"),
      LectureOccurrence(day: 4, start: 15, end: 16, venue: "LR 10"),

    ],
  ),
  Lecture(
    id: "CMP 420",
    department: "Computer Science",
    code: "CMP 420",
    title: "Computer Networks and Communications",
    occurrences: [
      LectureOccurrence(day: 5, start: 10, end: 12, venue: "ILAB"),
      LectureOccurrence(day: 4, start: 14, end: 15, venue: "LR 12"),

    ],
  ),
  Lecture(
    id: "INS 402",
    department: "Information Systems",
    code: "INS 402",
    title: "IT Governance",
    occurrences: [
      LectureOccurrence(day: 3, start: 08, end: 10, venue: "ILAB"),

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
];

List<Lecture> comp = [
  Lecture(
    id: "BGY 101",
    department: "Biology",
    code: "BGY101",
    title: "General Introductory Biology",
    occurrences: [
      LectureOccurrence(day: 3, start: 14, end: 15, venue: "CBT"),
      LectureOccurrence(day: 4, start: 08, end: 10, venue: "CBT"),
    ],
  ),
  Lecture(
    id: "CHM 105",
    department: "Chemistry",
    code: "CHM105",
    title: "General Physical Chemistry",
    occurrences: [
      LectureOccurrence(day: 2, start: 14, end: 16, venue: "CBT"),
      LectureOccurrence(day: 4, start: 16, end: 17, venue: "LR 12"),
    ],
  ),
  Lecture(
      id: "CMP 101",
      department: "Computer Science",
      code: "CMP 101",
      title: "Introduction to Computer Science",
      lecturer: "Mr Aliyu N.",
      phoneNumber: "08026154417",
      occurrences: []),
  Lecture(
      id: "GNS 101",
      department: "General Studies",
      code: "GNS 101",
      title: "Communication in English I",
      occurrences: []),
  Lecture(
    id: "GNS 103",
    department: "General Studies",
    code: "GNS103",
    title: "Beginners' Arabic Reading and Conversation I",
    occurrences: [LectureOccurrence(day: 2, start: 12, end: 13, venue: "AUD")],
  ),
  Lecture(
      id: "GNS 105",
      department: "General Studies",
      code: "GNS 105",
      title: "Use of Library, Study Skills and ICT",
      occurrences: []),
  Lecture(
    id: "MAT 101",
    department: "Mathematics",
    code: "MAT101",
    title: "Algebra and Trigonometry",
    occurrences: [
      LectureOccurrence(day: 2, start: 10, end: 12, venue: "CBT"),
      LectureOccurrence(day: 4, start: 14, end: 15, venue: "CBT")
    ],
  ),
  Lecture(
    id: "MAT 103",
    department: "Mathematics",
    code: "MAT103",
    title: "Vector, Mechanics and Geometry",
    occurrences: [
      LectureOccurrence(day: 4, start: 08, end: 10, venue: "LR 13"),
      LectureOccurrence(day: 3, start: 10, end: 11, venue: "LR 13"),
    ],
  ),
  Lecture(
    id: "PHY 101",
    department: "Physics",
    code: "PHY101",
    title: "Mechanics, Thermal Physics & Waves",
    occurrences: [
      LectureOccurrence(day: 1, start: 08, end: 09, venue: "CBT"),
      LectureOccurrence(day: 5, start: 15, end: 16, venue: "CBT"),
    ],
  ),
  Lecture(
    id: "PHY 107",
    department: "Physics",
    code: "PHY107",
    title: "General Physics Laboratory I",
    occurrences: [
      LectureOccurrence(day: 5, start: 08, end: 13, venue: "PLAB"),
    ],
  ),
  Lecture(
      id: "CMP 102",
      department: "Computer Science",
      code: "CMP 102",
      title: "Introduction to Problem Solving",
      occurrences: []),
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
      id: "MAT 102",
      department: "Mathematics",
      code: "MAT 102",
      title: "Elementary Mathematics II (Calculus)",
      occurrences: []),
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
      id: "STA 104",
      department: "Statistics",
      code: "STA 104",
      title: "Introduction to Probability Distribution",
      occurrences: [
        LectureOccurrence(day: 3, start: 08, end: 10, venue: "LR10"),

      ]),
  Lecture(
    id: "CMP 201",
    department: "Computer Science",
    code: "CMP201",
    title: "Computer Programming I",
    lecturer: "Mr Aliyu N.",
    phoneNumber: "08026154417",
    occurrences: [
      LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 11"),
    ],
  ),
  Lecture(
    id: "CMP 205",
    department: "Computer Science",
    code: "CMP205",
    title: "Operating Systems I",
    lecturer: "Mr Akanni A.O",
    phoneNumber: "08167813328",
    occurrences: [
      LectureOccurrence(day: 2, start: 10, end: 12, venue: "LR 13"),
      LectureOccurrence(day: 4, start: 10, end: 11, venue: "LR 9"),
    ],
  ),
  Lecture(
      id: "CMP 207",
      department: "Computer Science",
      code: "CMP 207",
      title: "Foundations of Sequential Program",
      lecturer: "Dr. Gbolagade M.D",
      phoneNumber: "07030848418",
      occurrences: []),
  Lecture(
      id: "CMP 299",
      department: "Computer Science",
      code: "CMP 299",
      title: "Industrial Training I",
      occurrences: []),
  Lecture(
    id: "GNS 201",
    department: "General Studies",
    code: "GNS201",
    title: "Philosophy, Logic and Afro-Arab Culture I",
    occurrences: [LectureOccurrence(day: 3, start: 11, end: 13, venue: "AUD")],
  ),
  Lecture(
    id: "GNS 203",
    department: "General Studies",
    code: "GNS203",
    title: "Beginners’ Arabic Reading and Conversation II",
    occurrences: [LectureOccurrence(day: 1, start: 12, end: 13, venue: "AUD")],
  ),
  Lecture(
      id: "GNS 205",
      department: "General Studies",
      code: "GNS 205",
      title: "Introduction to Entrepreneurship",
      occurrences: []),  Lecture(
    id: "MAT 201",
    department: "Mathematics",
    code: "MAT201",
    title: "Mathematical Methods I",
    occurrences: [
      LectureOccurrence(day: 2, start: 08, end: 10, venue: "LR 13"),
      LectureOccurrence(day: 3, start: 14, end: 15, venue: "LR 13"),
    ],
  ),
  Lecture(
      id: "MAT 203",
      department: "Mathematics",
      code: "MAT 203",
      title: "Sets, Logic and Algebra",
      occurrences: [
        LectureOccurrence(day: 2, start: 16, end: 18, venue: "LR 11"),
        LectureOccurrence(day: 5, start: 15, end: 16, venue: "PLAB"),
      ]),
  Lecture(
    id: "MAT 205",
    department: "Mathematics",
    code: "MAT205",
    title: "Linear Algebra 1",
    occurrences: [
      LectureOccurrence(day: 1, start: 14, end: 16, venue: "LR 12"),
    ],
  ),
  Lecture(
      id: "MAT 207",
      department: "Mathematics",
      code: "MAT 207",
      title: "Real Analysis I",
      occurrences: [
        LectureOccurrence(day: 3, start: 10, end: 11, venue: "LR 10"),
        LectureOccurrence(day: 2, start: 14, end: 16, venue: "LR 15"),
      ]),
  Lecture(
      id: "STA 203",
      department: "Statistics",
      code: "STA 203",
      title: "Statistical Inference II",
      occurrences: [
        LectureOccurrence(day: 5, start: 08, end: 10, venue: "LR 12"),

      ]),
  Lecture(
      id: "STA 209",
      department: "Statistics",
      code: "STA 209",
      title: "Statistics for Physical Sciences and Engineering I",
      occurrences: [
        LectureOccurrence(day: 1, start: 16, end: 18, venue: "LR 13"),

      ]),
  Lecture(
      id: "CMP 202",
      department: "Computer Science",
      code: "CMP 202",
      title: "Computer Programming II",
      occurrences: [
        LectureOccurrence(day: 1, start: 10, end: 11, venue: "LR 13"),

      ]),
  Lecture(
      id: "CMP 204",
      department: "Computer Science",
      code: "CMP 204",
      title: "Fundamentals of Data Structures",
      occurrences: [
        LectureOccurrence(day: 1, start:11, end: 13, venue: "CBT"),

      ]),
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
      id: "CMP 212",
      department: "Computer Science",
      code: "CMP 212",
      title: "Computer Hardware",
      occurrences: [
        LectureOccurrence(day: 1, start: 08, end: 10, venue: "AUD"),
        LectureOccurrence(day: 2, start: 14, end: 15, venue: "ILAB"),

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
      code: "GNS 204",
      title: "Basic Islamic Concepts",
      occurrences: []),
  Lecture(
      id: "GNS 206",
      department: "General Studies",
      code: "GNS 206",
      title: "Contemporary Health Issues",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "AUD"),

      ]),
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
      occurrences: []),
  Lecture(
      id: "STA 210",
      department: "Statistics",
      code: "STA 210",
      title: "Statistics for Physical Sciences and Engineering II",
      occurrences: []),
  Lecture(
      id: "CMP 301",
      department: "Computer Science",
      code: "CMP 301",
      title: "Structured Programming",
      lecturer: "Mr Akanni A.O",
      phoneNumber: "08167813328",
      occurrences: [
        LectureOccurrence(day: 1, start: 14, end: 16, venue: "LR 13"),
        LectureOccurrence(day: 3, start: 12, end: 13, venue: "LR 14"),

      ]),
  Lecture(
      id: "CMP 305",
      department: "Computer Science",
      code: "CMP 305",
      title: "Operating Systems II",
      lecturer: "Mr Akanni A.O",
      phoneNumber: "08167813328",
      occurrences: [
        LectureOccurrence(day: 4, start: 17, end: 18, venue: "LR 12"),
        LectureOccurrence(day: 2, start: 11, end: 13, venue: "LR 9"),

      ]),
  Lecture(
      id: "CMP 315",
      department: "Computer Science",
      code: "CMP 315",
      title: "Computer Architecture and Organization I",
      lecturer: "Dr. Akeem F.",
      phoneNumber: "08032065824",
      occurrences: [
        LectureOccurrence(day: 2, start: 14, end: 16, venue: "LR 11"),
        LectureOccurrence(day: 3, start: 15, end: 16, venue: "ILAB"),

      ]),
  Lecture(
      id: "CMP 317",
      department: "Computer Science",
      code: "CMP 317",
      title: "Research Methodology",
      lecturer: "Dr Abdulrauf Tosho",
      phoneNumber: "08060869024",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "ILAB"),
      ]),
  Lecture(
    id: "CMP 321",
    department: "Computer Science",
    code: "CMP321",
    title: "System Analysis and Design",
    lecturer: "Mr Ogidan B.S",
    phoneNumber: "08033844787",
    occurrences: [
      LectureOccurrence(day: 1, start: 11, end: 13, venue: "ILAB"),
    ],
  ),
  Lecture(
      id: "CMP 331",
      department: "Computer Science",
      code: "CMP 331",
      title: "Operations Research",
      lecturer: "Prof Olayibi S.O",
      phoneNumber: "08036669863",
      occurrences: [
        LectureOccurrence(day: 5, start: 16, end: 18, venue: "LR 13"),

      ]),
  Lecture(
      id: "CMP 333",
      department: "Computer Science",
      code: "CMP 333",
      title: "Computational Science and Numerical Methods",
      lecturer: "Prof Olayibi S.O",
      phoneNumber: "08036669863",
      occurrences: [
        LectureOccurrence(day: 4, start: 10, end: 11, venue: "CBT"),
        LectureOccurrence(day: 1, start: 08, end: 10, venue: "LR 10"),

      ]),
  Lecture(
      id: "CMP 335",
      department: "Computer Science",
      code: "CMP 335",
      title: "Statistical Computing",
      occurrences: []),
  Lecture(
      id: "CMP 399",
      department: "Computer Science",
      code: "CMP 399",
      title: "Industrial Training II",
      occurrences: []),
  Lecture(
      id: "GNS 301",
      department: "General Studies",
      code: "GNS 301",
      title: "Environment & Sustainable Development",
      occurrences: [
        LectureOccurrence(day: 2, start: 10, end: 12, venue: "AUD"),
      ]),
  Lecture(
      id: "GNS 303",
      department: "General Studies",
      code: "GNS 303",
      title: "Entrepreneurship and Skills Development",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "AUD"),
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
      id: "CMP 310",
      department: "Computer Science",
      code: "CMP 310",
      title: "Algorithms and Complexity Analysis",
      occurrences: []),
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
      id: "GNS 302",
      department: "General Studies",
      code: "GNS 302",
      title: "Leadership Skills, Peace & Conflict Resolution",
      occurrences: [
        LectureOccurrence(day: 2, start: 09, end: 11, venue: "AUD"),

      ]),
  Lecture(
      id: "CMP 401",
      department: "Computer Science",
      code: "CMP 401",
      title: "Organization of Programming Languages",
      lecturer: "Dr. Mustapha I.O",
      phoneNumber: "07032351010",
      occurrences: [
        LectureOccurrence(day: 1, start: 08, end: 09, venue: "LR 14"),
        LectureOccurrence(day: 1, start: 14, end: 16, venue: "ILAB"),

      ]),
  Lecture(
      id: "CMP 403",
      department: "Computer Science",
      code: "CMP 403",
      title: "Software Engineering",
      lecturer: "Dr Diekola A.",
      phoneNumber: "08098488156",
      occurrences: [
        LectureOccurrence(day: 4, start: 14, end: 16, venue: "LR 10"),
        LectureOccurrence(day: 5, start: 09, end: 10, venue: "LR 13"),

      ]),
  Lecture(
      id: "CMP 411",
      department: "Computer Science",
      code: "CMP 411",
      title: "Artificial Intelligence",
      lecturer: "Dr Abdulrauf Tosho",
      phoneNumber: "08060869024",
      occurrences: [
        LectureOccurrence(day: 1, start: 11, end: 12, venue: "LR 12"),
        LectureOccurrence(day: 4, start: 11, end: 13, venue: "LR 14"),
      ]),
  Lecture(
      id: "CMP 415",
      department: "Computer Science",
      code: "CMP 415",
      title: "Computer System Performance Evaluation",
      lecturer: "Dr. Alabi A.A",
      phoneNumber: "08036533262",
      occurrences: [
        LectureOccurrence(day: 3, start: 15, end: 16, venue: "LR 9"),
        LectureOccurrence(day: 2, start: 08, end: 10, venue: "LR 12"),

      ]),
  Lecture(
      id: "CMP 433",
      department: "Computer Science",
      code: "CMP 433",
      title: "Computer Graphics and Visualization",
      lecturer: "Dr. Mustapha I.O",
      phoneNumber: "07032351010",
      occurrences: [
        LectureOccurrence(day: 4, start: 16, end: 18, venue: "LR 13"),
        LectureOccurrence(day: 5, start: 15, end: 16, venue: "LR 11"),
      ]),
  Lecture(
      id: "CMP 499",
      department: "Computer Science",
      code: "CMP 499",
      title: "Project",
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
      id: "CMP 408",
      department: "Computer Science",
      code: "CMP 408",
      title: "Human Computer Interface",
      occurrences: [
        LectureOccurrence(day: 5, start: 08, end: 10, venue: "LR 9"),
        LectureOccurrence(day: 4, start: 15, end: 16, venue: "LR 10"),
      ]),
  Lecture(
      id: "CMP 410",
      department: "Computer Science",
      code: "CMP 410",
      title: "Compiler Construction II",
      occurrences: [
        LectureOccurrence(day: 4, start:11, end: 13, venue: "ILAB"),

        LectureOccurrence(day: 2, start: 16, end: 17, venue: "LR9"),

      ]),
  Lecture(
      id: "CMP 412",
      department: "Computer Science",
      code: "CMP 412",
      title: "Modeling and Simulation",
      occurrences: [
        LectureOccurrence(day: 1, start: 08, end: 10, venue: "ILAB"),
        LectureOccurrence(day: 2, start: 12, end: 13, venue: "LR11"),


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
      id: "CMP 420",
      department: "Computer Science",
      code: "CMP 420",
      title: "Computer Networks and Communications",
      occurrences: [
        LectureOccurrence(day: 5, start: 10, end: 12, venue: "ILAB"),
        LectureOccurrence(day: 4, start: 14, end: 15, venue: "LR 12"),

      ]),
  Lecture(
      id: "CMP 422",
      department: "Computer Science",
      code: "CMP 422",
      title: "Special Topics in Computer Science",
      occurrences: []),
];
