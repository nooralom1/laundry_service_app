import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:laundry_app_using_getx/database/show_cart_products.dart';
import 'package:laundry_app_using_getx/model/show_cart_products.dart';

class ShowCartProductsService {
  static Future<ShowCartProductsModel?> showCartProductsService() async {
    try {
      ShowCartProductsModel response = ShowCartProductsModel.fromJson(
          jsonDecode(jsonEncode(ShowCartProductsList.sowCartProductsList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
