import 'dart:convert';

RegistrationScreen registrationScreenFromJson(String str) =>
    RegistrationScreen.fromJson(json.decode(str));

String registrationScreenToJson(RegistrationScreen data) =>
    json.encode(data.toJson());

class RegistrationScreen {
  String? email;
  String? password;
  int? referralCode;
  String? userId;

  RegistrationScreen({
    this.email,
    this.password,
    this.referralCode,
    this.userId,
  });

  factory RegistrationScreen.fromJson(Map<String, dynamic> json) =>
      RegistrationScreen(
        email: json["email"],
        password: json["password"],
        referralCode: json["referralCode"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "referralCode": referralCode,
        "userId": userId,
      };
}
