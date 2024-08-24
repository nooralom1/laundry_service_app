class CategoryDetailsModel {
  List<CategoryDetails>? categoryDetails;

  CategoryDetailsModel({this.categoryDetails});

  CategoryDetailsModel.fromJson(Map<String, dynamic> json) {
    if (json['categoryDetails'] != null) {
      categoryDetails = <CategoryDetails>[];
      json['categoryDetails'].forEach((v) {
        categoryDetails!.add(CategoryDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (categoryDetails != null) {
      data['categoryDetails'] =
          categoryDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryDetails {
  String? image;
  String? name;
  String? price;
  int? rating;

  CategoryDetails({this.image, this.name, this.price, this.rating});

  CategoryDetails.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    price = json['price'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['price'] = price;
    data['rating'] = rating;
    return data;
  }
}
