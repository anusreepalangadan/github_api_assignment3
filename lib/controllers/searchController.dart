
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:githubapiassignment/core/routes/app_routes.dart';
import 'package:githubapiassignment/models/get_user_model.dart';
import 'package:githubapiassignment/services/api_services.dart';

class SearchScreenController extends GetxController {

  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  late final ApiServices _apiServices;
  late UserModel user;
  var isLoading=false;
  @override
  void onInit() {
    _apiServices = Get.put(ApiServices());
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void searchUser()  {
    if (formKey.currentState!.validate()) {
      isLoading=true;
      update();
    _apiServices.getUser(usernameController.text).then((result) async {
      print(result);
      isLoading=false;
      update();
      if (result != null) {
        user=result;
        Get.toNamed(Routes.HOME,arguments:user );
      } else {
        Get.defaultDialog(
            middleText:"result is null",
            textConfirm: 'OK',
            confirmTextColor: Colors.white,
            onConfirm: () {
              Get.back();
            });
      }
    }, onError: (err) {
      isLoading=false;
      update();
      Get.defaultDialog(
          middleText:err.toString(),
          textConfirm: 'OK',
          confirmTextColor: Colors.white,
          onConfirm: () {
            Get.back();
          });
    });
  }}
}