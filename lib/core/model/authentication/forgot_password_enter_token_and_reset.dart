
class ForgotPasswordEnterTokenAndResetModel {

  String _token;
  String _password;
  String _passwordConfirmation;

  String get token => _token;

  String get password => _password;

  String get newPassword => _passwordConfirmation;

  ForgotPasswordEnterTokenAndResetModel(
      {String token,
        String password,
        String passwordConfirmation}) {
    _token = token;
    _password = password;
    _passwordConfirmation = passwordConfirmation;
  }

  ForgotPasswordEnterTokenAndResetModel.fromJson(dynamic json) {
    _token = json["token"];
    _password = json["new_password"];
    _passwordConfirmation = json["new_password_confirmation"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["token"] = _token;
    map["new_password"] = _password;
    map["new_password_confirmation"] = _passwordConfirmation;
    return map;
  }
}
