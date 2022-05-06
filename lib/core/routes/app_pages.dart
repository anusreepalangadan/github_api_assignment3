

import 'package:githubapiassignment/bindings/home_binding.dart';
import 'package:githubapiassignment/bindings/serach_screen_binding.dart';
import 'package:githubapiassignment/bindings/splash_binding.dart';
import 'package:githubapiassignment/views/pages/home_screen.dart';
import 'package:githubapiassignment/views/pages/searchScreen.dart';
import 'package:githubapiassignment/views/pages/splash_screen.dart';

import 'app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => SplashScreen(),
        binding: SplashScreenBinding()),
    GetPage(
        name: Routes.SEARCH,
        page: () => SearchScreen(),
        binding: SearchScreenBinding()),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeScreenBinding()),

  ];
}