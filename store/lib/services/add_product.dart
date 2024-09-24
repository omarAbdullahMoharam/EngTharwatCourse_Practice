import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
    );
    return ProductModel.fromJson(data);
  }
}

// 🚨🚨Example for post Request

  // http.Response response = await http
  //             .post(Uri.parse('https://fakestoreapi.com/products'), body: {
  //           "title": "test",
  //           "price": "12",
  //           "description": "asd asdf asdf  ",
  //           "image":
  //               "https://th.bing.com/th/id/OIP.08o8Ip2gjslXVBT6zUFmJQHaFI?rs=1&pid=ImgDetMain",
  //           "category": "electronics"
  //         }, headers: {
  //           'Accept': 'application/json',
  //           'Content-Type': 'application/x-www-form-urlencoded'
  //         });
  //         log(jsonDecode(response.body).toString());
        