import 'package:get/get.dart';

import '../business/login/login_page.dart';
import '../main.dart';

abstract class AppRoutes {
  static const mainPage = "/main"; //主页Main
  static const loginPage = "/business/login/login_page"; //Login

  static final routerPages = [
    ///主入口
    GetPage(
        name: AppRoutes.mainPage,
        page: () => const MyHomePage(title: '',),
        // binding: MainBinding()
        ),

    ///列表页面
    GetPage(
        name: AppRoutes.loginPage,
        page: () => const LoginPage(),
        // binding: PlayListBinding()),
  )
  ];
}
