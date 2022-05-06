import 'package:get/get.dart';
import 'package:githubapiassignment/controllers/home_controller.dart';
import 'package:githubapiassignment/controllers/searchController.dart';
import 'package:githubapiassignment/controllers/splash_controller.dart';
class HomeScreenBinding implements Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController();
    });
  }}