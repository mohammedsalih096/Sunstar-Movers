class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String email;
  final String userName;
  String phoneNumber;
  String password;

  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.phoneNumber,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
    };
  }
}
