class PasswordParam {
  final String? mobile;
  final String? newPassword;

  PasswordParam({this.mobile, this.newPassword});

  PasswordParam.fromJson(Map<String, dynamic> json) : mobile = json['mobile_number'] as String?, newPassword = json['new_password'] as String?;

  Map<String, dynamic> toJson() => {'mobile_number': mobile, 'new_password': newPassword};
}
