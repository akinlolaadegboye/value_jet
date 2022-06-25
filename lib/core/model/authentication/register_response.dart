class RegisterResponse {
  Data data;

  RegisterResponse({required this.data});

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String status;
  String id;
  String type;
  Attributes attributes;

  Data({this.status, this.id, this.type, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
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
  String firstname;
  String lastname;
  String emailAddress;
  String phoneNumber;
  String createdAt;
  String updatedAt;

  Attributes(
      {this.firstname,
        this.lastname,
        this.emailAddress,
        this.phoneNumber,
        this.createdAt,
        this.updatedAt});

  Attributes.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
    emailAddress = json['email_address'];
    phoneNumber = json['phone_number'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email_address'] = this.emailAddress;
    data['phone_number'] = this.phoneNumber;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}