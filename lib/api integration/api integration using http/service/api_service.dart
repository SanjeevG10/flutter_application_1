import 'package:flutter_application_1/api%20integration/api%20integration%20using%20http/model/product%20model.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<List<ProductModel>> fetchProducts() async {
    var responce =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (responce.statusCode == 200) {
      var data = responce.body;
      return productModelFromJson(data);
    } else {
      throw Exception();
    }
  }
}
