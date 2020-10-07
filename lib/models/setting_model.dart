class SettingModel {
  String type;
  String icon;
  String title;

  SettingModel({this.type, this.icon, this.title});

  SettingModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    icon = json['icon'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['icon'] = this.icon;
    data['title'] = this.title;
    return data;
  }
}
