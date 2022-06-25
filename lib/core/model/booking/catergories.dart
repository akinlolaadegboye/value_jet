// /// status : true
// /// message : "Categories retrieved successfully."
// /// data : {"categories":[{"id":1,"name":"Meat and Poultry","image":"https://staging-app.foods.farmcrowdy.com/storage/5Iu3UnQruh9dQsgnKGrM9gRY0m4k9xv2RsrHG1wi.jpeg","slug":"meat-and-poultry-dfhiqucv","description":"This contains cow meat, goat meat and chicken","created_at":null,"updated_at":"2021-02-19 11:47:33","featured":1,"position":2},{"id":2,"name":"Fresh Fruits and Vegetables","image":"https://staging-app.foods.farmcrowdy.com/storage/yWKyfPHByYPMzzPkKoIJb81KOMwSQ0QoMHFpQHJP.jpeg","slug":"fresh-fruits-and-vegetables-ywp1idfm","description":null,"created_at":null,"updated_at":"2021-02-19 11:47:33","featured":1,"position":4},{"id":3,"name":"Grains and Tuber","image":"https://staging-app.foods.farmcrowdy.com/storage/rtcZcONRZpZXUA5W8X8lMQ1yUf7suGFq2lymu1up.jpeg","slug":"grains-and-tuber-7lptsy3s","description":"This contains processed whole rice grains, beans and yam tubers.","created_at":"2020-04-04 14:05:08","updated_at":"2021-02-19 11:47:33","featured":1,"position":5},{"id":4,"name":"Seafood","image":"https://staging-app.foods.farmcrowdy.com/storage/TZMRYaUKpE9VMIztVdqYBsDhWgoSWS6nd6Nr6J21.jpeg","slug":"seafood-ymvefwte","description":"Seafood includes fin and groundfish (haddock, plaice, cod, tuna), gastropods (periwinkles, sea-snails), crustacean shellfish (crab, lobster, shrimp), etc.","created_at":"2020-04-06 10:07:49","updated_at":"2021-02-19 11:47:33","featured":1,"position":3},{"id":5,"name":"Oils","image":"https://staging-app.foods.farmcrowdy.com/storage/usKqw4vTWg2EDRB29BOhQyVicQKX245ruQ7hCHCm.jpeg","slug":"oils-3gmzzw4l","description":"This contains vegetable oil and palm oil","created_at":"2020-04-06 11:01:23","updated_at":"2021-02-19 11:47:33","featured":1,"position":6},{"id":6,"name":"Bundle Packages","image":"https://staging-app.foods.farmcrowdy.com/storage/hkXsLOvBUR6rcSZvU4s1etb1UMPyDVcZrB6xHIiK.jpeg","slug":"bundle-packages-i4g8w1nc","description":null,"created_at":"2020-05-25 12:36:08","updated_at":"2021-02-19 11:47:33","featured":1,"position":1},{"id":8,"name":"Spices","image":"https://staging-app.foods.farmcrowdy.com/storage/z1StdABk2Yjyk4dQZ62vOh2dH00YbYNb96UTANxP.jpeg","slug":"spices-f9km5s5v","description":null,"created_at":"2020-06-01 07:48:14","updated_at":"2021-02-19 11:47:33","featured":1,"position":7},{"id":9,"name":"Dry Foods","image":"https://staging-app.foods.farmcrowdy.com/storage/yxy1PTPDBllPJF0bHSx3GOP5HLGIbN4QZBqxRbdX.jpeg","slug":"dry-foods-cpjfjxe9","description":null,"created_at":"2020-07-14 10:58:15","updated_at":"2021-02-19 11:47:33","featured":1,"position":9},{"id":10,"name":"Pasta","image":"https://staging-app.foods.farmcrowdy.com/storage/S2hCnjDWvV53cL3QbRNubJEpFO1wDMbZBbuWcDH8.jpeg","slug":"pasta-q0xcbhoh","description":null,"created_at":"2020-07-14 11:00:41","updated_at":"2021-02-19 11:47:33","featured":1,"position":10},{"id":11,"name":"Canned Foods","image":"https://staging-app.foods.farmcrowdy.com/storage/EGb9W0aSArZ8VjkvSMxiO7yYDDNfjT4QvFthVNeV.jpeg","slug":"canned-foods-atjfhtis","description":null,"created_at":"2020-07-14 11:16:36","updated_at":"2021-02-19 11:47:33","featured":1,"position":11},{"id":12,"name":"Beverage and Cereals","image":"https://staging-app.foods.farmcrowdy.com/storage/kf1bGmw8NWLRYe4VoUfZhz2QyWbIQ0NoMwTStsQ5.jpeg","slug":"beverage-and-cereals-ak2ixjao","description":null,"created_at":"2020-08-18 07:08:02","updated_at":"2021-02-19 11:47:33","featured":1,"position":7}]}
//
// class Catergories {
//   bool _status;
//   String _message;
//   Data _data;
//
//   bool get status => _status;
//   String get message => _message;
//   Data get data => _data;
//
//   Catergories({
//       bool status,
//       String message,
//       Data data}){
//     _status = status;
//     _message = message;
//     _data = data;
// }
//
//   Catergories.fromJson(dynamic json) {
//     _status = json["status"];
//     _message = json["message"];
//     _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["status"] = _status;
//     map["message"] = _message;
//     if (_data != null) {
//       map["data"] = _data.toJson();
//     }
//     return map;
//   }
//
// }
//
// /// categories : [{"id":1,"name":"Meat and Poultry","image":"https://staging-app.foods.farmcrowdy.com/storage/5Iu3UnQruh9dQsgnKGrM9gRY0m4k9xv2RsrHG1wi.jpeg","slug":"meat-and-poultry-dfhiqucv","description":"This contains cow meat, goat meat and chicken","created_at":null,"updated_at":"2021-02-19 11:47:33","featured":1,"position":2},{"id":2,"name":"Fresh Fruits and Vegetables","image":"https://staging-app.foods.farmcrowdy.com/storage/yWKyfPHByYPMzzPkKoIJb81KOMwSQ0QoMHFpQHJP.jpeg","slug":"fresh-fruits-and-vegetables-ywp1idfm","description":null,"created_at":null,"updated_at":"2021-02-19 11:47:33","featured":1,"position":4},{"id":3,"name":"Grains and Tuber","image":"https://staging-app.foods.farmcrowdy.com/storage/rtcZcONRZpZXUA5W8X8lMQ1yUf7suGFq2lymu1up.jpeg","slug":"grains-and-tuber-7lptsy3s","description":"This contains processed whole rice grains, beans and yam tubers.","created_at":"2020-04-04 14:05:08","updated_at":"2021-02-19 11:47:33","featured":1,"position":5},{"id":4,"name":"Seafood","image":"https://staging-app.foods.farmcrowdy.com/storage/TZMRYaUKpE9VMIztVdqYBsDhWgoSWS6nd6Nr6J21.jpeg","slug":"seafood-ymvefwte","description":"Seafood includes fin and groundfish (haddock, plaice, cod, tuna), gastropods (periwinkles, sea-snails), crustacean shellfish (crab, lobster, shrimp), etc.","created_at":"2020-04-06 10:07:49","updated_at":"2021-02-19 11:47:33","featured":1,"position":3},{"id":5,"name":"Oils","image":"https://staging-app.foods.farmcrowdy.com/storage/usKqw4vTWg2EDRB29BOhQyVicQKX245ruQ7hCHCm.jpeg","slug":"oils-3gmzzw4l","description":"This contains vegetable oil and palm oil","created_at":"2020-04-06 11:01:23","updated_at":"2021-02-19 11:47:33","featured":1,"position":6},{"id":6,"name":"Bundle Packages","image":"https://staging-app.foods.farmcrowdy.com/storage/hkXsLOvBUR6rcSZvU4s1etb1UMPyDVcZrB6xHIiK.jpeg","slug":"bundle-packages-i4g8w1nc","description":null,"created_at":"2020-05-25 12:36:08","updated_at":"2021-02-19 11:47:33","featured":1,"position":1},{"id":8,"name":"Spices","image":"https://staging-app.foods.farmcrowdy.com/storage/z1StdABk2Yjyk4dQZ62vOh2dH00YbYNb96UTANxP.jpeg","slug":"spices-f9km5s5v","description":null,"created_at":"2020-06-01 07:48:14","updated_at":"2021-02-19 11:47:33","featured":1,"position":7},{"id":9,"name":"Dry Foods","image":"https://staging-app.foods.farmcrowdy.com/storage/yxy1PTPDBllPJF0bHSx3GOP5HLGIbN4QZBqxRbdX.jpeg","slug":"dry-foods-cpjfjxe9","description":null,"created_at":"2020-07-14 10:58:15","updated_at":"2021-02-19 11:47:33","featured":1,"position":9},{"id":10,"name":"Pasta","image":"https://staging-app.foods.farmcrowdy.com/storage/S2hCnjDWvV53cL3QbRNubJEpFO1wDMbZBbuWcDH8.jpeg","slug":"pasta-q0xcbhoh","description":null,"created_at":"2020-07-14 11:00:41","updated_at":"2021-02-19 11:47:33","featured":1,"position":10},{"id":11,"name":"Canned Foods","image":"https://staging-app.foods.farmcrowdy.com/storage/EGb9W0aSArZ8VjkvSMxiO7yYDDNfjT4QvFthVNeV.jpeg","slug":"canned-foods-atjfhtis","description":null,"created_at":"2020-07-14 11:16:36","updated_at":"2021-02-19 11:47:33","featured":1,"position":11},{"id":12,"name":"Beverage and Cereals","image":"https://staging-app.foods.farmcrowdy.com/storage/kf1bGmw8NWLRYe4VoUfZhz2QyWbIQ0NoMwTStsQ5.jpeg","slug":"beverage-and-cereals-ak2ixjao","description":null,"created_at":"2020-08-18 07:08:02","updated_at":"2021-02-19 11:47:33","featured":1,"position":7}]
//
// class Data {
//   List<Categories> _categories;
//
//   List<Categories> get categories => _categories;
//
//   Data({
//       List<Categories> categories}){
//     _categories = categories;
// }
//
//   Data.fromJson(dynamic json) {
//     if (json["categories"] != null) {
//       _categories = [];
//       json["categories"].forEach((v) {
//         _categories.add(Categories.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     if (_categories != null) {
//       map["categories"] = _categories.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }
//
// /// id : 1
// /// name : "Meat and Poultry"
// /// image : "https://staging-app.foods.farmcrowdy.com/storage/5Iu3UnQruh9dQsgnKGrM9gRY0m4k9xv2RsrHG1wi.jpeg"
// /// slug : "meat-and-poultry-dfhiqucv"
// /// description : "This contains cow meat, goat meat and chicken"
// /// created_at : null
// /// updated_at : "2021-02-19 11:47:33"
// /// featured : 1
// /// position : 2
//
// class  Categories {
//   int _id;
//   String _name;
//   String _image;
//   String _slug;
//   String _description;
//   dynamic _createdAt;
//   String _updatedAt;
//   int _featured;
//   int _position;
//
//   int get id => _id;
//   String get name => _name;
//   String get image => _image;
//   String get slug => _slug;
//   String get description => _description;
//   dynamic get createdAt => _createdAt;
//   String get updatedAt => _updatedAt;
//   int get featured => _featured;
//   int get position => _position;
//
//   Categories({
//       int id,
//       String name,
//       String image,
//       String slug,
//       String description,
//       dynamic createdAt,
//       String updatedAt,
//       int featured,
//       int position}){
//     _id = id;
//     _name = name;
//     _image = image;
//     _slug = slug;
//     _description = description;
//     _createdAt = createdAt;
//     _updatedAt = updatedAt;
//     _featured = featured;
//     _position = position;
// }
//
//   Categories.fromJson(dynamic json) {
//     _id = json["id"];
//     _name = json["name"];
//     _image = json["image"];
//     _slug = json["slug"];
//     _description = json["description"];
//     _createdAt = json["created_at"];
//     _updatedAt = json["updated_at"];
//     _featured = json["featured"];
//     _position = json["position"];
//   }
//
//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["id"] = _id;
//     map["name"] = _name;
//     map["image"] = _image;
//     map["slug"] = _slug;
//     map["description"] = _description;
//     map["created_at"] = _createdAt;
//     map["updated_at"] = _updatedAt;
//     map["featured"] = _featured;
//     map["position"] = _position;
//     return map;
//   }
//
// }

// class Categories {
//   List<ProductCategories> productCategories;
//   Categories({this.productCategories});
//   Categories.fromJson(Map<String, dynamic> json) {
//     if (json['product_categories'] != null) {
//       productCategories = new List<ProductCategories>();
//       json['product_categories'].forEach((v) {
//         productCategories.add(new ProductCategories.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.productCategories != null) {
//       data['product_categories'] =
//           this.productCategories.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
//
// }

class Categories {
  String status;
  String id;
  String type;
  Attributes attributes;

  Categories({this.status, this.id, this.type, this.attributes});

  Categories.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    id = json['id'];
    type = json['type'];
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['id'] = this.id;
    data['type'] = this.type;
    if (this.attributes != null) {
      data['attributes'] = this.attributes.toJson();
    }
    return data;
  }
  
}

class Attributes {
  String name;
  String filePath;
  Attributes({this.name, this.filePath});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    filePath = json['file_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['file_path'] = this.filePath;
    return data;
  }
}