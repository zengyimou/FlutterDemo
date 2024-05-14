import 'package:flutter/material.dart';
import 'package:flutterdemo/res/colors.dart';
import 'package:flutterdemo/route/page_routes.dart';
import 'package:flutterdemo/utils/Adapt.dart';
import 'package:flutterdemo/utils/log_utils.dart';
import 'package:logger/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

void init(BuildContext context) {
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
      home: const MyHomePage(title: 'Flutter Demo Home Page UU'),
      routes: const {

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String str = "";
  bool isLoading = false;

  void _incrementCounter() {
    LogD("test here");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _containerLayout(),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  /// 约束布局
  Widget _containerLayout(){

    return Container(
      width: double.infinity,
      height: Adapt.setRpx(200),
      color: ColorStyle.color_24CF5F,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),

    );
  }

  /// Center布局
  Widget _commonLayout(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:111',
            style: TextStyle(fontFamily: AnsiColor.ansiDefault, color: ColorStyle.color_24CF5F),
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Image.asset(
              'assets/images/loading/loding_00016.webp',
              fit: BoxFit.cover
          )
        ],
      ),
    );
  }


}

class Pair<T1, T2> {
  final T1 first;
  final T2 second;

  Pair(this.first, this.second);

  @override
  String toString() => 'Pair($first, $second)';
}



