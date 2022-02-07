import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controllers.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Get.find<UtilController>().toggleTheme();
      },
      child: Obx(
        () => Icon(
          Get.find<UtilController>().isDarkTheme.value
              ? Icons.brightness_7
              : Icons.dark_mode,
          color: Colors.white,
        ),
      ),
    );
  }
}
