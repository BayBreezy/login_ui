class User {
  final String email;
  final String firstName;
  final String lastName;

  User({required this.email, required this.firstName, required this.lastName});

  factory User.fromJson(Map<String, dynamic> json) => User(
      firstName: json['firstName'],
      email: json['email'],
      lastName: json['lastName']);
}
