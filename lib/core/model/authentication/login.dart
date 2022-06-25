/// phone_number : ""
/// password : ""
/// request_type : ""

class Login {
  String _email;
  String _password;
  // String _requestType;

  String get phoneNumber => _email;
  String get password => _password;
  // String get requestType => _requestType;

  Login({
      String email,
      String password, 
      String requestType
  }){
    _email = email;
    _password = password;
    // _requestType = requestType;
}

  Login.fromJson(dynamic json) {
    _email = json["email"];
    _password = json["password"];
    // _requestType = json["request_type"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["email"] = _email;
    map["password"] = _password;
    // map["request_type"] = _requestType;
    return map;
  }

}