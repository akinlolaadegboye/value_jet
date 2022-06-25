// // /// status : true
// // /// message : "Login successful"
// // /// data : {"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiNmY4NDI4OTM2ZGFjOTdkZTA0NDgyNWVmMjg4NDNmMDc4NjUxYmRkZmYwNDc4YzA4NGU5NWE1OTViNmI4OTU5NWIxMTUxYmQzMTlmNzNkMGIiLCJpYXQiOjE2MTY1ODA3MjIsIm5iZiI6MTYxNjU4MDcyMiwiZXhwIjoxNjQ4MTE2NzIyLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.YZAA-ha_PzN2L1lyafM2SekW2xo5AUIYw7VFsEvWEbprjFBH_LSkGbU2Qcr_nxbbPQtcuwjvIrqOjIgbFAS4036Ud3StluxiAjBpGHM0lJql3_y-8X9huLQWfRaQC2tn26NidywTYk5_NEC0bBRRJc-nv1pp5GhE4cBzgbl_tLgwYIpbxPfanXKh5RT81TscZMECUmxp6YLanTysTJgnEmgyCqy_hgboBdSmOughSW7DUmnwGsRzQ-WGT1v11i3ge2jkFeSiEngRe3G48k9v3u0VGouo28HZA7y2HVGZkTYu9fA-um-KYNPxfevNJ0DsFLhJsCx48gfGt8w1uXLS3RaG1QZNCPFgoMYyrDVTAXawiQEZooVP6lC_C_a7x_flqmxhc8iPYUnG_yhDqE9_Dg7nlHLi1-28yG412b8FeGqxU8iWYBT6kYbSWhvpi_jnTqjT4MoxDZ27MTZYgRNHwrN2We3zu_v4e759-JGsnvSfnNfkODYe8FG64AxLbCoVzRnKxfLsyhs1y9ZO1x6BmJ5O0CRQOQ6jZtos5wqxZ4NXwKnIiBc5fjlNfOxCMrSGIu38KYM1HoiSsfzzsJnNkvMkPOT9Exc7_ffpbZXdapaD5YnKQw_ZW91EUsmX0JHKm2cBt7PoyVIBOnwERw39J1dB7fAz9IE0V1v5m7M2ryI","user":{"id":2,"name":"Daniel Makinde","email":"mayomidedaniel@gmail.com","phone_number":"+2348169545791","gender":"Male","address":"Jakande Estate","city":"Lekki","email_verified_at":null,"created_at":"2020-03-23 04:58:21","updated_at":"2020-04-18 11:00:54","is_phone_verified":1,"is_default_pass_changed":"Yes","avatar":"2_profile_image1586208802.jpg","role_id":3,"state_id":1,"zone_id":null,"city_id":null}}
// //
// // class LoginResponse {
// //   bool _status;
// //   String _message;
// //   Data _data;
// //
// //   bool get status => _status;
// //   String get message => _message;
// //   Data get data => _data;
// //
// //   LoginResponse({
// //       bool status,
// //       String message,
// //       Data data}){
// //     _status = status;
// //     _message = message;
// //     _data = data;
// // }
// //
// //   LoginResponse.fromJson(dynamic json) {
// //     _status = json["status"];
// //     _message = json["message"];
// //     _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     var map = <String, dynamic>{};
// //     map["status"] = _status;
// //     map["message"] = _message;
// //     if (_data != null) {
// //       map["data"] = _data.toJson();
// //     }
// //     return map;
// //   }
// //
// // }
// //
// // /// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiNmY4NDI4OTM2ZGFjOTdkZTA0NDgyNWVmMjg4NDNmMDc4NjUxYmRkZmYwNDc4YzA4NGU5NWE1OTViNmI4OTU5NWIxMTUxYmQzMTlmNzNkMGIiLCJpYXQiOjE2MTY1ODA3MjIsIm5iZiI6MTYxNjU4MDcyMiwiZXhwIjoxNjQ4MTE2NzIyLCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.YZAA-ha_PzN2L1lyafM2SekW2xo5AUIYw7VFsEvWEbprjFBH_LSkGbU2Qcr_nxbbPQtcuwjvIrqOjIgbFAS4036Ud3StluxiAjBpGHM0lJql3_y-8X9huLQWfRaQC2tn26NidywTYk5_NEC0bBRRJc-nv1pp5GhE4cBzgbl_tLgwYIpbxPfanXKh5RT81TscZMECUmxp6YLanTysTJgnEmgyCqy_hgboBdSmOughSW7DUmnwGsRzQ-WGT1v11i3ge2jkFeSiEngRe3G48k9v3u0VGouo28HZA7y2HVGZkTYu9fA-um-KYNPxfevNJ0DsFLhJsCx48gfGt8w1uXLS3RaG1QZNCPFgoMYyrDVTAXawiQEZooVP6lC_C_a7x_flqmxhc8iPYUnG_yhDqE9_Dg7nlHLi1-28yG412b8FeGqxU8iWYBT6kYbSWhvpi_jnTqjT4MoxDZ27MTZYgRNHwrN2We3zu_v4e759-JGsnvSfnNfkODYe8FG64AxLbCoVzRnKxfLsyhs1y9ZO1x6BmJ5O0CRQOQ6jZtos5wqxZ4NXwKnIiBc5fjlNfOxCMrSGIu38KYM1HoiSsfzzsJnNkvMkPOT9Exc7_ffpbZXdapaD5YnKQw_ZW91EUsmX0JHKm2cBt7PoyVIBOnwERw39J1dB7fAz9IE0V1v5m7M2ryI"
// // /// user : {"id":2,"name":"Daniel Makinde","email":"mayomidedaniel@gmail.com","phone_number":"+2348169545791","gender":"Male","address":"Jakande Estate","city":"Lekki","email_verified_at":null,"created_at":"2020-03-23 04:58:21","updated_at":"2020-04-18 11:00:54","is_phone_verified":1,"is_default_pass_changed":"Yes","avatar":"2_profile_image1586208802.jpg","role_id":3,"state_id":1,"zone_id":null,"city_id":null}
// //
// // class Data {
// //   String _accessToken;
// //   User _user;
// //
// //   String get accessToken => _accessToken;
// //   User get user => _user;
// //
// //   Data({
// //       String accessToken,
// //       User user}){
// //     _accessToken = accessToken;
// //     _user = user;
// // }
// //
// //   Data.fromJson(dynamic json) {
// //     _accessToken = json["access_token"];
// //     _user = json["user"] != null ? User.fromJson(json["user"]) : null;
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     var map = <String, dynamic>{};
// //     map["access_token"] = _accessToken;
// //     if (_user != null) {
// //       map["user"] = _user.toJson();
// //     }
// //     return map;
// //   }
// //
// // }
// //
// // /// id : 2
// // /// name : "Daniel Makinde"
// // /// email : "mayomidedaniel@gmail.com"
// // /// phone_number : "+2348169545791"
// // /// gender : "Male"
// // /// address : "Jakande Estate"
// // /// city : "Lekki"
// // /// email_verified_at : null
// // /// created_at : "2020-03-23 04:58:21"
// // /// updated_at : "2020-04-18 11:00:54"
// // /// is_phone_verified : 1
// // /// is_default_pass_changed : "Yes"
// // /// avatar : "2_profile_image1586208802.jpg"
// // /// role_id : 3
// // /// state_id : 1
// // /// zone_id : null
// // /// city_id : null
// //
// // class User {
// //   int _id;
// //   String _name;
// //   String _email;
// //   String _phoneNumber;
// //   String _gender;
// //   String _address;
// //   String _city;
// //   dynamic _emailVerifiedAt;
// //   String _createdAt;
// //   String _updatedAt;
// //   int _isPhoneVerified;
// //   String _isDefaultPassChanged;
// //   String _avatar;
// //   int _roleId;
// //   int _stateId;
// //   dynamic _zoneId;
// //   dynamic _cityId;
// //   dynamic _sectorId;
// //   String  _sectorName;
// //   String  _zoneName;
// //   String  _cityName;
// //
// //   int get id => _id;
// //   String get name => _name;
// //   String get email => _email;
// //   String get phoneNumber => _phoneNumber;
// //   String get gender => _gender;
// //   String get address => _address;
// //   String get city => _city;
// //   dynamic get emailVerifiedAt => _emailVerifiedAt;
// //   String get createdAt => _createdAt;
// //   String get updatedAt => _updatedAt;
// //   int get isPhoneVerified => _isPhoneVerified;
// //   String get isDefaultPassChanged => _isDefaultPassChanged;
// //   String get avatar => _avatar;
// //   int get roleId => _roleId;
// //   int get stateId => _stateId;
// //   dynamic get zoneId => _zoneId;
// //   dynamic get cityId => _cityId;
// //   dynamic get sectorId => _sectorId;
// //   String get sectorName => _sectorName;
// //   String get zoneName => _zoneName;
// //   String get cityName => _cityName;
// //
// //   User({
// //       int id,
// //       String name,
// //       String email,
// //       String phoneNumber,
// //       String gender,
// //       String address,
// //       String city,
// //       dynamic emailVerifiedAt,
// //       String createdAt,
// //       String updatedAt,
// //       int isPhoneVerified,
// //       String isDefaultPassChanged,
// //       String avatar,
// //       int roleId,
// //       int stateId,
// //       dynamic zoneId,
// //       dynamic cityId,
// //     dynamic sectorId,
// //     String sectorName,
// //       String zoneName,
// //     String cityName}){
// //     _id = id;
// //     _name = name;
// //     _email = email;
// //     _phoneNumber = phoneNumber;
// //     _gender = gender;
// //     _address = address;
// //     _city = city;
// //     _emailVerifiedAt = emailVerifiedAt;
// //     _createdAt = createdAt;
// //     _updatedAt = updatedAt;
// //     _isPhoneVerified = isPhoneVerified;
// //     _isDefaultPassChanged = isDefaultPassChanged;
// //     _avatar = avatar;
// //     _roleId = roleId;
// //     _stateId = stateId;
// //     _zoneId = zoneId;
// //     _cityId = cityId;
// //     _sectorId = sectorId;
// //     _sectorName= sectorName;
// //     _zoneName= zoneName;
// //     _cityName = cityName;
// // }
// //
// //   User.fromJson(dynamic json) {
// //     _id = json["id"];
// //     _name = json["name"];
// //     _email = json["email"];
// //     _phoneNumber = json["phone_number"];
// //     _gender = json["gender"];
// //     _address = json["address"];
// //     _city = json["city"];
// //     _emailVerifiedAt = json["email_verified_at"];
// //     _createdAt = json["created_at"];
// //     _updatedAt = json["updated_at"];
// //     _isPhoneVerified = json["is_phone_verified"];
// //     _isDefaultPassChanged = json["is_default_pass_changed"];
// //     _avatar = json["avatar"];
// //     _roleId = json["role_id"];
// //     _stateId = json["state_id"];
// //     _zoneId = json["zone_id"];
// //     _cityId = json["city_id"];
// //     _sectorId = json["sector_id"];
// //     _sectorName = json["sector"];
// //     _zoneName = json["zone_name"];
// //     _cityName = json["city_name"];
// //   }
// //
// //   Map<String, dynamic> toJson() {
// //     var map = <String, dynamic>{};
// //     map["id"] = _id;
// //     map["name"] = _name;
// //     map["email"] = _email;
// //     map["phone_number"] = _phoneNumber;
// //     map["gender"] = _gender;
// //     map["address"] = _address;
// //     map["city"] = _city;
// //     map["email_verified_at"] = _emailVerifiedAt;
// //     map["created_at"] = _createdAt;
// //     map["updated_at"] = _updatedAt;
// //     map["is_phone_verified"] = _isPhoneVerified;
// //     map["is_default_pass_changed"] = _isDefaultPassChanged;
// //     map["avatar"] = _avatar;
// //     map["role_id"] = _roleId;
// //     map["state_id"] = _stateId;
// //     map["zone_id"] = _zoneId;
// //     map["city_id"] = _cityId;
// //     map["sector_id"] = _sectorId;
// //     map["sector"] = _sectorName;
// //     map["zone_name"] = _zoneName;
// //     map["city_name"] = _cityName;
// //     return map;
// //   }
// //
// // }

// class LoginResponse {
//   String status;
//   String message;
//   String id;
//   Attributes attributes;

//   LoginResponse({this.status, this.message, this.id, this.attributes});

//   LoginResponse.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message = json['message'];
//     id = json['id'];
//     attributes = json['attributes'] != null
//         ? new Attributes.fromJson(json['attributes'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['message'] = this.message;
//     data['id'] = this.id;
//     if (this.attributes != null) {
//       data['attributes'] = this.attributes.toJson();
//     }
//     return data;
//   }
// }

// class Attributes {
//   String token;
//   String tokenType;
//   int tokenValidity;
//   User user;

//   Attributes({this.token, this.tokenType, this.tokenValidity, this.user});

//   Attributes.fromJson(Map<String, dynamic> json) {
//     token = json['token'];
//     tokenType = json['token_type'];
//     tokenValidity = json['token_validity'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['token'] = this.token;
//     data['token_type'] = this.tokenType;
//     data['token_validity'] = this.tokenValidity;
//     if (this.user != null) {
//       data['user'] = this.user.toJson();
//     }
//     return data;
//   }
// }

// class User {
//   String id;
//   String email;
//   String phone;
//   String emailVerifiedAt;
//   String userType;
//   String createdAt;
//   String updatedAt;
//   String firstName;
//   String lastName;
//   String country;
//   String state;
//   String city;
//   String address;
//   String roleName;
//   String imageUrl;

//   User({
//       this.id,
//       this.email,
//       this.phone,
//       this.emailVerifiedAt,
//       this.userType,
//       this.createdAt,
//       this.updatedAt,
//       this.firstName,
//       this.lastName,
//       this.country,
//       this.state,
//       this.city,
//       this.address,
//       this.roleName,
//       this.imageUrl});




//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     email = json['email'];
//     phone = json['phone_number'];
//     emailVerifiedAt = json['email_verified_at'];
//     userType = json['user_type'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     country = json['country'];
//     state = json['state'];
//     city = json['city'];
//     address = json['address'];
//     roleName = json['role_name'];
//     imageUrl = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['email_verified_at'] = this.emailVerifiedAt;
//     data['user_type'] = this.userType;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['first_name'] = this.firstName;
//     data['last_name'] = this.lastName;
//     data['country'] = this.country;
//     data['state'] = this.state;
//     data['city'] = this.city;
//     data['address'] = this.address;
//     data['role_name'] = this.roleName;
//     data['image'] = this.imageUrl;
//     return data;
//   }
// }