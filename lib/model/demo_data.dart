class DemoModel {
  List<DemoData>? demoData;

  DemoModel({this.demoData});

  DemoModel.fromJson(Map<String, dynamic> json) {
    if (json['demoData'] != null) {
      demoData = <DemoData>[];
      json['demoData'].forEach((v) {
        demoData!.add(DemoData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (demoData != null) {
      data['demoData'] = demoData!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}
