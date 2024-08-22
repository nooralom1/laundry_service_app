class DemoModel {
  List<DemoData>? demoData;

  DemoModel({this.demoData});

  DemoModel.fromJson(Map<String, dynamic> json) {
    if (json['demoData'] != null) {
      demoData = <DemoData>[];
      json['demoData'].forEach((v) {
        demoData!.add(new DemoData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.demoData != null) {
      data['demoData'] = this.demoData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DemoData {
  String? image;
  String? name;

  DemoData({this.image, this.name});

  DemoData.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    return data;
  }
}
