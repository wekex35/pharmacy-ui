class AddressModel {
  int id;
  String guid;
  bool isActive;
  String name;
  String phone;
  String address;
  String latitude;
  String longitude;

  AddressModel(
      {this.id,
      this.guid,
      this.isActive,
      this.name,
      this.phone,
      this.address,
      this.latitude,
      this.longitude});

  AddressModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    guid = json['guid'];
    isActive = json['isActive'];
    name = json['name'];
    phone = json['phone'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['guid'] = this.guid;
    data['isActive'] = this.isActive;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
