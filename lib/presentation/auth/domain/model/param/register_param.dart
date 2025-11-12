class RegisterParam {
  final String? name;
  final String? mobileNumber;
  final String? fcmToken;
  final String? password;

  RegisterParam({this.name, this.mobileNumber, this.fcmToken, this.password});

  RegisterParam.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String?,
      mobileNumber = json['mobile_number'] as String?,
      fcmToken = json['fcm_token'] as String?,
      password = json['password'] as String?;

  Map<String, dynamic> toJson() => {'name': name, 'mobile_number': mobileNumber, 'fcm_token': fcmToken, 'password': password};
}
