class User {
  final String username;
  final String phone;

  User({
    required this.username,
    required this.phone,
  });

  factory User.fromJson(json) => User(
        username: json['username'],
        phone: json['phone'],
      );
}
