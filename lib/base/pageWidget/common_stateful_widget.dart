import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/theme_controller.dart';
import '../../mixin/toast/toast_mixin.dart';


///实现一些基础功能SatefulWidget组件（例如Toast等，可继续拓展）
abstract class CommonStatefulWidget extends StatefulWidget with ToastMixin {

  var themeController = Get.find<ThemeController>();

  CommonStatefulWidget({ Key? key }) : super(key: key);
}
