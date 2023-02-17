

import 'package:get/get.dart';

import '../controller/lead_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeadController(), fenix: true);
    // Get.lazyPut(() => BottomNavController(), fenix: true);
  }
}