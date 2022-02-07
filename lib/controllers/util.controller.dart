import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../config/config.dart';

class UtilController extends GetxController {
  var isDarkTheme = false.obs;
  final _box = GetStorage();

  void toggleTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    _box.write(darkModeKey, Get.isDarkMode);
    isDarkTheme.value = !isDarkTheme.value;
  }

  void setTheme() {
    var val = _box.read(darkModeKey);
    if (val != null) {
      if (val == true) {
        isDarkTheme.value = false;
        Get.changeThemeMode(ThemeMode.light);
      } else {
        isDarkTheme.value = true;
        Get.changeThemeMode(ThemeMode.dark);
      }
    }
  }

  @override
  void onInit() {
    setTheme();
    super.onInit();
  }
}
