import 'package:get/get.dart';
import 'package:githubapiassignment/controllers/searchController.dart';
class SearchScreenBinding implements Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<SearchScreenController>(() {
      return SearchScreenController();

    });
  }}