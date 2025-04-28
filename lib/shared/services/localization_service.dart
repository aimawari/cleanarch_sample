import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../core/router/app_router.dart';

class LocalizationService {
  static const supportedLocales = [Locale('en'), Locale('th')];

  static const fallbackLocale = Locale('en');
  static const path = 'assets/lang';

  Locale getLocale() {
    return goRouter.routerDelegate.navigatorKey.currentContext?.locale ??
        fallbackLocale;
  }

  Future<void> setLocale(Locale locale) async {
    await goRouter.routerDelegate.navigatorKey.currentContext?.setLocale(
      locale,
    );
  }
}
