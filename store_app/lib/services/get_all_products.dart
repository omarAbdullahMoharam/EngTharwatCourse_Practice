import 'dart:developer';

import 'package:store/helper/api.dart';
import '../models/product_model.dart';

class AllProductsService {
  // AllProductsService();

  Future<List<ProductModel>> getAllProducts() async {
    //  Link of GET Request here🔻🔻🔍
    // http.Response response = await http.get(
    //   Uri.parse('https://fakestoreapi.com/products'),
    // );

    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    //  decode || extraction of the data here 🔻

    // List<dynamic> data = jsonDecode(response.body);

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
    log(produtsList.length.toString());

    return produtsList;

    //   log("${response.statusCode}Location 🔻🚨 get_all_prodicts");
    //   throw Exception(
    //       "There is a  Problem in the status code ${response.statusCode}");
  }
}
