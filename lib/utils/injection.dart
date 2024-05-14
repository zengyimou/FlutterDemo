import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

///初始化注入对象
class Injection extends GetxService {
  Future<void> init() async {
    await Get.putAsync(() => SharedPreferences.getInstance());
    // Get.lazyPut(() => ApiService(), fenix: true);
    // Get.lazyPut(() => EventBus(), fenix: true);
    // Get.lazyPut(() => MusicService());
    // Get.lazyPut(() => MusicPlayerController(), fenix: true);
    // Get.lazyPut(() => ThemeController(),fenix: true);
  }
}
