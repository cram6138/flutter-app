class User {
  String? firstName;
  String? lastName;
  String? mobile;
  String? email;
  String? password;

  // User(
  //     {required this.firstName,
  //     required this.lastName,
  //     required this.email,
  //     required this.mobile,
  //     required this.password});

  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     firstName: json['firstName'],
  //     lastName: json['LastName'],
  //     mobile: json['mobile'],
  //     email: json['email'],
  //     password: json['password'],
  //   );
  // }

  @override
  String toString() {
    return "(FirstName : $firstName , LastName : $lastName, Mobile : $mobile, Email : $email)";
  }
}
