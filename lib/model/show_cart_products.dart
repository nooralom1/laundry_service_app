class ShowCartProductsModel {
  List<CartProducts>? cartProducts;

  ShowCartProductsModel({this.cartProducts});

  ShowCartProductsModel.fromJson(Map<String, dynamic> json) {
    if (json['cartProducts'] != null) {
      cartProducts = <CartProducts>[];
      json['cartProducts'].forEach((v) {
        cartProducts!.add(CartProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cartProducts != null) {
      data['cartProducts'] = cartProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CartProducts {
  String? image;
  String? name;
  String? price;

  CartProducts({this.image, this.name, this.price});

  CartProducts.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}
