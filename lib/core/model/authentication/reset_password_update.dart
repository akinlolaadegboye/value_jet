// /// phone_number : ""
// /// password : ""

// class ResetPasswordUpdate {
//   String _phoneNumber;
//   String _password;

//   String get phoneNumber => _phoneNumber;
//   String get password => _password;

//   ResetPasswordUpdate({
//       String phoneNumber, 
//       String password}){
//     _phoneNumber = phoneNumber;
//     _password = password;
// }

//   ResetPasswordUpdate.fromJson(dynamic json) {
//     _phoneNumber = json["phone_number"];
//     _password = json["password"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["phone_number"] = _phoneNumber;
//     map["password"] = _password;
//     return map;
//   }

// }