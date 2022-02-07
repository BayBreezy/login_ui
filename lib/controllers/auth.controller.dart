import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:login_ui/config/config.dart';
import 'package:login_ui/models/models.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;
  User? currentUser;

  final _box = GetStorage();

  void setUserState() {
    var user = getUser();
    if (user != null) {
      isLoggedIn.value = true;
      currentUser = user;
    } else {
      isLoggedIn.value = false;
      currentUser = null;
    }
  }

  void logout() {
    isLoggedIn.value = false;
    _box.remove(firstNameKey);
    _box.remove(lastNameKey);
    _box.remove(emailKey);
    currentUser = null;
    Get.snackbar(
      "See You Soon",
      "Logged out successfully",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  User? getUser() {
    var firstName = _box.read(firstNameKey);
    var lastName = _box.read(lastNameKey);
    var email = _box.read(emailKey);

    if (firstName == null || email == null || lastName == null) {
      return null;
    }
    return User.fromJson({
      "email": email,
      "firstName": firstName,
      "lastName": lastName,
    });
  }

  void setUser(String firstName, String lastName, String email) {
    if (firstName.isEmpty ||
        lastName.isEmpty ||
        email.isEmpty ||
        !email.isEmail) return;
    _box.write(firstNameKey, firstName);
    _box.write(lastNameKey, lastName);
    _box.write(emailKey, email);
    setUserState();
  }

  @override
  void onInit() {
    setUserState();
    super.onInit();
  }
}
