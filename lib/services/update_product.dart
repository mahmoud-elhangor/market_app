import 'package:market_app/helper/api.dart';

import '../model/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
      {required String title, price, description, image, category}) async {
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products",
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
