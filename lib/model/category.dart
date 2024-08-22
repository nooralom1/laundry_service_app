class CategoryModel {
  List<Categories>? categories;

  CategoryModel({this.categories});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String? image;
  String? name;
  String? tittle;

  Categories({this.image, this.name, this.tittle});

  Categories.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    tittle = json['tittle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['tittle'] = tittle;
    return data;
  }
}
