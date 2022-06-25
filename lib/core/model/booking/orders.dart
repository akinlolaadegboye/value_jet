// /// status : true
// /// message : "Transactions History retrieved successfully."
// /// data : [{"id":63,"user_id":2,"status_id":2,"payment_id":80,"created_at":"2020-04-06 20:06:04","updated_at":"2020-04-06 20:06:33","pickup_location_id":"Jakande Estate","company_id":1,"statusName":"Paid","dateTime":"Monday, April 6th 2020","location":"Jakande Estate","amount":18600,"status":"Paid"},{"id":68,"user_id":2,"status_id":2,"payment_id":85,"created_at":"2020-04-18 11:40:54","updated_at":"2020-04-18 11:42:27","pickup_location_id":"No 174 Jakande Estate Lekki Penninsula 2","company_id":1,"statusName":"Paid","dateTime":"Saturday, April 18th 2020","location":"No 174 Jakande Estate Lekki Penninsula 2","amount":2110,"status":"Paid"}]

// class Orders {
//   String _status;
//   String _message;
//   List<Data> _data;

//   String get status => _status;
//   String get message => _message;
//   List<Data> get data => _data;

//   Orders({
//     String status,
//       String message, 
//       List<Data> data}){
//     _status = status;
//     _message = message;
//     _data = data;
// }

//   Orders.fromJson(dynamic json) {
//     _status = json["status"];
//     _message = json["message"];
//     if (json["data"] != null) {
//       _data = [];
//       json["data"].forEach((v) {
//         _data.add(Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["status"] = _status;
//     map["message"] = _message;
//     if (_data != null) {
//       map["data"] = _data.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }

// }

// /// id : 63
// /// user_id : 2
// /// status_id : 2
// /// payment_id : 80
// /// created_at : "2020-04-06 20:06:04"
// /// updated_at : "2020-04-06 20:06:33"
// /// pickup_location_id : "Jakande Estate"
// /// company_id : 1
// /// statusName : "Paid"
// /// dateTime : "Monday, April 6th 2020"
// /// location : "Jakande Estate"
// /// amount : 18600
// /// status : "Paid"

// class Data {
//   int _id;
//   int _userId;
//   int _statusId;
//   int _paymentId;
//   String _createdAt;
//   String _updatedAt;
//   String _pickupLocationId;
//   int _companyId;
//   String _statusName;
//   String _dateTime;
//   String _location;
//   int _amount;
//   String _status;

//   int get id => _id;
//   int get userId => _userId;
//   int get statusId => _statusId;
//   int get paymentId => _paymentId;
//   String get createdAt => _createdAt;
//   String get updatedAt => _updatedAt;
//   String get pickupLocationId => _pickupLocationId;
//   int get companyId => _companyId;
//   String get statusName => _statusName;
//   String get dateTime => _dateTime;
//   String get location => _location;
//   int get amount => _amount;
//   String get status => _status;

//   Data({
//       int id, 
//       int userId, 
//       int statusId, 
//       int paymentId, 
//       String createdAt, 
//       String updatedAt, 
//       String pickupLocationId, 
//       int companyId, 
//       String statusName, 
//       String dateTime, 
//       String location, 
//       int amount, 
//       String status}){
//     _id = id;
//     _userId = userId;
//     _statusId = statusId;
//     _paymentId = paymentId;
//     _createdAt = createdAt;
//     _updatedAt = updatedAt;
//     _pickupLocationId = pickupLocationId;
//     _companyId = companyId;
//     _statusName = statusName;
//     _dateTime = dateTime;
//     _location = location;
//     _amount = amount;
//     _status = status;
// }

//   Data.fromJson(dynamic json) {
//     _id = json["id"];
//     _userId = json["user_id"];
//     _statusId = json["status_id"];
//     _paymentId = json["payment_id"];
//     _createdAt = json["created_at"];
//     _updatedAt = json["updated_at"];
//     _pickupLocationId = json["pickup_location_id"];
//     _companyId = json["company_id"];
//     _statusName = json["statusName"];
//     _dateTime = json["dateTime"];
//     _location = json["location"];
//     _amount = json["amount"];
//     _status = json["status"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["id"] = _id;
//     map["user_id"] = _userId;
//     map["status_id"] = _statusId;
//     map["payment_id"] = _paymentId;
//     map["created_at"] = _createdAt;
//     map["updated_at"] = _updatedAt;
//     map["pickup_location_id"] = _pickupLocationId;
//     map["company_id"] = _companyId;
//     map["statusName"] = _statusName;
//     map["dateTime"] = _dateTime;
//     map["location"] = _location;
//     map["amount"] = _amount;
//     map["status"] = _status;
//     return map;
//   }

// }