
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:sprint3/domain/use_case/controllers/navegacion_bar_controller.dart';
import 'package:sprint3/domain/use_case/controllers/home_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NavegacionBarController>(() => NavegacionBarController());
    Get.lazyPut<HomeController>(() => HomeController());

  }

}