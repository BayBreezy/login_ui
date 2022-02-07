import 'package:get/get.dart';
import 'controllers/controllers.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => LoginController());
    Get.put(UtilController());
  }
}
