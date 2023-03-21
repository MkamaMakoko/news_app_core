import 'package:flutter/material.dart';
import 'package:news_app_core/utils/screen_type.dart';

double edgeInsertsValue(BuildContext context) {
  switch (screenType(context)) {
    case ScreenType.mobile:
      return _mobileEdgeInsertsValue;
    case ScreenType.desktop:
      return _desktopEdgeInsertsValue;
  }
}

const _mobileEdgeInsertsValue = 16.0;
const _desktopEdgeInsertsValue = _mobileEdgeInsertsValue * 1.5;
