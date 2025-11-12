class LoginParam {
  final String? mobileNumber;
  final String? password;
  final String? fcmToken;

  LoginParam({this.mobileNumber, this.password, this.fcmToken});

  LoginParam.fromJson(Map<String, dynamic> json)
    : mobileNumber = json['mobile_number'] as String?,
      password = json['password'] as String?,
      fcmToken = json['fcm_token'] as String?;

  Map<String, dynamic> toJson() => {'mobile_number': mobileNumber, 'password': password, 'fcm_token': fcmToken};
}
