class UserLists {
  int id;
  String name;
  String email;
  String gender;

  UserLists(
      {required this.id,
      required this.name,
      required this.email,
      required this.gender});

  factory UserLists.fromJson(Map<String, dynamic> json) {
    return UserLists(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        gender: json['gender']);
  }
}
