import 'package:store/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> categories =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    // http.Response response = await http.get(
    //   Uri.parse('https://fakestoreapi.com/products/categories'),
    // );
    return categories;
  }
}
