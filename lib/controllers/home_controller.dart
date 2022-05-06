
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:githubapiassignment/models/get_user_model.dart';
import 'package:githubapiassignment/models/repo_list_model.dart';
import 'package:githubapiassignment/services/api_services.dart';

class HomeController extends GetxController {
  var tabIndex = 0.obs;
  List<RepoModel>? repos;
 late UserModel user;
  var isLoading=false;
  late final ApiServices _apiServices;
  void changeTabIndex(int index) {
    print(index);
    tabIndex.value = index;
  }

  @override
  void onInit() {
    _apiServices = Get.put(ApiServices());
   user=Get.arguments;
   getRepo();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
  void getRepo()  {
      isLoading=true;
      update();
      _apiServices.getRepo(user.reposUrl!).then((result) async {
        print(result);
        isLoading=false;
        update();
        if (result != null) {
          repos=result;
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
    }
}