import '../helper/api.dart';
import '../models/product_model.dart';

class CategoryService {
  Future<List<ProductModel>> getCategoryProducts(
      {required String categoryName}) async {
    //🚨🚨🚨🚨  DON'T FORGET to remove " : " From the postman link🚨🚨🚨🚨
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> categoryProducts = [];

    for (var i = 0; i < data.length; i++) {
      categoryProducts.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return categoryProducts;
  }
}
