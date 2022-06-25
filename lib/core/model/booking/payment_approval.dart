/// phonenumber : "+250788765400"
/// currency : "RWF"
/// amount : "+30"
/// name : "+250788765400"
/// status : ""
/// reference : "+250788765400"

class PaymentApproval {
  String _phonenumber;
  String _currency;
  String _amount;
  String _name;
  String _status;
  String _reference;

  String get phonenumber => _phonenumber;
  String get currency => _currency;
  String get amount => _amount;
  String get name => _name;
  String get status => _status;
  String get reference => _reference;

  PaymentApproval({
      String phonenumber, 
      String currency, 
      String amount, 
      String name, 
      String status, 
      String reference}){
    _phonenumber = phonenumber;
    _currency = currency;
    _amount = amount;
    _name = name;
    _status = status;
    _reference = reference;
}

  PaymentApproval.fromJson(dynamic json) {
    _phonenumber = json["phonenumber"];
    _currency = json["currency"];
    _amount = json["amount"];
    _name = json["name"];
    _status = json["status"];
    _reference = json["reference"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["phonenumber"] = _phonenumber;
    map["currency"] = _currency;
    map["amount"] = _amount;
    map["name"] = _name;
    map["status"] = _status;
    map["reference"] = _reference;
    return map;
  }

}