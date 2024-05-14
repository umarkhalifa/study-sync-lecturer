class UserProfile{
  final String? programme;
  final String? staffId;
  final List<String>? courses;

  UserProfile({this.programme, this.staffId, this.courses});

  Map<String, dynamic> toMap() {
    return {
      'programme': programme,
      'matricNo': staffId,
      'courses': courses,
    };
  }

  factory UserProfile.fromMap(Map<String, dynamic> map) {
    return UserProfile(
      programme: map['Programme'] as String,
      staffId: map['StaffId'] as String,
      courses: (map['Courses'] as List).map((e) => e.toString()).toList(),
    );
  }
}