import 'package:flutter/widgets.dart';

extension ScreenSizeExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenAspectRatio => MediaQuery.of(this).size.aspectRatio;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;

  double get fontSize_10 => screenWidth * 0.0052;
  double get fontSize_12 => screenWidth * 0.00625;
  double get fontSize_14 => screenWidth * 0.00729;
  double get fontSize_16 => screenWidth * 0.0083;
  double get fontSize_18 => screenWidth * 0.009375;
  double get fontSize_24 => screenWidth * 0.0125;
  double get fontSize_32 => screenWidth * 0.016;
  double get fontSize_48 => screenWidth * 0.025;

  double get smallIconSize => screenWidth * 0.06;
  double get mediumIconSize => screenWidth * 0.08;
  double get largeIconSize => screenWidth * 0.1;

  double get getIconSizeForScreen {
    return screenWidth * (screenWidth < 600 ? 0.08 : 0.15);
  }
}
