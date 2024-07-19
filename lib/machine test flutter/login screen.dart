import 'dart:convert';

LoginScreen loginScreenFromJson(String str) =>
    LoginScreen.fromJson(json.decode(str));

String loginScreenToJson(LoginScreen data) => json.encode(data.toJson());

class LoginScreen {
  String? mobileNumber;
  String? deviceId;

  LoginScreen({
    this.mobileNumber,
    this.deviceId,
  });

  factory LoginScreen.fromJson(Map<String, dynamic> json) => LoginScreen(
        mobileNumber: json["mobileNumber"],
        deviceId: json["deviceId"],
      );

  Map<String, dynamic> toJson() => {
        "mobileNumber": mobileNumber,
        "deviceId": deviceId,
      };
}
