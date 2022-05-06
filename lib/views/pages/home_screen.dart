import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:githubapiassignment/controllers/home_controller.dart';
import 'package:githubapiassignment/core/resources/color_res.dart';
import 'package:githubapiassignment/views/pages/profile_tab.dart';
import 'package:githubapiassignment/views/pages/repo_tab.dart';
class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: ClipRRect(
          borderRadius:const BorderRadius.only(
            topLeft: Radius.circular(20.0),
          ),
          child: Obx((){
            return BottomNavigationBar(
              backgroundColor: ColorRes.primaryColor,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white30,
              currentIndex: controller.tabIndex.value,
              onTap: controller.changeTabIndex,
              items:const [
                BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profile"),
                BottomNavigationBarItem(icon: Icon(Icons.description),label: "Repository"),
              ],
            );
          }),
        ),
      ),
      body: Obx(() => Center(
        child: IndexedStack(
          index: controller.tabIndex.value,
          children:  [
           ProfileTab(userModel:controller.user),
            GetBuilder<HomeController>(
              builder: (c) {
                return c.isLoading?Center(child: CircularProgressIndicator()):RepoTab(repos: controller.repos!,);
              }
            )
          ],
        ),
      )),
    );
  }
}
