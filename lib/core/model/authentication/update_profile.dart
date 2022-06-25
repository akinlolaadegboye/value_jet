// /// name : "nameController.text"
// /// phone_number : "emailController.text"
// /// city_id : "cityController.text"
// /// address : "addressController.text"
// /// zone_id : "_locationId.toString()"

// class UpdateProfile {
//   String _name;
//   String _phoneNumber;
//   String _cityId;
//   String _address;
//   String _zoneId;
//   String _email;

//   String get name => _name;
//   String get phoneNumber => _phoneNumber;
//   String get cityId => _cityId;
//   String get address => _address;
//   String get zoneId => _zoneId;
//   String get email => _email;

//   UpdateProfile({
//       String name, 
//       String phoneNumber, 
//       String cityId, 
//       String address, 
//       String zoneId,
//       String  email
//   }){
//     _name = name;
//     _phoneNumber = phoneNumber;
//     _cityId = cityId;
//     _address = address;
//     _zoneId = zoneId;
//     _email = email;
// }

//   UpdateProfile.fromJson(dynamic json) {
//     _name = json["name"];
//     _phoneNumber = json["phone_number"];
//     _cityId = json["city_id"];
//     _address = json["address"];
//     _zoneId = json["zone_id"];
//     _email = json["email"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["name"] = _name;
//     map["phone_number"] = _phoneNumber;
//     map["city_id"] = _cityId;
//     map["address"] = _address;
//     map["zone_id"] = _zoneId;
//     map["email"] = _email;
//     return map;
//   }

// }