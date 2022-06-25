
// class CreateOfferModel {

//   String _productId;
//   String _quantityUnit;
//   String _currencyId;
//   String _state;
//   String _localGovernment;
//   String _quantity;
//   String _minimumOrderQuantity;
//   String _pricePerQuantity;
//   String _minimumOrderQuantityUnit;

//   String get productId => _productId;
//   String get quantityUnit => _quantityUnit;
//   String get currencyId => _currencyId;
//   String get state => _state;
//   String get localGovernmentArea => _localGovernment;
//   String get quantity => _quantity;
//   String get minimumOrderQuantity => _minimumOrderQuantity;
//   String get pricePerQuantity => _pricePerQuantity;
//   String get minimumOrderQuantityUnit => _minimumOrderQuantityUnit;

//   CreateOfferModel({
//     String productId,
//     String quantityUnit,
//     String currencyId,
//     String state,
//     String localGovernment,
//     String requestType,
//     String quantity,
//     String minimumOrderQuantity,
//     String pricePerQuantity,
//     String minimumOrderQuantityUnit,
//     // String imagePath
//   }){
//     _productId = productId;
//     _quantityUnit = quantityUnit;
//     _currencyId = currencyId;
//     _state = state;
//     _localGovernment = localGovernment;
//     _quantity  = quantity;
//     _minimumOrderQuantity = minimumOrderQuantity;
//     _pricePerQuantity  = pricePerQuantity;
//     _minimumOrderQuantityUnit  = minimumOrderQuantityUnit;
//   }

//   CreateOfferModel.fromJson(dynamic json) {
//     _productId = json["product_id"];
//     _quantityUnit = json["quantity_unit"];
//     _currencyId = json["currency_id"];
//     _state = json["state"];
//     _localGovernment = json["local_government"];
//     _quantity  = json["quantity"];
//     _minimumOrderQuantity = json["minimum_offer_quantity"];
//     _pricePerQuantity  = json["offer_price"];
//     _minimumOrderQuantityUnit  = json["minimum_offer_quantity_unit"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["product_id"] = _productId;
//     map["quantity_unit"] = _quantityUnit;
//     map["currency_id"] = _currencyId;
//     map["state"] = _state;
//     map["local_government"] = _localGovernment;
//     map["quantity"] = _quantity;
//     map["minimum_offer_quantity"] = _minimumOrderQuantity;
//     map["offer_price"] = _pricePerQuantity;
//     map["minimum_offer_quantity_unit"] = _minimumOrderQuantityUnit;
//     return map;
//   }

// }