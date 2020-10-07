class PrescriptionModel {
  String title;
  String descritpion;
  String image;
  String date;
  String time;
  int status;

  PrescriptionModel(
      {this.title,
      this.descritpion,
      this.image,
      this.date,
      this.time,
      this.status});

  PrescriptionModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    descritpion = json['descritpion'];
    image = json['image'];
    date = json['date'];
    time = json['time'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['descritpion'] = this.descritpion;
    data['image'] = this.image;
    data['date'] = this.date;
    data['time'] = this.time;
    data['status'] = this.status;
    return data;
  }
}
