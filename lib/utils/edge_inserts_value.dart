import 'package:flutter/material.dart';
import 'package:news_app_core/utils/constants.dart';
import 'package:news_app_core/utils/screen_type.dart';

double edgeInsertsValue(BuildContext context) {
  switch (screenType(context)) {
    case ScreenType.mobile:
      return mobileEdgeInsertsValue;
    case ScreenType.desktop:
      return desktopEdgeInsertsValue;
  }
}
