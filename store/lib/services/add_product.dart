import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct({required ProductModel product}) async {
    Map<String, dynamic> data =
        // ignore: missing_required_param
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      "title": product.title,
      "price": product.price,
      "description": product.description,
      "image": product.image,
      "category": product.category
    });
    return ProductModel.fromJson(data);
  }
}
