// /// success : true
// /// data : {"id":106,"order_type_id":12,"name":"Kellogg's Cornflakes","description":"1 pack of Kellogg's cornflakes is available for ₦2,300 only.","price":2300,"image":"https://staging-app.foods.farmcrowdy.com/storage/oQ95AkXHFY53vUVj9KY7En6u8czpTf0w7cuBKLaq.jpeg","slug":"kellogg's-cornflakes-qtlr0wtd","active":1,"created_at":"2020-08-18 08:01:12","updated_at":"2021-02-19 11:47:31","company_id":1,"unit":"1 pack","short_description":"1 pack of Kellogg's cornflakes is available for ₦2,300 only.","allowed_minimum_units":5,"package_restock":0,"featured":0,"discount":0,"available_units":10,"contact":"+2348153731892","company":{"id":1,"name":"Eko Foodmart","created_at":"2020-04-06 09:56:04","updated_at":"2021-02-19 11:45:05","active":1,"user_id":1,"slug":"eko-foodmart-ns62j","image":"farmgate.png","user":{"id":1,"name":"Tomiiwo Fakinlede","email":"tomiiwo.fakinlede@farmcrowdy.com","phone_number":"+2348153731892","gender":"Male","address":"2, Berkshire Hathaway","city":"Lekki","email_verified_at":null,"created_at":"2020-03-21 11:10:01","updated_at":"2021-04-01 11:52:06","is_phone_verified":1,"is_default_pass_changed":"Yes","avatar":"1_profile_image1617277926.jpeg","role_id":3,"state_id":1,"zone_id":null,"city_id":null}}}
// /// message : "Package retrieved successfully."

// class SinglePackage {
//   bool _success;
//   Data _data;
//   String _message;

//   bool get success => _success;
//   Data get data => _data;
//   String get message => _message;

//   SinglePackage({
//       bool success, 
//       Data data, 
//       String message}){
//     _success = success;
//     _data = data;
//     _message = message;
// }

//   SinglePackage.fromJson(dynamic json) {
//     _success = json["success"];
//     _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
//     _message = json["message"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["success"] = _success;
//     if (_data != null) {
//       map["data"] = _data.toJson();
//     }
//     map["message"] = _message;
//     return map;
//   }

// }

// /// id : 106
// /// order_type_id : 12
// /// name : "Kellogg's Cornflakes"
// /// description : "1 pack of Kellogg's cornflakes is available for ₦2,300 only."
// /// price : 2300
// /// image : "https://staging-app.foods.farmcrowdy.com/storage/oQ95AkXHFY53vUVj9KY7En6u8czpTf0w7cuBKLaq.jpeg"
// /// slug : "kellogg's-cornflakes-qtlr0wtd"
// /// active : 1
// /// created_at : "2020-08-18 08:01:12"
// /// updated_at : "2021-02-19 11:47:31"
// /// company_id : 1
// /// unit : "1 pack"
// /// short_description : "1 pack of Kellogg's cornflakes is available for ₦2,300 only."
// /// allowed_minimum_units : 5
// /// package_restock : 0
// /// featured : 0
// /// discount : 0
// /// available_units : 10
// /// contact : "+2348153731892"
// /// company : {"id":1,"name":"Eko Foodmart","created_at":"2020-04-06 09:56:04","updated_at":"2021-02-19 11:45:05","active":1,"user_id":1,"slug":"eko-foodmart-ns62j","image":"farmgate.png","user":{"id":1,"name":"Tomiiwo Fakinlede","email":"tomiiwo.fakinlede@farmcrowdy.com","phone_number":"+2348153731892","gender":"Male","address":"2, Berkshire Hathaway","city":"Lekki","email_verified_at":null,"created_at":"2020-03-21 11:10:01","updated_at":"2021-04-01 11:52:06","is_phone_verified":1,"is_default_pass_changed":"Yes","avatar":"1_profile_image1617277926.jpeg","role_id":3,"state_id":1,"zone_id":null,"city_id":null}}

// class Data {
//   int _id;
//   int _orderTypeId;
//   String _name;
//   String _description;
//   int _price;
//   String _image;
//   String _slug;
//   int _active;
//   String _createdAt;
//   String _updatedAt;
//   int _companyId;
//   String _unit;
//   String _shortDescription;
//   int _allowedMinimumUnits;
//   int _packageRestock;
//   int _featured;
//   int _discount;
//   int _availableUnits;
//   String _contact;
//   Company _company;

//   int get id => _id;
//   int get orderTypeId => _orderTypeId;
//   String get name => _name;
//   String get description => _description;
//   int get price => _price;
//   String get image => _image;
//   String get slug => _slug;
//   int get active => _active;
//   String get createdAt => _createdAt;
//   String get updatedAt => _updatedAt;
//   int get companyId => _companyId;
//   String get unit => _unit;
//   String get shortDescription => _shortDescription;
//   int get allowedMinimumUnits => _allowedMinimumUnits;
//   int get packageRestock => _packageRestock;
//   int get featured => _featured;
//   int get discount => _discount;
//   int get availableUnits => _availableUnits;
//   String get contact => _contact;
//   Company get company => _company;

//   Data({
//       int id, 
//       int orderTypeId, 
//       String name, 
//       String description, 
//       int price, 
//       String image, 
//       String slug, 
//       int active, 
//       String createdAt, 
//       String updatedAt, 
//       int companyId, 
//       String unit, 
//       String shortDescription, 
//       int allowedMinimumUnits, 
//       int packageRestock, 
//       int featured, 
//       int discount, 
//       int availableUnits, 
//       String contact, 
//       Company company}){
//     _id = id;
//     _orderTypeId = orderTypeId;
//     _name = name;
//     _description = description;
//     _price = price;
//     _image = image;
//     _slug = slug;
//     _active = active;
//     _createdAt = createdAt;
//     _updatedAt = updatedAt;
//     _companyId = companyId;
//     _unit = unit;
//     _shortDescription = shortDescription;
//     _allowedMinimumUnits = allowedMinimumUnits;
//     _packageRestock = packageRestock;
//     _featured = featured;
//     _discount = discount;
//     _availableUnits = availableUnits;
//     _contact = contact;
//     _company = company;
// }

//   Data.fromJson(dynamic json) {
//     _id = json["id"];
//     _orderTypeId = json["order_type_id"];
//     _name = json["name"];
//     _description = json["description"];
//     _price = json["price"];
//     _image = json["image"];
//     _slug = json["slug"];
//     _active = json["active"];
//     _createdAt = json["created_at"];
//     _updatedAt = json["updated_at"];
//     _companyId = json["company_id"];
//     _unit = json["unit"];
//     _shortDescription = json["short_description"];
//     _allowedMinimumUnits = json["allowed_minimum_units"];
//     _packageRestock = json["package_restock"];
//     _featured = json["featured"];
//     _discount = json["discount"];
//     _availableUnits = json["available_units"];
//     _contact = json["contact"];
//     _company = json["company"] != null ? Company.fromJson(json["company"]) : null;
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["id"] = _id;
//     map["order_type_id"] = _orderTypeId;
//     map["name"] = _name;
//     map["description"] = _description;
//     map["price"] = _price;
//     map["image"] = _image;
//     map["slug"] = _slug;
//     map["active"] = _active;
//     map["created_at"] = _createdAt;
//     map["updated_at"] = _updatedAt;
//     map["company_id"] = _companyId;
//     map["unit"] = _unit;
//     map["short_description"] = _shortDescription;
//     map["allowed_minimum_units"] = _allowedMinimumUnits;
//     map["package_restock"] = _packageRestock;
//     map["featured"] = _featured;
//     map["discount"] = _discount;
//     map["available_units"] = _availableUnits;
//     map["contact"] = _contact;
//     if (_company != null) {
//       map["company"] = _company.toJson();
//     }
//     return map;
//   }

// }

// /// id : 1
// /// name : "Eko Foodmart"
// /// created_at : "2020-04-06 09:56:04"
// /// updated_at : "2021-02-19 11:45:05"
// /// active : 1
// /// user_id : 1
// /// slug : "eko-foodmart-ns62j"
// /// image : "farmgate.png"
// /// user : {"id":1,"name":"Tomiiwo Fakinlede","email":"tomiiwo.fakinlede@farmcrowdy.com","phone_number":"+2348153731892","gender":"Male","address":"2, Berkshire Hathaway","city":"Lekki","email_verified_at":null,"created_at":"2020-03-21 11:10:01","updated_at":"2021-04-01 11:52:06","is_phone_verified":1,"is_default_pass_changed":"Yes","avatar":"1_profile_image1617277926.jpeg","role_id":3,"state_id":1,"zone_id":null,"city_id":null}

// class Company {
//   int _id;
//   String _name;
//   String _createdAt;
//   String _updatedAt;
//   int _active;
//   int _userId;
//   String _slug;
//   String _image;
//   User _user;

//   int get id => _id;
//   String get name => _name;
//   String get createdAt => _createdAt;
//   String get updatedAt => _updatedAt;
//   int get active => _active;
//   int get userId => _userId;
//   String get slug => _slug;
//   String get image => _image;
//   User get user => _user;

//   Company({
//       int id, 
//       String name, 
//       String createdAt, 
//       String updatedAt, 
//       int active, 
//       int userId, 
//       String slug, 
//       String image, 
//       User user}){
//     _id = id;
//     _name = name;
//     _createdAt = createdAt;
//     _updatedAt = updatedAt;
//     _active = active;
//     _userId = userId;
//     _slug = slug;
//     _image = image;
//     _user = user;
// }

//   Company.fromJson(dynamic json) {
//     _id = json["id"];
//     _name = json["name"];
//     _createdAt = json["created_at"];
//     _updatedAt = json["updated_at"];
//     _active = json["active"];
//     _userId = json["user_id"];
//     _slug = json["slug"];
//     _image = json["image"];
//     _user = json["user"] != null ? User.fromJson(json["user"]) : null;
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["id"] = _id;
//     map["name"] = _name;
//     map["created_at"] = _createdAt;
//     map["updated_at"] = _updatedAt;
//     map["active"] = _active;
//     map["user_id"] = _userId;
//     map["slug"] = _slug;
//     map["image"] = _image;
//     if (_user != null) {
//       map["user"] = _user.toJson();
//     }
//     return map;
//   }

// }

// /// id : 1
// /// name : "Tomiiwo Fakinlede"
// /// email : "tomiiwo.fakinlede@farmcrowdy.com"
// /// phone_number : "+2348153731892"
// /// gender : "Male"
// /// address : "2, Berkshire Hathaway"
// /// city : "Lekki"
// /// email_verified_at : null
// /// created_at : "2020-03-21 11:10:01"
// /// updated_at : "2021-04-01 11:52:06"
// /// is_phone_verified : 1
// /// is_default_pass_changed : "Yes"
// /// avatar : "1_profile_image1617277926.jpeg"
// /// role_id : 3
// /// state_id : 1
// /// zone_id : null
// /// city_id : null

// class User {
//   int _id;
//   String _name;
//   String _email;
//   String _phoneNumber;
//   String _gender;
//   String _address;
//   String _city;
//   dynamic _emailVerifiedAt;
//   String _createdAt;
//   String _updatedAt;
//   int _isPhoneVerified;
//   String _isDefaultPassChanged;
//   String _avatar;
//   int _roleId;
//   int _stateId;
//   dynamic _zoneId;
//   dynamic _cityId;

//   int get id => _id;
//   String get name => _name;
//   String get email => _email;
//   String get phoneNumber => _phoneNumber;
//   String get gender => _gender;
//   String get address => _address;
//   String get city => _city;
//   dynamic get emailVerifiedAt => _emailVerifiedAt;
//   String get createdAt => _createdAt;
//   String get updatedAt => _updatedAt;
//   int get isPhoneVerified => _isPhoneVerified;
//   String get isDefaultPassChanged => _isDefaultPassChanged;
//   String get avatar => _avatar;
//   int get roleId => _roleId;
//   int get stateId => _stateId;
//   dynamic get zoneId => _zoneId;
//   dynamic get cityId => _cityId;

//   User({
//       int id, 
//       String name, 
//       String email, 
//       String phoneNumber, 
//       String gender, 
//       String address, 
//       String city, 
//       dynamic emailVerifiedAt, 
//       String createdAt, 
//       String updatedAt, 
//       int isPhoneVerified, 
//       String isDefaultPassChanged, 
//       String avatar, 
//       int roleId, 
//       int stateId, 
//       dynamic zoneId, 
//       dynamic cityId}){
//     _id = id;
//     _name = name;
//     _email = email;
//     _phoneNumber = phoneNumber;
//     _gender = gender;
//     _address = address;
//     _city = city;
//     _emailVerifiedAt = emailVerifiedAt;
//     _createdAt = createdAt;
//     _updatedAt = updatedAt;
//     _isPhoneVerified = isPhoneVerified;
//     _isDefaultPassChanged = isDefaultPassChanged;
//     _avatar = avatar;
//     _roleId = roleId;
//     _stateId = stateId;
//     _zoneId = zoneId;
//     _cityId = cityId;
// }

//   User.fromJson(dynamic json) {
//     _id = json["id"];
//     _name = json["name"];
//     _email = json["email"];
//     _phoneNumber = json["phone_number"];
//     _gender = json["gender"];
//     _address = json["address"];
//     _city = json["city"];
//     _emailVerifiedAt = json["email_verified_at"];
//     _createdAt = json["created_at"];
//     _updatedAt = json["updated_at"];
//     _isPhoneVerified = json["is_phone_verified"];
//     _isDefaultPassChanged = json["is_default_pass_changed"];
//     _avatar = json["avatar"];
//     _roleId = json["role_id"];
//     _stateId = json["state_id"];
//     _zoneId = json["zone_id"];
//     _cityId = json["city_id"];
//   }

//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map["id"] = _id;
//     map["name"] = _name;
//     map["email"] = _email;
//     map["phone_number"] = _phoneNumber;
//     map["gender"] = _gender;
//     map["address"] = _address;
//     map["city"] = _city;
//     map["email_verified_at"] = _emailVerifiedAt;
//     map["created_at"] = _createdAt;
//     map["updated_at"] = _updatedAt;
//     map["is_phone_verified"] = _isPhoneVerified;
//     map["is_default_pass_changed"] = _isDefaultPassChanged;
//     map["avatar"] = _avatar;
//     map["role_id"] = _roleId;
//     map["state_id"] = _stateId;
//     map["zone_id"] = _zoneId;
//     map["city_id"] = _cityId;
//     return map;
//   }

// }