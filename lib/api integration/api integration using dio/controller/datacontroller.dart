import 'package:flutter/animation.dart';
import 'package:flutter_application_1/api%20integration/api%20integration%20using%20dio/model/datamodel.dart';
import 'package:flutter_application_1/api%20integration/api%20integration%20using%20dio/service/dio%20service.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DataController extends GetxController {
  RxList<DataModel> datas = RxList();
  RxBool isLoading = true.obs;
  RxBool isListatDown = false.obs;
  RxBool isNetConnected = true.obs;

  var Url = 'https://jsonplaceholder.typicode.com/posts';
  var itemController = ItemScrollController();
  isInternetConnected() async {
    isNetConnected.value = await InternetConnectionChecker().hasConnection;
  }

  fetchData() async {
    isInternetConnected();
    isLoading.value = true;
    var response = await DioService().getData(Url);
    if (response.statuscode == 200) {
      response.data.forEach((element) {
        datas.add(DataModel.fromJson(element));
      });
      isLoading.value = false;
    }
  }

  scrollToDown() {
    itemController.scrollTo(
        index: datas.length,
        duration: Duration(seconds: 2),
        curve: Curves.bounceIn);
    isListatDown.value = true;
  }

  scrollToup() {
    itemController.scrollTo(
        index: 0, duration: Duration(seconds: 2), curve: Curves.bounceOut);
    isListatDown.value = false;
  }

  @override
  void onInit() {
    fetchData();
    isInternetConnected();
    super.onInit();
  }
}
