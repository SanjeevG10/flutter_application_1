import 'package:flutter_application_1/api%20integration/api%20integration%20using%20http/service/api_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var ProductList = [].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void getProducts() async {
    try {
      isLoading(true);
      var products = await HttpService.fetchProducts();
      if (products != null) {
        ProductList.value = products;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
