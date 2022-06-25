// class CurrencyModel {
//   String status;
//   String id;
//   String type;
//   Attributes attributes;

//   CurrencyModel({this.status, this.id, this.type, this.attributes});

//   CurrencyModel.fromJson(Map<String, dynamic> json) {
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
//   String name;
//   String symbol;
//   Null createdAt;
//   Null updatedAt;

//   Attributes({this.name, this.symbol, this.createdAt, this.updatedAt});

//   Attributes.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     symbol = json['symbol'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['symbol'] = this.symbol;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }