class OffersModel {
  String header;
  String content;
  String image;
  String offers;

  OffersModel({this.header, this.content, this.image,  this.offers});

  OffersModel.fromJson(Map<String, dynamic> json) {
    header = json['header'];
    content = json['content'];
    image = json['image'];
    offers = json['offers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['header'] = this.header;
    data['content'] = this.content;
    data['image'] = this.image;

    data['offers'] = this.offers;
    return data;
  }
}