// /// status : true
// /// message : "New OTP sent!"
// /// data : 52967

// class ResetPasswordRequestResponse {
//   bool _status;
//   String _message;
//   int _data;

//   bool get status => _status;
//   String get message => _message;
//   int get data => _data;

//   ResetPasswordRequestResponse({
//       bool status, 
//       String message, 
//       int data}){
//     _status = status;
//     _message = message;
//     _data = data;
// }

//   ResetPasswordRequestResponse.fromJson(dynamic json) {
//     _status = json["status"];
//     _message = json["message"];
//     _data = json["data"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["status"] = _status;
//     map["message"] = _message;
//     map["data"] = _data;
//     return map;
//   }

// }