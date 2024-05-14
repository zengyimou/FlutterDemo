import 'package:flutter/cupertino.dart';

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
        child: Column(
          children: [
            Text("userId: $userId userName $userName")
          ],
        ),
    );

  }

}