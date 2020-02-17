import 'package:flutter/material.dart';
import 'routerName.dart';
import '../pages/HomeBarTabs/HomeBarTabs.dart';
import '../pages/GoodsDetailsInfo/GoodsDetailsInfo.dart';
import '../pages/SearchPage/SearchPage.dart';
import '../pages/AmapPage/AmapPage.dart';
import '../pages/AmapPage/components/SearchGeocodePage.dart';
import '../pages/ErrorPage/ErrorPage.dart';
import '../pages/FlowLayout/FlowLayout.dart';
import '../pages/AdH5View/AdH5View.dart';
import '../pages/AccountPage/AccountPage.dart';
import '../pages/LoginPage/LoginPage.dart';
import '../pages/PasswordPage/PasswordPage.dart';
import '../pages/SpeakPage/SpeakPage.dart';
import '../pages/SplashPage/SplashPage.dart';

final String initialRoute = RouterName.splashPage; // 初始默认显示的路由

final Map<String, WidgetBuilder> routesData = {
  RouterName.splashPage: (BuildContext context, {params}) => SplashPage(),
  RouterName.home: (BuildContext context, {params}) =>
      HomeBarTabs(params: params),
  RouterName.error: (BuildContext context, {params}) =>
      ErrorPage(params: params),
  RouterName.goodsDetailsInfo: (BuildContext context, {params}) =>
      GoodsDetailsInfo(params: params),
  RouterName.amapPage: (BuildContext context) => AmapPage(),
  RouterName.searchGeocodePage: (BuildContext context) => SearchGeocodePage(),
  RouterName.searchPage: (BuildContext context, {params}) =>
      SearchPage(params: params),
  RouterName.flowLayout: (BuildContext context, {params}) => FlowLayout(),
  RouterName.speakPage: (BuildContext context, {params}) => SpeakPage(),
  RouterName.passwordPage: (BuildContext context, {params}) => PasswordPage(),
  RouterName.accountPage: (BuildContext context, {params}) => AccountPage(),
  RouterName.adH5View: (BuildContext context, {params}) =>
      AdH5View(params: params),
  RouterName.loginPage: (BuildContext context, {params}) => LoginPage(),
};
