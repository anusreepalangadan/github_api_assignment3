import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:githubapiassignment/controllers/repo_webView_controller.dart';
import 'package:githubapiassignment/core/resources/color_res.dart';
import 'package:webview_flutter/webview_flutter.dart';
class RepoWebView extends StatefulWidget {
String repoUrl;
   RepoWebView({Key? key,required this.repoUrl}) : super(key: key);


  @override
  _RepoWebViewState createState() => _RepoWebViewState();
}

class _RepoWebViewState extends State<RepoWebView> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  RepoWebViewController repoWebViewController=Get.put(RepoWebViewController());

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorRes.primaryColor),
        title: Obx(
                (){
            return repoWebViewController.isLoading.value?Text("Loading...",style: TextStyle(color:  ColorRes.primaryColor)) : Text("Repo",style: TextStyle(color:  ColorRes.primaryColor),);
          }
        ),
      ) ,
      body: WebView(
            initialUrl: widget.repoUrl,
        onPageStarted: (String url) {
          print('Page started loading: $url');
          repoWebViewController.isLoading.value=true;
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');
          repoWebViewController.isLoading.value=false;
        },
          )

    );
  }
}