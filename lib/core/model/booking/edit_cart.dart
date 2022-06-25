/// user_id : 12
/// package_id : 12
/// quantity : 12

class EditCart {
  int _userId;
  int _packageId;
  int _quantity;
  int _weight;
  int _statusId;

  int get userId => _userId;
  int get packageId => _packageId;
  int get quantity => _quantity;
  int get weight => _weight;
  int get statusId => _statusId;

  EditCart({
      int userId, 
      int packageId, 
      int quantity,
    int weight,
    int statusId,



  }){
    _userId = userId;
    _packageId = packageId;
    _quantity = quantity;
    _weight = weight;
    _statusId = statusId;
}

  EditCart.fromJson(dynamic json) {
    _userId = json["user_id"];
    _packageId = json["package_id"];
    _quantity = json["quantity"];
    _weight = json["weight"];
    _statusId= json["status_id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["user_id"] = _userId;
    map["package_id"] = _packageId;
    map["quantity"] = _quantity;
    map["weight"] = _weight;
    map["status_id"] = _statusId;
    return map;
  }

}