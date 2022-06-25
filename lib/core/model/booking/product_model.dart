// class ProductModel {
//   String status;
//   String id;
//   String type;
//   Attributes attributes;

//   ProductModel({this.status, this.id, this.type, this.attributes});

//   ProductModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'] != null ? json['status'] : null;
//     id = json['id'] != null ? json['id'] : null;
//     type = json['type'] != null ? json['type'] : null;
//     attributes = json['attributes'] != null
//         ? new Attributes.fromJson(json['attributes'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.status != null) data['status'] = this.status;

//     if (this.id != null) data['id'] = this.id;

//     if (this.type != null) data['type'] = this.type;

//     if (this.attributes != null) {
//       data['attributes'] = this.attributes.toJson();
//     }
//     return data;
//   }
// }

// class Attributes {
//   String status;
//   String filePath;
//   String quantity;
//   int demandPrice;
//   String deliveryAddress;
//   String deliveryDate;
//   String additionalInformation;
//   User user;
//   Product product;
//   Unit unit;
//   Unit currency;
//   String createdAt;
//   String updatedAt;

//   Attributes(
//       {this.status,
//       this.filePath,
//       this.quantity,
//       this.demandPrice,
//       this.deliveryAddress,
//       this.deliveryDate,
//       this.additionalInformation,
//       this.user,
//       this.product,
//       this.unit,
//       this.currency,
//       this.createdAt,
//       // this.updatedAt
//       });

//   Attributes.fromJson(Map<String, dynamic> json) {
//     status =  json['status'] != null ? json['status'] : null;
//     filePath = json['file_path'] != null ? json['file_path'] : null;
//     quantity = json['quantity'] != null ? json['quantity'] : null;
//     demandPrice = json['demand_price'] != null ?json['demand_price'] : null;
//     deliveryAddress = json['delivery_address'] != null ? json['delivery_address'] : null;
//     deliveryDate =  json['delivery_date'] != null ?json['delivery_date'] : null;
//     additionalInformation = json['additional_information'] != null ?json['additional_information'] : null;
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//     product = json['products'] != null ? new Product.fromJson(json['products']) : null;
//     unit = json['unit'] != null ? new Unit.fromJson(json['unit']) : null;
//     currency = json['currency'] != null ? new Unit.fromJson(json['currency']) : null;
//     createdAt = json['created_at'] != null ? json['created_at'] : null;
//     updatedAt =  json['updated_at'] != null ? json['updated_at'] : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.status != null)
//     data['status'] = this.status;

//     if (this.filePath != null)
//     data['file_path'] = this.filePath;

//     if (this.quantity != null)
//     data['quantity'] = this.quantity;

//     if (this.demandPrice != null)
//     data['demand_price'] = this.demandPrice;

//     if (this.deliveryAddress != null)
//     data['delivery_address'] = this.deliveryAddress;

//     if (this.deliveryDate != null)
//     data['delivery_date'] = this.deliveryDate;

//     if (this.additionalInformation != null)
//     data['additional_information'] = this.additionalInformation;

//     if (this.user != null)
//       data['user'] = this.user.toJson();

//     if (this.product != null)
//       data['products'] = this.product.toJson();

//     if (this.unit != null)
//       data['unit'] = this.unit.toJson();

//     if (this.currency != null)
//       data['currency'] = this.currency.toJson();


//     if (this.createdAt != null)
//     data['created_at'] = this.createdAt;

//     if (this.updatedAt != null)
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }

// class User {
//   int id;
//   String email;
//   String phone;
//   String emailVerifiedAt;
//   String userType;
//   String createdAt;
//   String updatedAt;
//   String firstName;
//   String lastName;
//   int countryId;
//   int roleId;
//   String profileImageUrl;
//   String productId;

//   User(
//       {this.id,
//       this.email,
//       this.phone,
//       this.emailVerifiedAt,
//       this.userType,
//       this.createdAt,
//       this.updatedAt,
//       this.firstName,
//       this.lastName,
//       this.countryId,
//       this.roleId,
//       this.profileImageUrl,
//       this.productId});

//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'] != null ? json['id'] : null;
//     email = json['email'] != null ? json['email'] : null;
//     phone = json['status'] != null ? json['status'] : null;
//     emailVerifiedAt = json['email_verified_at'] != null ? json['email_verified_at'] : null;
//     userType = json['user_type'] != null ? json['user_type'] : null;
//     // createdAt =json['created_at'] != null ? json['created_at'] : null;
//     // updatedAt = json['updated_at'] != null ? json['updated_at'] : null;
//     firstName =json['first_name'] != null ? json['first_name'] : null;
//     lastName = json['last_name'] != null ? json['last_name'] : null;
//     countryId = json['country_id'] != null ? json['country_id'] : null;
//     roleId = json['role_id'] != null ? json['role_id'] : null;
//     profileImageUrl = json['profile_image_url'] != null ? json['profile_image_url'] : null;
//     productId = json['product_id'] != null ? json['product_id'] : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();

//     if (this.id != null)
//     data['id'] = this.id;

//     if (this.email != null)
//     data['email'] = this.email;

//     if (this.phone != null)
//     data['phone'] = this.phone;

//     if (this.emailVerifiedAt != null)
//     data['email_verified_at'] = this.emailVerifiedAt;

//     if (this.userType != null)
//     data['user_type'] = this.userType;

//     if (this.createdAt != null)
//     data['created_at'] = this.createdAt;

//     if (this.updatedAt != null)
//     data['updated_at'] = this.updatedAt;

//     if (this.firstName != null)
//     data['first_name'] = this.firstName;

//     if (this.lastName != null)
//     data['last_name'] = this.lastName;

//     if (this.countryId != null)
//     data['country_id'] = this.countryId;

//     if (this.roleId != null)
//     data['role_id'] = this.roleId;

//     if (this.profileImageUrl != null)
//     data['profile_image_url'] = this.profileImageUrl;

//     if (this.productId != null)
//     data['product_id'] = this.productId;
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
//       this.name,
//       this.productTypeId,
//       this.imagePath,
//       this.createdAt,
//       this.updatedAt
//       });

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
//     if (this.id != null)
//     data['id'] = this.id;

//     if (this.name != null)
//     data['name'] = this.name;

//     if (this.productTypeId != null)
//     data['product_type_id'] = this.productTypeId;

//     if (this.imagePath != null)
//     data['image_path'] = this.imagePath;

//     if (this.createdAt != null)
//     data['created_at'] = this.createdAt;

//     if (this.updatedAt != null)
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }

// class Unit {
//   int id;
//   String name;
//   String symbol;
//   String createdAt;
//   String updatedAt;

//   Unit({this.id, this.name, this.symbol,
//     this.createdAt, this.updatedAt
//   });

//   Unit.fromJson(Map<String, dynamic> json) {
//     id =  json['id'] != null ? json['id'] : null;
//     name =  json['name'] != null ? json['name'] : null;
//     symbol =  json['symbol'] != null ? json['symbol'] : null;
//     createdAt = json['created_at'] != null ? json['created_at'] : null;
//     updatedAt = json['updated_at'] != null ? json['updated_at'] : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();

//     if (this.id != null)
//     data['id'] = this.id;

//     if (this.name != null)
//     data['name'] = this.name;

//     if (this.symbol != null)
//     data['symbol'] = this.symbol;

//     if (this.createdAt != null)
//     data['created_at'] = this.createdAt;

//     if (this.updatedAt != null)
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
