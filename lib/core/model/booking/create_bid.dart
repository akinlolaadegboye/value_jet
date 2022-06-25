class CreateBidModel {

  String _orderId;
  String _quantityUnit;
  String _currencyId;
  String _state;
  String _localGovernmentArea;
  String _quantity;
  String _minimumOrderQuantity;
  String _pricePerQuantity;
  String _minimumOrderQuantityUnit;

  CreateBidModel({
    String orderId,
    String quantityUnit,
    String currencyId,
    String state,
    String localGovernmentArea,
    String requestType,
    String quantity,
    String minimumOrderQuantity,
    String pricePerQuantity,
    String minimumOrderQuantityUnit,
  }){
    _orderId = orderId;
    _quantityUnit = quantityUnit;
    _currencyId = currencyId;
    _state = state;
    _localGovernmentArea = localGovernmentArea;
    _quantity  = quantity;
    _minimumOrderQuantity = minimumOrderQuantity;
    _pricePerQuantity  = pricePerQuantity;
    _minimumOrderQuantityUnit  = minimumOrderQuantityUnit;
  }



  CreateBidModel.fromJson(dynamic json) {
     _orderId = json["order_id"];
     _quantityUnit = json["quantity_unit"];
     _currencyId = json["currency_id"];
     _state = json["state"];
     _localGovernmentArea = json["local_government_area"];
     _quantity  = json["quantity"];
     _minimumOrderQuantity = json["minimum_order_quantity"];
     _pricePerQuantity  = json["price_per_quantity"];
     _minimumOrderQuantityUnit  = json["minimum_order_quantity_unit"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["order_id"] = _orderId;
    map["quantity_unit"] = _quantityUnit;
    map["currency_id"] = _currencyId;
    map["state"] = _state;
    map["local_government_area"] = _localGovernmentArea;
    map["quantity"] = _quantity;
    map["minimum_order_quantity"] = _minimumOrderQuantity;
    map["price_per_quantity"] = _pricePerQuantity;
    map["minimum_order_quantity_unit"] = _minimumOrderQuantityUnit;
    return map;
  }

}