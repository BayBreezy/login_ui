import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../config/config.dart';
import '../controllers/controllers.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ThemeSwitcher(),
      body: SafeArea(
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                height: context.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: kPadding * 3),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Lottie.asset('assets/login.json',
                            height: 300, fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(height: kPadding * 3),
                    CustomTextField(
                        hint: 'First name',
                        controller:
                            Get.find<LoginController>().firstNameController),
                    SizedBox(height: kPadding),
                    CustomTextField(
                        hint: 'Last name',
                        controller:
                            Get.find<LoginController>().lastNameController),
                    SizedBox(height: kPadding),
                    CustomTextField(
                        hint: 'Email',
                        controller: Get.find<LoginController>().emailController,
                        keyboardType: TextInputType.emailAddress),
                    SizedBox(height: kPadding * 2),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: kPadding),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 50),
                            shape: StadiumBorder(),
                            primary: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            Get.find<LoginController>().register();
                          },
                          child: Text('REGISTER')),
                    )
                  ],
                ),
              ))),
    );
  }
}
