class EndAndReactivateBidsModel {
  String _id;


  EndAndReactivateBidsModel(String id) {
    _id = id;
  }

  EndAndReactivateBidsModel.fromJson(dynamic json) {
    _id = json["id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    return map;
  }

}