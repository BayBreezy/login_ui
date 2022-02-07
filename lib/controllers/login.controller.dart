import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/controllers/auth.controller.dart';

class LoginController extends GetxController {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;

  @override
  void onInit() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();

    super.onInit();
  }

  bool register() {
    if (firstNameController.text.isEmpty ||
        lastNameController.text.isEmpty ||
        emailController.text.isEmpty ||
        !emailController.text.isEmail) {
      Get.snackbar(
        'Invalid Credentials',
        "Please fill out all fields properly",
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 8),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
      );
      return false;
    }
    Get.find<AuthController>().setUser(firstNameController.text,
        lastNameController.text, emailController.text);
    return true;
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    super.onClose();
  }
}
