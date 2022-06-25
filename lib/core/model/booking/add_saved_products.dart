
class AddSavedProducts{
  String _id;

  String get phoneNumber => _id;

  AddSavedProducts(
    String id
  ){
    _id = id;
  }

  AddSavedProducts.fromJson(dynamic json) {
    _id = json["id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    return map;
  }

}