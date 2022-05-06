import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:githubapiassignment/controllers/searchController.dart';
import 'package:githubapiassignment/views/sharedWidgets/custom_textField.dart';

import '../sharedWidgets/primary_button.dart';
class SearchScreen extends GetView<SearchScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),

      ),
      body: Form(
        key: controller.formKey,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(label: 'Enter the Username',
                    validator: (text) {
                      if (text!.isEmpty) {
                        return 'Please enter username';
                      } else {
                        return null;
                      }
                    },
                    controller: controller.usernameController,
                    keyboardType: TextInputType.text,
                    prefix:Icons.search ,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: PrimaryButton(
                      text: "SEARCH",  onPressed:controller.searchUser,),
                  ),
                  SizedBox(height: 20,),
                  GetBuilder<SearchScreenController>(
                    builder: (c) {
                      return c.isLoading?CircularProgressIndicator():Container();
                    }
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
