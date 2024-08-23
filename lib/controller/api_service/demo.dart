import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:laundry_app_using_getx/database/demo.dart';
import 'package:laundry_app_using_getx/model/demo_data.dart';

class DemoService {
  static Future<DemoModel?> demoService() async {
    try {
      DemoModel demoModel =
          DemoModel.fromJson(jsonDecode(jsonEncode(DemoList.demoList)));
      return demoModel;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
