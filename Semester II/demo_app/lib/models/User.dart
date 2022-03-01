class User {
  final String firstName;
  final String lastName;
  final String email;

  const User({
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> jsonData) {
    return User(
      firstName: jsonData['name']['first'],
      lastName: jsonData['name']['last'],
      email: jsonData['email'],
    );
  }
}