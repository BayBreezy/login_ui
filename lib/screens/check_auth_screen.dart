import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/controllers/controllers.dart';
import 'package:login_ui/screens/screens.dart';

class CheckAuthScreen extends StatelessWidget {
  const CheckAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Get.find<AuthController>().isLoggedIn.value
          ? const ProfileScreen()
          : const LoginScreen(),
    );
  }
}
