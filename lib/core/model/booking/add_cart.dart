// /// user_id : "userId.toString()"
// /// package_id : "id.toString()"
// /// quantity : "_quantity.toString()"
// /// weight : "1"
// /// status_id : "3"

// class AddCart {
//   String _userId;
//   String _packageId;
//   String _quantity;
//   String _weight;
//   String _statusId;

//   String get userId => _userId;
//   String get packageId => _packageId;
//   String get quantity => _quantity;
//   String get weight => _weight;
//   String get statusId => _statusId;

//   AddCart({
//       String userId, 
//       String packageId, 
//       String quantity, 
//       String weight, 
//       String statusId}){
//     _userId = userId;
//     _packageId = packageId;
//     _quantity = quantity;
//     _weight = weight;
//     _statusId = statusId;
// }

//   AddCart.fromJson(dynamic json) {
//     _userId = json["user_id"];
//     _packageId = json["package_id"];
//     _quantity = json["quantity"];
//     _weight = json["weight"];
//     _statusId = json["status_id"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["user_id"] = _userId;
//     map["package_id"] = _packageId;
//     map["quantity"] = _quantity;
//     map["weight"] = _weight;
//     map["status_id"] = _statusId;
//     return map;
//   }

// }