class RegisterParameters{
  String _firstName;
  String _lastName;
  String _phoneNumber;
  String _email;
  String _country;
  String _state;
  String _address;
  String _city;
  String _password;
  String _confirmPassword;
  String _role;



  RegisterParameters(String firstName,String lastName,String phoneNumber,String email,String country,String state,String city,String address,String password,String confirmPassword,String role){
    _firstName = firstName;
    _lastName = lastName;
    _phoneNumber = phoneNumber;
    _email = email;
    _country = country;
    _state = state;
    _city = city;
    _address = address;
    _password = password;
    _confirmPassword = confirmPassword;
    _role = role;
  }

  String get confirmPassword => _confirmPassword;

  String get password => _password;

  String get email => _email;

  String get phoneNumber => _phoneNumber;

  String get lastName => _lastName;

  String get firstName => _firstName;

  String get country => _country;

  String get state => _state;

  String get city => _city;

  String get address => _address;

  String get role => _role;

  RegisterParameters.fromJson(dynamic json){
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _phoneNumber = json['phone_number'];
    _country = json['country'];
    _state = json['state'];
    _city = json['city'];
    _address = json['address'];
    _password = json['password'];
    _confirmPassword = json['password_confirmation'];
    _role = json['role'];
  }


  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["first_name"] = _firstName;
    map["last_name"] = _lastName;
    map["email"] = _email;
    map["phone_number"] = _phoneNumber;
    map['country'] = _country ;
    map['state'] = _state;
    map['city'] = _city;
    map['address'] = _address;
    map["password"] = _password;
    map["password_confirmation"] = _confirmPassword;
    map['role'] = _role;
    return map;
  }

}