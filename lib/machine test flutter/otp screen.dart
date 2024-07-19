import 'dart:convert';

Otpscreen otpscreenFromJson(String str) => Otpscreen.fromJson(json.decode(str));

String otpscreenToJson(Otpscreen data) => json.encode(data.toJson());

class Otpscreen {
  String? otp;
  String? deviceId;
  String? userId;

  Otpscreen({
    this.otp,
    this.deviceId,
    this.userId,
  });

  factory Otpscreen.fromJson(Map<String, dynamic> json) => Otpscreen(
        otp: json["otp"],
        deviceId: json["deviceId"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "otp": otp,
        "deviceId": deviceId,
        "userId": userId,
      };
}
