import 'dart:convert';

import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  final ProductModel productModel;
  AllProductsService({required this.productModel});

  Future<List<ProductModel>> getAllProducts() async {
    //  Link of GET Request here🔻🔻🔍
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    //  decode || extraction of the data here 🔻

    List<dynamic> data = jsonDecode(response.body);

    // list contains all products here🔻🔻
    List<ProductModel> produtsList = [];
    // fill the list items by looping in the returned decoded Response data here🔻🔻
    for (var i = 0; i < data.length; i++) {
      produtsList.add(
        ProductModel.fromJson(
          data[i],
        ),
      );
    }

    return produtsList;

    //   log("${response.statusCode}Location 🔻🚨 get_all_prodicts");
    //   throw Exception(
    //       "There is a  Problem in the status code ${response.statusCode}");
  }
}
