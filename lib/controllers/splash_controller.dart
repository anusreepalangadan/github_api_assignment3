
import 'package:get/get.dart';
import 'package:githubapiassignment/core/routes/app_routes.dart';

class SplashController extends GetxController {


  @override
  void onInit() {
    moveToNext();
    super.onInit();
  }
  @override
  void onReady() {

    super.onReady();
  }
  Future<void> moveToNext() async {
    await Future.delayed(Duration(milliseconds: 2000),(){});
    Get.toNamed(Routes.SEARCH);
  }
  @override
  void dispose() {
    super.dispose();
  }

}