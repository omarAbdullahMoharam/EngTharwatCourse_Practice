import 'dart:convert';
import 'dart:developer';

import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  // final String category;

  Future<List<ProductModel>> getCategoryProducts(
      {required String categoryName}) async {
    //🚨🚨🚨 [ToDo]
    //embed the category name passed in the link as a variable
    //🚨🚨🚨&CATEGORY_NAME

    //🚨🚨🚨🚨  DON'T FORGET to remove " : " From the postman link🚨🚨🚨🚨
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'),
    );
    List<ProductModel> categoryProducts = [];
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      for (var i = 0; i < data.length; i++) {
        categoryProducts.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return categoryProducts;
    } else {
      log("${response.statusCode}+Location🚨🔻 get_category");
      throw Exception(
          "there was a problem in the status code ${response.statusCode}");
    }
  }
}
