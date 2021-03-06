import 'dart:convert';
import 'package:furniture_app/models/products_model.dart';
import 'package:http/http.dart' as http;

Future<List<Product>> getProducts() async {
  var apiUrl =
      Uri.parse("https://5f210aa9daa42f001666535e.mockapi.io/api/products");
  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<Product> products = (json.decode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    return products;
  } else {
    throw Exception('Failed to load');
  }
}
