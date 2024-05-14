import 'package:flutter/material.dart';
import 'package:flutterdemo/ui/login.dart';
import 'package:flutterdemo/ui/splash.dart';
import 'package:flutterdemo/utils/Adapt.dart';
import 'package:flutterdemo/utils/log_utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

void init(BuildContext context) {
  //初始化单位
  Adapt.initialize(context);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    init(context);

    LogV("=====Widget build");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      routes: {
        RouteName.loginPage : (context) => LoginPage(),
      },
      onUnknownRoute:  (RouteSettings setting) => MaterialPageRoute(builder: (context) => const SplashPage()),
    );
  }
}

class RouteName {
  static var splash = "splash";
    static var loginPage = "login_page";
}




