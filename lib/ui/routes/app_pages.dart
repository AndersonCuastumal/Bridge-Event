import 'package:get/get.dart';
import 'package:sprint3/domain/use_case/bindings/dashboard_binding.dart';
import 'package:sprint3/ui/pages/login_page.dart';

import 'package:sprint3/ui/pages/navegacion_bar_page.dart';

import 'package:sprint3/ui/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,

      page: () => LoginPage(),

      binding: DashboardBinding(),
    ),
  ];
}