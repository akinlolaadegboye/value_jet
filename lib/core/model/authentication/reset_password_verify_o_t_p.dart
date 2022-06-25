/// phone_number : ""
/// otp_code : ""

class ResetPasswordVerifyOTP {
  String _phoneNumber;
  String _otpCode;

  String get phoneNumber => _phoneNumber;
  String get otpCode => _otpCode;

  ResetPasswordVerifyOTP({
      String phoneNumber, 
      String otpCode}){
    _phoneNumber = phoneNumber;
    _otpCode = otpCode;
}

  ResetPasswordVerifyOTP.fromJson(dynamic json) {
    _phoneNumber = json["phone_number"];
    _otpCode = json["otp_code"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["phone_number"] = _phoneNumber;
    map["otp_code"] = _otpCode;
    return map;
  }

}