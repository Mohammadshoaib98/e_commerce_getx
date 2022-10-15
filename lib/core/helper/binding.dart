import 'package:e_commerce_getx/core/view_model/auth_view_model.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

import '../view_model/home_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => HomeViewModel());
  }
}
