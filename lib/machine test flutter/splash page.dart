import 'dart:convert';

SplashPage splashPageFromJson(String str) =>
    SplashPage.fromJson(json.decode(str));

String splashPageToJson(SplashPage data) => json.encode(data.toJson());

class SplashPage {
  String? deviceType;
  String? deviceId;
  String? deviceName;
  String? deviceOsVersion;
  String? deviceIpAddress;
  double? lat;
  double? long;
  String? buyerGcmid;
  String? buyerPemid;
  App? app;

  SplashPage({
    this.deviceType,
    this.deviceId,
    this.deviceName,
    this.deviceOsVersion,
    this.deviceIpAddress,
    this.lat,
    this.long,
    this.buyerGcmid,
    this.buyerPemid,
    this.app,
  });

  factory SplashPage.fromJson(Map<String, dynamic> json) => SplashPage(
        deviceType: json["deviceType"],
        deviceId: json["deviceId"],
        deviceName: json["deviceName"],
        deviceOsVersion: json["deviceOSVersion"],
        deviceIpAddress: json["deviceIPAddress"],
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
        buyerGcmid: json["buyer_gcmid"],
        buyerPemid: json["buyer_pemid"],
        app: json["app"] == null ? null : App.fromJson(json["app"]),
      );

  Map<String, dynamic> toJson() => {
        "deviceType": deviceType,
        "deviceId": deviceId,
        "deviceName": deviceName,
        "deviceOSVersion": deviceOsVersion,
        "deviceIPAddress": deviceIpAddress,
        "lat": lat,
        "long": long,
        "buyer_gcmid": buyerGcmid,
        "buyer_pemid": buyerPemid,
        "app": app?.toJson(),
      };
}

class App {
  String? version;
  DateTime? installTimeStamp;
  DateTime? uninstallTimeStamp;
  DateTime? downloadTimeStamp;

  App({
    this.version,
    this.installTimeStamp,
    this.uninstallTimeStamp,
    this.downloadTimeStamp,
  });

  factory App.fromJson(Map<String, dynamic> json) => App(
        version: json["version"],
        installTimeStamp: json["installTimeStamp"] == null
            ? null
            : DateTime.parse(json["installTimeStamp"]),
        uninstallTimeStamp: json["uninstallTimeStamp"] == null
            ? null
            : DateTime.parse(json["uninstallTimeStamp"]),
        downloadTimeStamp: json["downloadTimeStamp"] == null
            ? null
            : DateTime.parse(json["downloadTimeStamp"]),
      );

  Map<String, dynamic> toJson() => {
        "version": version,
        "installTimeStamp": installTimeStamp?.toIso8601String(),
        "uninstallTimeStamp": uninstallTimeStamp?.toIso8601String(),
        "downloadTimeStamp": downloadTimeStamp?.toIso8601String(),
      };
}
