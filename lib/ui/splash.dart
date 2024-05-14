
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/main.dart';
import 'package:flutterdemo/utils/Adapt.dart';

import '../res/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();

}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    //3秒后跳转
    Timer(const Duration(seconds: 5), () {
      Map<String, dynamic> arguments = {
        'userId': 123,
        'userName': 'John Doe',
      };
      Navigator.pushNamed(context, RouteName.loginPage, arguments: arguments);
    });
  }

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(Adapt.setRpx(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                SizedBox(
                  width: Adapt.setRpx(200),
                  height: Adapt.setRpx(200),
                  child: Container(
                    color: ColorStyle.color_3A3A3B_90,
                  )
                )
            ],
        )
      );
  }

}