import 'package:market_app/helper/api.dart';
import 'package:market_app/model/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesServices(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> categoryList = [];
    for (int i = 0; i < data.length; i++) {
      categoryList.add(ProductModel.fromJson(data[i]));
    }
    return categoryList;
  }
}
