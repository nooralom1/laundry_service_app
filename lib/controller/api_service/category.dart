import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:laundry_app_using_getx/database/category.dart';
import 'package:laundry_app_using_getx/model/category.dart';

class CategoryService{

  static Future<CategoryModel?> categoryService()async{
    try{
      CategoryModel categoryModel = CategoryModel.fromJson(jsonDecode(jsonEncode(CategoryList.categoryList)));
      return categoryModel;
    }catch(e){
      debugPrint("Error: $e");
    }
    return null;
  }
}