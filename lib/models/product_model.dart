class ProductModel {
  int id;
  String name;
  String descritpion;
  String image;
  String discounts;
  String mrp;
  String measure;

  ProductModel(
      {
      this.id,
      this.name,
      this.descritpion,
      this.image,
      this.discounts,
      this.mrp,
      this.measure});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    descritpion = json['descritpion'];
    image = json['image'];
    discounts = json['discounts'];
    mrp = json['mrp'];
    measure = json['measure'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['descritpion'] = this.descritpion;
    data['image'] = this.image;
    data['discounts'] = this.discounts;
    data['mrp'] = this.mrp;
    data['measure'] = this.measure;
    return data;
  }
}
