import 'package:flutter/cupertino.dart';

class Adapt {
  static MediaQueryData _mediaQueryData = const MediaQueryData();
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double rpx = 0;
  static double px = 0;

  /// standardWidth 设计稿宽度
  static void initialize(BuildContext context, {double standardWidth = 750}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    rpx = screenWidth / standardWidth;
    px = screenWidth / standardWidth * 2;
  }

  // 按照像素来设置
  static double setPx(double size) {
    return Adapt.rpx * size * 2;
  }

  // 按照rxp来设置
  static double setRpx(double size) {
    return Adapt.rpx * size;
  }
}