class UserProfile{
  final String? programme;
  final String? matricNo;
  final List<String>? courses;

  UserProfile({this.programme, this.matricNo, this.courses});

  Map<String, dynamic> toMap() {
    return {
      'programme': programme,
      'matricNo': matricNo,
      'courses': courses,
    };
  }

  factory UserProfile.fromMap(Map<String, dynamic> map) {
    return UserProfile(
      programme: map['Programme'] as String,
      matricNo: map['StaffId'] as String,
      courses: (map['Courses'] as List).map((e) => e.toString()).toList(),
    );
  }
}