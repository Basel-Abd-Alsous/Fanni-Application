class OTPParam {
  final String? mobileNumber;
  final int? otp;
  //ss
  OTPParam({this.mobileNumber, this.otp});
  OTPParam.fromJson(Map<String, dynamic> json) : mobileNumber = json['phone'] as String?, otp = json['otp'] as int?;
  Map<String, dynamic> toJson() => {'phone': mobileNumber, 'otp': otp};
}
