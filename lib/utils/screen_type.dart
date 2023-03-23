import 'package:flutter/material.dart';
import 'package:news_app_core/utils/screen_width.dart';

enum ScreenType { mobile, desktop }

ScreenType screenType(BuildContext context) {
  if (screenWidth(context) <= _mobileScreenSizeLimit) return ScreenType.mobile;
  return ScreenType.desktop;
}

const _mobileScreenSizeLimit = 500.0;
