import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/res/colors.dart';

import '../mixin/dialog/dialog_mixin.dart';
import '../utils/Adapt.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> map = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    int userId = map["userId"];
    String userName = map["userName"];

    //SafeArea不与顶部状态栏重合
    return SafeArea(
        child: Container(
          color: ColorStyle.color_white,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "userId: $userId userName $userName",
                style: TextStyle(
                    color: ColorStyle.color_black,
                    fontSize: Adapt.setRpx(28),
                ),
              )
            ],
          ),
        )
    );

  }

}