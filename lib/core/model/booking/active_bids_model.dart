// class ActiveBidsModel {
//   String status;
//   String id;
//   String type;
//   Attributes attributes;
//   ActiveBidsModel({this.status, this.id, this.type, this.attributes});

//   ActiveBidsModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'] != null ? json['status'] : null;
//     id = json['id'] != null ? json['id'] :null;
//     type = json['type'] != null ? json['type'] : null;
//     attributes = json['attributes'] != null
//         ? new Attributes.fromJson(json['attributes'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['id'] = this.id;
//     data['type'] = this.type;
//     if (this.attributes != null) {
//       data['attributes'] = this.attributes.toJson();
//     }
//     return data;
//   }
// }

// class Attributes {
//   int userId;
//   int orderId;
//   Product product;
//   String state;
//   String localGovernmentArea;
//   String quantity;
//   String quantityUnit;
//   String minimumOrderQuantity;
//   String minimumOrderQuantityUnit;
//   String pricePerQuantity;
//   Currency currency;
//   String status;
//   String createdAt;
//   String updatedAt;

//   Attributes(
//       {this.userId,
//         this.orderId,
//         this.product,
//         this.state,
//         this.localGovernmentArea,
//         this.quantity,
//         this.quantityUnit,
//         this.minimumOrderQuantity,
//         this.minimumOrderQuantityUnit,
//         this.pricePerQuantity,
//         this.currency,
//         this.status,
//         this.createdAt,
//         this.updatedAt});

//   Attributes.fromJson(Map<String, dynamic> json) {
//     userId = json['user_id'] != null ? json['user_id'] : null;
//     orderId = json['order_id'] != null ? json['order_id'] : null;
//     product =
//     json['products'] != null ? new Product.fromJson(json['products']) : null;
//     state = json['state'] != null ? json['state'] : null;
//     localGovernmentArea = json['local_government_area'] != null ? json['local_government_area'] : null ;
//     quantity = json['quantity'] != null ? json['quantity'] : null ;
//     quantityUnit = json['quantity_unit'] != null ? json['quantity_unit'] : null;
//     minimumOrderQuantity = json['minimum_order_quantity'] != null ? json['minimum_order_quantity'] : null;
//     minimumOrderQuantityUnit = json['minimum_order_quantity_unit'] != null ? json['minimum_order_quantity_unit'] : null;
//     pricePerQuantity = json['price_per_quantity'] != null ? json['price_per_quantity'] : null;
//     currency = json['currency'] != null
//         ? new Currency.fromJson(json['currency'])
//         : null;
//     status = json['status'] != null ? json['status'] : null;
//     createdAt = json['created_at'] != null ?  json['created_at'] : null;
//     updatedAt = json['updated_at'] != null ? json['updated_at'] : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['user_id'] = this.userId;
//     data['order_id'] = this.orderId;
//     if (this.product != null) {
//       data['products'] = this.product.toJson();
//     }
//     data['state'] = this.state;
//     data['local_government_area'] = this.localGovernmentArea;
//     data['quantity'] = this.quantity;
//     data['quantity_unit'] = this.quantityUnit;
//     data['minimum_order_quantity'] = this.minimumOrderQuantity;
//     data['minimum_order_quantity_unit'] = this.minimumOrderQuantityUnit;
//     data['price_per_quantity'] = this.pricePerQuantity;
//     if (this.currency != null) {
//       data['currency'] = this.currency.toJson();
//     }
//     data['status'] = this.status;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }

// class Product {
//   int id;
//   String name;
//   int productTypeId;
//   String imagePath;
//   String createdAt;
//   String updatedAt;

//   Product(
//       {this.id,
//         this.name,
//         this.productTypeId,
//         this.imagePath,
//         this.createdAt,
//         this.updatedAt});

//   Product.fromJson(Map<String, dynamic> json) {
//     id = json['id'] != null ? json['id'] : null;
//     name = json['name'] != null ? json['name'] : null;
//     productTypeId = json['product_type_id'] != null ? json['product_type_id'] : null;
//     imagePath = json['image_path'] != null ? json['image_path'] : null;
//     createdAt = json['created_at'] != null ? json['created_at'] : null;
//     updatedAt = json['updated_at'] != null ? json['updated_at'] : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['product_type_id'] = this.productTypeId;
//     data['image_path'] = this.imagePath;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }

// class Currency {
//   int id;
//   String name;
//   String symbol;
//   String createdAt;
//   String updatedAt;

//   Currency({this.id, this.name, this.symbol, this.createdAt, this.updatedAt});

//   Currency.fromJson(Map<String, dynamic> json) {
//     id = json['id'] != null ? json['id'] : null;
//     name = json['name'] != null ? json['name'] : null;
//     symbol = json['symbol'] != null ? json['symbol'] : null;
//     createdAt = json['created_at'] != null ? json['created_at'] : null;
//     updatedAt = json['updated_at'] != null ? json['updated_at'] : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['symbol'] = this.symbol;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }