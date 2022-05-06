import 'package:get/get.dart';
import 'package:githubapiassignment/controllers/searchController.dart';
import 'package:githubapiassignment/controllers/splash_controller.dart';
class SplashScreenBinding implements Bindings
{
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }}