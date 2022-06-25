
// class OfferModel {
//   String status;
//   String id;
//   String type;
//   Attributes attributes;

//   OfferModel({this.status, this.id, this.type, this.attributes});

//   OfferModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     id = json['id'];
//     type = json['type'];
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
//   String status;
//   User user;
//   Product product;
//   String state;
//   String localGovernment;
//   String quantity;
//   String quantityUnit;
//   String minimumOfferQuantity;
//   String minimumOfferQuantityUnit;
//   int offerPrice;
//   Currency currency;
//   String filePath;
//   String createdAt;
//   String updatedAt;

//   Attributes(
//       {this.status,
//         this.user,
//         this.product,
//         this.state,
//         this.localGovernment,
//         this.quantity,
//         this.quantityUnit,
//         this.minimumOfferQuantity,
//         this.minimumOfferQuantityUnit,
//         this.offerPrice,
//         this.currency,
//         this.filePath,
//         this.createdAt,
//         this.updatedAt});

//   Attributes.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//     product =
//     json['products'] != null ? new Product.fromJson(json['products']) : null;
//     state = json['state'];
//     localGovernment = json['local_government'];
//     quantity = json['quantity'];
//     quantityUnit = json['quantity_unit'];
//     minimumOfferQuantity = json['minimum_offer_quantity'];
//     minimumOfferQuantityUnit = json['minimum_offer_quantity_unit'];
//     offerPrice = json['offer_price'];
//     currency = json['currency'] != null
//         ? new Currency.fromJson(json['currency'])
//         : null;
//     filePath = json['file_path'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.user != null) {
//       data['user'] = this.user.toJson();
//     }
//     if (this.product != null) {
//       data['products'] = this.product.toJson();
//     }
//     data['state'] = this.state;
//     data['local_government'] = this.localGovernment;
//     data['quantity'] = this.quantity;
//     data['quantity_unit'] = this.quantityUnit;
//     data['minimum_offer_quantity'] = this.minimumOfferQuantity;
//     data['minimum_offer_quantity_unit'] = this.minimumOfferQuantityUnit;
//     data['offer_price'] = this.offerPrice;
//     if (this.currency != null) {
//       data['currency'] = this.currency.toJson();
//     }
//     data['file_path'] = this.filePath;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }

// class User {
//   int id;
//   String email;
//   String phone;
//   Null emailVerifiedAt;
//   String userType;
//   String createdAt;
//   String updatedAt;
//   String firstName;
//   String lastName;
//   int countryId;
//   int roleId;
//   Null profileImageUrl;
//   Null productId;

//   User(
//       {this.id,
//         this.email,
//         this.phone,
//         this.emailVerifiedAt,
//         this.userType,
//         this.createdAt,
//         this.updatedAt,
//         this.firstName,
//         this.lastName,
//         this.countryId,
//         this.roleId,
//         this.profileImageUrl,
//         this.productId});

//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     email = json['email'];
//     phone = json['phone'];
//     emailVerifiedAt = json['email_verified_at'];
//     userType = json['user_type'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     countryId = json['country_id'];
//     roleId = json['role_id'];
//     profileImageUrl = json['profile_image_url'];
//     productId = json['product_id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['email_verified_at'] = this.emailVerifiedAt;
//     data['user_type'] = this.userType;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['first_name'] = this.firstName;
//     data['last_name'] = this.lastName;
//     data['country_id'] = this.countryId;
//     data['role_id'] = this.roleId;
//     data['profile_image_url'] = this.profileImageUrl;
//     data['product_id'] = this.productId;
//     return data;
//   }
// }

// class Product {
//   int id;
//   String name;
//   int productTypeId;
//   String imagePath;
//   Null createdAt;
//   Null updatedAt;

//   Product(
//       {this.id,
//         this.name,
//         this.productTypeId,
//         this.imagePath,
//         this.createdAt,
//         this.updatedAt});

//   Product.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     productTypeId = json['product_type_id'];
//     imagePath = json['image_path'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
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
//   Null createdAt;
//   Null updatedAt;

//   Currency({this.id, this.name, this.symbol, this.createdAt, this.updatedAt});

//   Currency.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     symbol = json['symbol'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
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