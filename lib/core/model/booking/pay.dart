/// phonenumber : "+80000000001"
/// currency : "RWF"
/// amount : "30"

class Pay {
  String _phonenumber;
  String _currency;
  double _amount;

  String get phonenumber => _phonenumber;
  String get currency => _currency;
  double get amount => _amount;

  Pay({
      String phonenumber, 
      String currency,
    double amount}){
    _phonenumber = phonenumber;
    _currency = currency;
    _amount = amount;
}

  Pay.fromJson(dynamic json) {
    _phonenumber = json["phonenumber"];
    _currency = json["currency"];
    _amount = json["amount"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["phonenumber"] = _phonenumber;
    map["currency"] = _currency;
    map["amount"] = _amount;
    return map;
  }

}