import 'package:flutter/material.dart';

enum ScreenType { mobile, desktop }

ScreenType screenType(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width <= _mobileScreenSizeLimit) return ScreenType.mobile;
  return ScreenType.desktop;
}

const _mobileScreenSizeLimit = 500.0;
