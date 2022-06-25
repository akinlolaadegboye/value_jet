// class EditOfferModel {

//   String _productId;
//   String _quantityUnit;
//   String _currencyId;
//   String _state;
//   String _localGovernment;
//   String _quantity;
//   String _minimumOfferQuantity;
//   String _offerPrice;
//   String _minimumOfferQuantityUnit;

//   EditOfferModel({
//     String productId,
//     String quantityUnit,
//     String currencyId,
//     String state,
//     String localGovernmentArea,
//     String requestType,
//     String quantity,
//     String minimumOrderQuantity,
//     String pricePerQuantity,
//     String minimumOrderQuantityUnit,
//   }){
//     _productId = productId;
//     _quantityUnit = quantityUnit;
//     _currencyId = currencyId;
//     _state = state;
//     _localGovernment = localGovernmentArea;
//     _quantity  = quantity;
//     _minimumOfferQuantity = minimumOrderQuantity;
//     _offerPrice  = pricePerQuantity;
//     _minimumOfferQuantityUnit  = minimumOrderQuantityUnit;
//   }



//   EditOfferModel.fromJson(dynamic json) {
//     _productId = json["product_id"];
//     _quantityUnit = json["quantity_unit"];
//     _currencyId = json["currency_id"];
//     _state = json["state"];
//     _localGovernment = json["local_government"];
//     _quantity  = json["quantity"];
//     _minimumOfferQuantity = json["minimum_offer_quantity"];
//     _offerPrice  = json["offer_price"];
//     _minimumOfferQuantityUnit  = json["minimum_offer_quantity_unit"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["product_id"] = _productId;
//     map["quantity_unit"] = _quantityUnit;
//     map["currency_id"] = _currencyId;
//     map["state"] = _state;
//     map["local_government"] = _localGovernment;
//     map["quantity"] = _quantity;
//     map["minimum_offer_quantity"] = _minimumOfferQuantity;
//     map["offer_price"] = _offerPrice;
//     map["minimum_offer_quantity_unit"] = _minimumOfferQuantityUnit;
//     return map;
//   }

// }