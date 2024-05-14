import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/theme_controller.dart';
import '../../mixin/toast/toast_mixin.dart';

///实现一些基础功能的StatelessWidget(例如Toast等)
abstract class CommonStatelessWidget extends StatelessWidget with ToastMixin {
  var themeController = Get.find<ThemeController>();

  CommonStatelessWidget({Key? key}) : super(key: key);
}
