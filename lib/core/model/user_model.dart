class UserModel {
  String name;
  String email;
  String role;
  String id;

  UserModel({
    required this.name,
    required this.email,
    required this.role,
    required this.id,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      role: json['role'],
      id: json['id'],
    );
  }
}
