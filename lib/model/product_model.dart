class ProductModel {
  final String title, description, image;
  final int id;
  final double price;
final RatingModel rating;
  ProductModel( {
    required this.rating,
    required this.title,
    required this.description,
    required this.image,
    required this.id,
    required this.price,
  });

  factory ProductModel.fromJson(json) {
    return ProductModel(
      title: json["title"],
      description: json["description"],
      image: json["image"],
      id: json["id"],
      price: json["price"],
      rating: RatingModel.fromJson( json["rating"]),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(json) {
    return RatingModel(
      rate: json ["rate"] ,
      count:json ["count"] ,
    );
  }
}
