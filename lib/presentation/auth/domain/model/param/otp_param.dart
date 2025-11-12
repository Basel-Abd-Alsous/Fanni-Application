class OTPParam {
  final String? mobileNumber;
  final String? otp;

  OTPParam({this.mobileNumber, this.otp});
  OTPParam.fromJson(Map<String, dynamic> json) : mobileNumber = json['phone'] as String?, otp = json['otp'] as String?;
  Map<String, dynamic> toJson() => {'phone': mobileNumber, 'otp': otp};
}
