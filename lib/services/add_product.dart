import 'package:market_app/helper/api.dart';

import '../model/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title, price, description, image, category}) async {
    Map<String, dynamic> data = await Api().post(
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
