import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

import '../controllers/controllers.dart';
import '../widgets/widgets.dart';
import '../config/config.dart';
import '../models/models.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = Get.find<AuthController>().currentUser!;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
        foregroundColor: Theme.of(context).textTheme.headline1!.color,
        title: Text(
          user.firstName + " " + user.lastName,
        ),
      ),
      floatingActionButton: const ThemeSwitcher(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: kPadding),
            Lottie.asset('assets/rocket.json', fit: BoxFit.fill),
            SizedBox(height: kPadding * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email_outlined,
                  size: 16,
                ),
                const SizedBox(width: 5),
                Text(user.email.toLowerCase())
              ],
            ),
            SizedBox(height: kPadding),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(context.width * 0.6, 50),
                    shape: StadiumBorder(),
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    Get.find<AuthController>().logout();
                  },
                  child: Text('LOGOUT')),
            )
          ],
        ),
      ),
    );
  }
}
