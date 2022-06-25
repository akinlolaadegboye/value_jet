/// status : true
/// message : "Basket retrieved successfully."
/// data : {"user_id":2,"orders":[{"id":2834,"package_id":43,"user_id":2,"weight":1,"quantity":1,"payment_id":null,"status_id":3,"created_at":"2020-11-09 10:35:12","updated_at":"2020-11-09 10:35:12","product_list":null,"order_number":"EKO-JUL1W","price":23000,"name":"Awoof Package","discounted_price":22080,"discount":4,"order_type_id":6,"image":"https://staging-app.foods.farmcrowdy.com/storage/PZzvAzOccHVDefm58WzgSPLi9tIGWPH9i8gauItX.jpeg","package":{"id":43,"order_type_id":6,"name":"Awoof Package","description":"Onions (Red) - 1kg\nTatashe and Rodo - 1kg\nTomato- 1kg \nGarri (White) - 1kg\nRice - 3kg\nBeans (Honey) - 3kg\nSweet potato - 3kg\nChicken breast and lap - 3kg\nGoat meat (4 person share) \nPower oil (75cl)\nDano Refill - 360g \nMilo Refill - 500g\nIndomie Noodles - Carton of 40.","price":23000,"image":"PZzvAzOccHVDefm58WzgSPLi9tIGWPH9i8gauItX.jpeg","slug":"awoof-package-5pdyg1bu","active":1,"created_at":"2020-05-25 13:07:33","updated_at":"2021-03-04 08:36:07","company_id":1,"unit":"1","short_description":"Available for ₦23,000 only.","allowed_minimum_units":5,"package_restock":0,"featured":0,"discount":4,"available_units":7}},{"id":2835,"package_id":46,"user_id":2,"weight":1,"quantity":1,"payment_id":null,"status_id":3,"created_at":"2020-11-09 10:35:30","updated_at":"2020-11-09 10:35:30","product_list":null,"order_number":"EKO-OQqXA","price":1200,"name":"Dano Milk","discounted_price":1200,"discount":0,"order_type_id":12,"image":"https://staging-app.foods.farmcrowdy.com/storage/uqVXT7o03u1FLtMeKHi6HNnUFlQ41qqjFjq7RSvP.jpeg","package":{"id":46,"order_type_id":12,"name":"Dano Milk","description":"Dano Milk 360g refill is available for ₦1,200 only.","price":1200,"image":"uqVXT7o03u1FLtMeKHi6HNnUFlQ41qqjFjq7RSvP.jpeg","slug":"dano-milk-ejri9x4b","active":1,"created_at":"2020-06-01 07:37:21","updated_at":"2021-02-19 11:47:31","company_id":1,"unit":"360g","short_description":"Dano Milk 360g refill is available for ₦1,200 only.","allowed_minimum_units":5,"package_restock":0,"featured":0,"discount":0,"available_units":10}}]}

class Cart {
  bool _status;
  String _message;
  Data _data;

  bool get status => _status;
  String get message => _message;
  Data get data => _data;

  Cart({
      bool status, 
      String message, 
      Data data}){
    _status = status;
    _message = message;
    _data = data;
}

  Cart.fromJson(dynamic json) {
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

/// user_id : 2
/// orders : [{"id":2834,"package_id":43,"user_id":2,"weight":1,"quantity":1,"payment_id":null,"status_id":3,"created_at":"2020-11-09 10:35:12","updated_at":"2020-11-09 10:35:12","product_list":null,"order_number":"EKO-JUL1W","price":23000,"name":"Awoof Package","discounted_price":22080,"discount":4,"order_type_id":6,"image":"https://staging-app.foods.farmcrowdy.com/storage/PZzvAzOccHVDefm58WzgSPLi9tIGWPH9i8gauItX.jpeg","package":{"id":43,"order_type_id":6,"name":"Awoof Package","description":"Onions (Red) - 1kg\nTatashe and Rodo - 1kg\nTomato- 1kg \nGarri (White) - 1kg\nRice - 3kg\nBeans (Honey) - 3kg\nSweet potato - 3kg\nChicken breast and lap - 3kg\nGoat meat (4 person share) \nPower oil (75cl)\nDano Refill - 360g \nMilo Refill - 500g\nIndomie Noodles - Carton of 40.","price":23000,"image":"PZzvAzOccHVDefm58WzgSPLi9tIGWPH9i8gauItX.jpeg","slug":"awoof-package-5pdyg1bu","active":1,"created_at":"2020-05-25 13:07:33","updated_at":"2021-03-04 08:36:07","company_id":1,"unit":"1","short_description":"Available for ₦23,000 only.","allowed_minimum_units":5,"package_restock":0,"featured":0,"discount":4,"available_units":7}},{"id":2835,"package_id":46,"user_id":2,"weight":1,"quantity":1,"payment_id":null,"status_id":3,"created_at":"2020-11-09 10:35:30","updated_at":"2020-11-09 10:35:30","product_list":null,"order_number":"EKO-OQqXA","price":1200,"name":"Dano Milk","discounted_price":1200,"discount":0,"order_type_id":12,"image":"https://staging-app.foods.farmcrowdy.com/storage/uqVXT7o03u1FLtMeKHi6HNnUFlQ41qqjFjq7RSvP.jpeg","package":{"id":46,"order_type_id":12,"name":"Dano Milk","description":"Dano Milk 360g refill is available for ₦1,200 only.","price":1200,"image":"uqVXT7o03u1FLtMeKHi6HNnUFlQ41qqjFjq7RSvP.jpeg","slug":"dano-milk-ejri9x4b","active":1,"created_at":"2020-06-01 07:37:21","updated_at":"2021-02-19 11:47:31","company_id":1,"unit":"360g","short_description":"Dano Milk 360g refill is available for ₦1,200 only.","allowed_minimum_units":5,"package_restock":0,"featured":0,"discount":0,"available_units":10}}]

class Data {
  int _userId;
  List<Orders> _orders;

  int get userId => _userId;
  List<Orders> get orders => _orders;

  Data({
      int userId, 
      List<Orders> orders}){
    _userId = userId;
    _orders = orders;
}

  Data.fromJson(dynamic json) {
    _userId = json["user_id"];
    if (json["orders"] != null) {
      _orders = [];
      json["orders"].forEach((v) {
        _orders.add(Orders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["user_id"] = _userId;
    if (_orders != null) {
      map["orders"] = _orders.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 2834
/// package_id : 43
/// user_id : 2
/// weight : 1
/// quantity : 1
/// payment_id : null
/// status_id : 3
/// created_at : "2020-11-09 10:35:12"
/// updated_at : "2020-11-09 10:35:12"
/// product_list : null
/// order_number : "EKO-JUL1W"
/// price : 23000
/// name : "Awoof Package"
/// discounted_price : 22080
/// discount : 4
/// order_type_id : 6
/// image : "https://staging-app.foods.farmcrowdy.com/storage/PZzvAzOccHVDefm58WzgSPLi9tIGWPH9i8gauItX.jpeg"
/// package : {"id":43,"order_type_id":6,"name":"Awoof Package","description":"Onions (Red) - 1kg\nTatashe and Rodo - 1kg\nTomato- 1kg \nGarri (White) - 1kg\nRice - 3kg\nBeans (Honey) - 3kg\nSweet potato - 3kg\nChicken breast and lap - 3kg\nGoat meat (4 person share) \nPower oil (75cl)\nDano Refill - 360g \nMilo Refill - 500g\nIndomie Noodles - Carton of 40.","price":23000,"image":"PZzvAzOccHVDefm58WzgSPLi9tIGWPH9i8gauItX.jpeg","slug":"awoof-package-5pdyg1bu","active":1,"created_at":"2020-05-25 13:07:33","updated_at":"2021-03-04 08:36:07","company_id":1,"unit":"1","short_description":"Available for ₦23,000 only.","allowed_minimum_units":5,"package_restock":0,"featured":0,"discount":4,"available_units":7}

class Orders {
  int _id;
  int _packageId;
  int _userId;
  int _weight;
  int _quantity;
  dynamic _paymentId;
  int _statusId;
  String _createdAt;
  String _updatedAt;
  dynamic _productList;
  String _orderNumber;
  dynamic _price;
  String _name;
  dynamic _discountedPrice;
  dynamic _discount;
  dynamic _orderTypeId;
  String _image;
  Package _package;

  int get id => _id;
  int get packageId => _packageId;
  int get userId => _userId;
  int get weight => _weight;
  int get quantity => _quantity;
  dynamic get paymentId => _paymentId;
  int get statusId => _statusId;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  dynamic get productList => _productList;
  String get orderNumber => _orderNumber;
  dynamic get price => _price;
  String get name => _name;
  dynamic get discountedPrice => _discountedPrice;
  dynamic get discount => _discount;
  int get orderTypeId => _orderTypeId;
  String get image => _image;
  Package get package => _package;

  Orders({
      int id, 
      int packageId, 
      int userId, 
      int weight, 
      int quantity, 
      dynamic paymentId, 
      int statusId, 
      String createdAt, 
      String updatedAt, 
      dynamic productList, 
      String orderNumber,
    dynamic price,
      String name,
    dynamic discountedPrice,
    dynamic discount,
      int orderTypeId, 
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
    _price = price;
    _name = name;
    _discountedPrice = discountedPrice;
    _discount = discount;
    _orderTypeId = orderTypeId;
    _image = image;
    _package = package;
}

  Orders.fromJson(dynamic json) {
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
    _price = json["price"];
    _name = json["name"];
    _discountedPrice = json["discounted_price"];
    _discount = json["discount"];
    _orderTypeId = json["order_type_id"];
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
    map["price"] = _price;
    map["name"] = _name;
    map["discounted_price"] = _discountedPrice;
    map["discount"] = _discount;
    map["order_type_id"] = _orderTypeId;
    map["image"] = _image;
    if (_package != null) {
      map["package"] = _package.toJson();
    }
    return map;
  }

}

/// id : 43
/// order_type_id : 6
/// name : "Awoof Package"
/// description : "Onions (Red) - 1kg\nTatashe and Rodo - 1kg\nTomato- 1kg \nGarri (White) - 1kg\nRice - 3kg\nBeans (Honey) - 3kg\nSweet potato - 3kg\nChicken breast and lap - 3kg\nGoat meat (4 person share) \nPower oil (75cl)\nDano Refill - 360g \nMilo Refill - 500g\nIndomie Noodles - Carton of 40."
/// price : 23000
/// image : "PZzvAzOccHVDefm58WzgSPLi9tIGWPH9i8gauItX.jpeg"
/// slug : "awoof-package-5pdyg1bu"
/// active : 1
/// created_at : "2020-05-25 13:07:33"
/// updated_at : "2021-03-04 08:36:07"
/// company_id : 1
/// unit : "1"
/// short_description : "Available for ₦23,000 only."
/// allowed_minimum_units : 5
/// package_restock : 0
/// featured : 0
/// discount : 4
/// available_units : 7

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