import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:laundry_app_using_getx/database/category_details.dart';
import 'package:laundry_app_using_getx/model/category_details.dart';

class CategoryDetailsService {
  static Future<CategoryDetailsModel?> categoryDetailsService() async {
    try {
      CategoryDetailsModel response = CategoryDetailsModel.fromJson(
          jsonDecode(jsonEncode(CategoryDetailsList.categoryDetailsList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
