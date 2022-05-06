import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:githubapiassignment/controllers/splash_controller.dart';
class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Splash")),
    );
  }
}
