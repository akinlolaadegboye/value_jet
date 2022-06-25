// /// status : true
// /// message : "Orders summary retrieved successfully."
// /// data : {"user_id":2,"quantity":2,"basket_size":2,"delivery_fee":"100","delivery_charges":"100","subtotal":23280,"transaction_charges":450.7,"discount":0,"total":23380,"final_charge":23831}

// class CartSummary {
//   bool _status;
//   String _message;
//   Data _data;

//   bool get status => _status;
//   String get message => _message;
//   Data get data => _data;

//   CartSummary({
//       bool status, 
//       String message, 
//       Data data}){
//     _status = status;
//     _message = message;
//     _data = data;
// }

//   CartSummary.fromJson(dynamic json) {
//     _status = json["status"];
//     _message = json["message"];
//     _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["status"] = _status;
//     map["message"] = _message;
//     if (_data != null) {
//       map["data"] = _data.toJson();
//     }
//     return map;
//   }

// }

// /// user_id : 2
// /// quantity : 2
// /// basket_size : 2
// /// delivery_fee : "100"
// /// delivery_charges : "100"
// /// subtotal : 23280
// /// transaction_charges : 450.7
// /// discount : 0
// /// total : 23380
// /// final_charge : 23831

// class Data {
//   int _userId;
//   int _quantity;
//   int _basketSize;
//   dynamic _deliveryFee;
//   dynamic _deliveryCharges;
//   dynamic _subtotal;
//   double _transactionCharges;
//   dynamic _discount;
//   dynamic _total;
//   dynamic _finalCharge;

//   int get userId => _userId;
//   int get quantity => _quantity;
//   int get basketSize => _basketSize;
//   String get deliveryFee => _deliveryFee;
//   int get deliveryCharges => _deliveryCharges;
//   dynamic get subtotal => _subtotal;
//   double get transactionCharges => _transactionCharges;
//   dynamic get discount => _discount;
//   dynamic get total => _total;
//   dynamic get finalCharge => _finalCharge;

//   Data({
//       int userId, 
//       int quantity, 
//       int basketSize, 
//       String deliveryFee,
//       int deliveryCharges,
//       int subtotal, 
//       double transactionCharges, 
//       int discount, 
//       int total, 
//       int finalCharge}){
//     _userId = userId;
//     _quantity = quantity;
//     _basketSize = basketSize;
//     _deliveryFee = deliveryFee;
//     _deliveryCharges = deliveryCharges;
//     _subtotal = subtotal;
//     _transactionCharges = transactionCharges;
//     _discount = discount;
//     _total = total;
//     _finalCharge = finalCharge;
// }

//   Data.fromJson(dynamic json) {
//     _userId = json["user_id"];
//     _quantity = json["quantity"];
//     _basketSize = json["basket_size"];
//     _deliveryFee = json["delivery_fee"];
//     _deliveryCharges = json["delivery_charges"];
//     _subtotal = json["subtotal"];
//     _transactionCharges = json["transaction_charges"];
//     _discount = json["discount"];
//     _total = json["total"];
//     _finalCharge = json["final_charge"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["user_id"] = _userId;
//     map["quantity"] = _quantity;
//     map["basket_size"] = _basketSize;
//     map["delivery_fee"] = _deliveryFee;
//     map["delivery_charges"] = _deliveryCharges;
//     map["subtotal"] = _subtotal;
//     map["transaction_charges"] = _transactionCharges;
//     map["discount"] = _discount;
//     map["total"] = _total;
//     map["final_charge"] = _finalCharge;
//     return map;
//   }

// }