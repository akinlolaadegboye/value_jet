/// status : true
/// message : "Transaction retrieved successfully."
/// data : {"id":63,"user_id":2,"status_id":2,"payment_id":80,"created_at":"2020-04-06 20:06:04","updated_at":"2020-04-06 20:06:33","pickup_location_id":"Jakande Estate","company_id":1,"amount":18600,"statusName":"Paid","dateTime":"Monday, April 6th 2020","location":"Jakande Estate","orders":[{"id":78,"package_id":20,"user_id":2,"weight":1,"quantity":1,"payment_id":80,"status_id":2,"created_at":"2020-04-06 19:53:00","updated_at":"2020-04-06 20:06:33","product_list":null,"order_number":null,"amount":15625,"name":"Bull Beef (table cut)","image":"https://staging-app.foods.farmcrowdy.com/storage/cXeEMb50UV4qZSIrEqaVSt1l0KtiAFGblTTWm18u.jpeg","package":{"id":20,"order_type_id":1,"name":"Bull Beef (table cut)","description":"16 person share. Each share contains all the different parts of the bull.","price":15625,"image":"cXeEMb50UV4qZSIrEqaVSt1l0KtiAFGblTTWm18u.jpeg","slug":"bull-beef-(table-cut)-s7hspawx","active":1,"created_at":"2020-04-06 10:36:49","updated_at":"2021-02-27 14:35:16","company_id":1,"unit":"16 person share","short_description":"16 person share is available for ₦15625 only","allowed_minimum_units":5,"package_restock":0,"featured":1,"discount":10,"available_units":9}}]}

class OrderModelDetails {
  bool _status;
  String _message;
  Data _data;

  bool get status => _status;
  String get message => _message;
  Data get data => _data;

  OrderModelDetails({
      bool status, 
      String message, 
      Data data}){
    _status = status;
    _message = message;
    _data = data;
}

  OrderModelDetails.fromJson(dynamic json) {
    _status = json["status"];
    _message = json["message"];
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["status"] = _status;
    map["message"] = _message;
    if (_data != null) {
      map["data"] = _data.toJson();
    }
    return map;
  }

}

/// id : 63
/// user_id : 2
/// status_id : 2
/// payment_id : 80
/// created_at : "2020-04-06 20:06:04"
/// updated_at : "2020-04-06 20:06:33"
/// pickup_location_id : "Jakande Estate"
/// company_id : 1
/// amount : 18600
/// statusName : "Paid"
/// dateTime : "Monday, April 6th 2020"
/// location : "Jakande Estate"
/// orders : [{"id":78,"package_id":20,"user_id":2,"weight":1,"quantity":1,"payment_id":80,"status_id":2,"created_at":"2020-04-06 19:53:00","updated_at":"2020-04-06 20:06:33","product_list":null,"order_number":null,"amount":15625,"name":"Bull Beef (table cut)","image":"https://staging-app.foods.farmcrowdy.com/storage/cXeEMb50UV4qZSIrEqaVSt1l0KtiAFGblTTWm18u.jpeg","package":{"id":20,"order_type_id":1,"name":"Bull Beef (table cut)","description":"16 person share. Each share contains all the different parts of the bull.","price":15625,"image":"cXeEMb50UV4qZSIrEqaVSt1l0KtiAFGblTTWm18u.jpeg","slug":"bull-beef-(table-cut)-s7hspawx","active":1,"created_at":"2020-04-06 10:36:49","updated_at":"2021-02-27 14:35:16","company_id":1,"unit":"16 person share","short_description":"16 person share is available for ₦15625 only","allowed_minimum_units":5,"package_restock":0,"featured":1,"discount":10,"available_units":9}}]

class Data {
  int _id;
  int _userId;
  int _statusId;
  int _paymentId;
  String _createdAt;
  String _updatedAt;
  String _pickupLocationId;
  int _companyId;
  int _amount;
  String _statusName;
  String _dateTime;
  String _location;
  List<OrdersDetails> _orders;

  int get id => _id;
  int get userId => _userId;
  int get statusId => _statusId;
  int get paymentId => _paymentId;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  String get pickupLocationId => _pickupLocationId;
  int get companyId => _companyId;
  int get amount => _amount;
  String get statusName => _statusName;
  String get dateTime => _dateTime;
  String get location => _location;
  List<OrdersDetails> get orders => _orders;

  Data({
      int id, 
      int userId, 
      int statusId, 
      int paymentId, 
      String createdAt, 
      String updatedAt, 
      String pickupLocationId, 
      int companyId, 
      int amount, 
      String statusName, 
      String dateTime, 
      String location, 
      List<OrdersDetails> orders}){
    _id = id;
    _userId = userId;
    _statusId = statusId;
    _paymentId = paymentId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _pickupLocationId = pickupLocationId;
    _companyId = companyId;
    _amount = amount;
    _statusName = statusName;
    _dateTime = dateTime;
    _location = location;
    _orders = orders;
}

  Data.fromJson(dynamic json) {
    _id = json["id"];
    _userId = json["user_id"];
    _statusId = json["status_id"];
    _paymentId = json["payment_id"];
    _createdAt = json["created_at"];
    _updatedAt = json["updated_at"];
    _pickupLocationId = json["pickup_location_id"];
    _companyId = json["company_id"];
    _amount = json["amount"];
    _statusName = json["statusName"];
    _dateTime = json["dateTime"];
    _location = json["location"];
    if (json["orders"] != null) {
      _orders = [];
      json["orders"].forEach((v) {
        _orders.add(OrdersDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["user_id"] = _userId;
    map["status_id"] = _statusId;
    map["payment_id"] = _paymentId;
    map["created_at"] = _createdAt;
    map["updated_at"] = _updatedAt;
    map["pickup_location_id"] = _pickupLocationId;
    map["company_id"] = _companyId;
    map["amount"] = _amount;
    map["statusName"] = _statusName;
    map["dateTime"] = _dateTime;
    map["location"] = _location;
    if (_orders != null) {
      map["orders"] = _orders.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 78
/// package_id : 20
/// user_id : 2
/// weight : 1
/// quantity : 1
/// payment_id : 80
/// status_id : 2
/// created_at : "2020-04-06 19:53:00"
/// updated_at : "2020-04-06 20:06:33"
/// product_list : null
/// order_number : null
/// amount : 15625
/// name : "Bull Beef (table cut)"
/// image : "https://staging-app.foods.farmcrowdy.com/storage/cXeEMb50UV4qZSIrEqaVSt1l0KtiAFGblTTWm18u.jpeg"
/// package : {"id":20,"order_type_id":1,"name":"Bull Beef (table cut)","description":"16 person share. Each share contains all the different parts of the bull.","price":15625,"image":"cXeEMb50UV4qZSIrEqaVSt1l0KtiAFGblTTWm18u.jpeg","slug":"bull-beef-(table-cut)-s7hspawx","active":1,"created_at":"2020-04-06 10:36:49","updated_at":"2021-02-27 14:35:16","company_id":1,"unit":"16 person share","short_description":"16 person share is available for ₦15625 only","allowed_minimum_units":5,"package_restock":0,"featured":1,"discount":10,"available_units":9}

class OrdersDetails {
  int _id;
  int _packageId;
  int _userId;
  int _weight;
  int _quantity;
  int _paymentId;
  int _statusId;
  String _createdAt;
  String _updatedAt;
  dynamic _productList;
  dynamic _orderNumber;
  int _amount;
  String _name;
  String _image;
  Package _package;

  int get id => _id;
  int get packageId => _packageId;
  int get userId => _userId;
  int get weight => _weight;
  int get quantity => _quantity;
  int get paymentId => _paymentId;
  int get statusId => _statusId;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  dynamic get productList => _productList;
  dynamic get orderNumber => _orderNumber;
  int get amount => _amount;
  String get name => _name;
  String get image => _image;
  Package get package => _package;

  OrdersDetails({
      int id, 
      int packageId, 
      int userId, 
      int weight, 
      int quantity, 
      int paymentId, 
      int statusId, 
      String createdAt, 
      String updatedAt, 
      dynamic productList, 
      dynamic orderNumber, 
      int amount, 
      String name, 
      String image, 
      Package package}){
    _id = id;
    _packageId = packageId;
    _userId = userId;
    _weight = weight;
    _quantity = quantity;
    _paymentId = paymentId;
    _statusId = statusId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _productList = productList;
    _orderNumber = orderNumber;
    _amount = amount;
    _name = name;
    _image = image;
    _package = package;
}

  OrdersDetails.fromJson(dynamic json) {
    _id = json["id"];
    _packageId = json["package_id"];
    _userId = json["user_id"];
    _weight = json["weight"];
    _quantity = json["quantity"];
    _paymentId = json["payment_id"];
    _statusId = json["status_id"];
    _createdAt = json["created_at"];
    _updatedAt = json["updated_at"];
    _productList = json["product_list"];
    _orderNumber = json["order_number"];
    _amount = json["amount"];
    _name = json["name"];
    _image = json["image"];
    _package = json["package"] != null ? Package.fromJson(json["package"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["package_id"] = _packageId;
    map["user_id"] = _userId;
    map["weight"] = _weight;
    map["quantity"] = _quantity;
    map["payment_id"] = _paymentId;
    map["status_id"] = _statusId;
    map["created_at"] = _createdAt;
    map["updated_at"] = _updatedAt;
    map["product_list"] = _productList;
    map["order_number"] = _orderNumber;
    map["amount"] = _amount;
    map["name"] = _name;
    map["image"] = _image;
    if (_package != null) {
      map["package"] = _package.toJson();
    }
    return map;
  }

}

/// id : 20
/// order_type_id : 1
/// name : "Bull Beef (table cut)"
/// description : "16 person share. Each share contains all the different parts of the bull."
/// price : 15625
/// image : "cXeEMb50UV4qZSIrEqaVSt1l0KtiAFGblTTWm18u.jpeg"
/// slug : "bull-beef-(table-cut)-s7hspawx"
/// active : 1
/// created_at : "2020-04-06 10:36:49"
/// updated_at : "2021-02-27 14:35:16"
/// company_id : 1
/// unit : "16 person share"
/// short_description : "16 person share is available for ₦15625 only"
/// allowed_minimum_units : 5
/// package_restock : 0
/// featured : 1
/// discount : 10
/// available_units : 9

class Package {
  int _id;
  int _orderTypeId;
  String _name;
  String _description;
  int _price;
  String _image;
  String _slug;
  int _active;
  String _createdAt;
  String _updatedAt;
  int _companyId;
  String _unit;
  String _shortDescription;
  int _allowedMinimumUnits;
  int _packageRestock;
  int _featured;
  int _discount;
  int _availableUnits;

  int get id => _id;
  int get orderTypeId => _orderTypeId;
  String get name => _name;
  String get description => _description;
  int get price => _price;
  String get image => _image;
  String get slug => _slug;
  int get active => _active;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  int get companyId => _companyId;
  String get unit => _unit;
  String get shortDescription => _shortDescription;
  int get allowedMinimumUnits => _allowedMinimumUnits;
  int get packageRestock => _packageRestock;
  int get featured => _featured;
  int get discount => _discount;
  int get availableUnits => _availableUnits;

  Package({
      int id, 
      int orderTypeId, 
      String name, 
      String description, 
      int price, 
      String image, 
      String slug, 
      int active, 
      String createdAt, 
      String updatedAt, 
      int companyId, 
      String unit, 
      String shortDescription, 
      int allowedMinimumUnits, 
      int packageRestock, 
      int featured, 
      int discount, 
      int availableUnits}){
    _id = id;
    _orderTypeId = orderTypeId;
    _name = name;
    _description = description;
    _price = price;
    _image = image;
    _slug = slug;
    _active = active;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _companyId = companyId;
    _unit = unit;
    _shortDescription = shortDescription;
    _allowedMinimumUnits = allowedMinimumUnits;
    _packageRestock = packageRestock;
    _featured = featured;
    _discount = discount;
    _availableUnits = availableUnits;
}

  Package.fromJson(dynamic json) {
    _id = json["id"];
    _orderTypeId = json["order_type_id"];
    _name = json["name"];
    _description = json["description"];
    _price = json["price"];
    _image = json["image"];
    _slug = json["slug"];
    _active = json["active"];
    _createdAt = json["created_at"];
    _updatedAt = json["updated_at"];
    _companyId = json["company_id"];
    _unit = json["unit"];
    _shortDescription = json["short_description"];
    _allowedMinimumUnits = json["allowed_minimum_units"];
    _packageRestock = json["package_restock"];
    _featured = json["featured"];
    _discount = json["discount"];
    _availableUnits = json["available_units"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["order_type_id"] = _orderTypeId;
    map["name"] = _name;
    map["description"] = _description;
    map["price"] = _price;
    map["image"] = _image;
    map["slug"] = _slug;
    map["active"] = _active;
    map["created_at"] = _createdAt;
    map["updated_at"] = _updatedAt;
    map["company_id"] = _companyId;
    map["unit"] = _unit;
    map["short_description"] = _shortDescription;
    map["allowed_minimum_units"] = _allowedMinimumUnits;
    map["package_restock"] = _packageRestock;
    map["featured"] = _featured;
    map["discount"] = _discount;
    map["available_units"] = _availableUnits;
    return map;
  }

}