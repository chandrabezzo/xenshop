import 'product_add_to_cart_request_model.dart';

class AddToCartRequestModel {
    AddToCartRequestModel({
      required this.userId,
      required this.date,
      required this.products,
    });

    final int userId;
    final DateTime date;
    final List<ProductAddToCartRequestModel> products;

    factory AddToCartRequestModel.fromJson(Map<String, dynamic> json) 
      => AddToCartRequestModel(
        userId: json['userId'],
        date: DateTime.parse(json['date']),
        products: List<ProductAddToCartRequestModel>.from(json['products']
          .map((product) => ProductAddToCartRequestModel.fromJson(product),
        ),),
    );

    Map<String, dynamic> toJson() => {
        'userId': userId,
        'date': "${date.year.toString().padLeft(4, '0')}-${date.month
          .toString().padLeft(2, '0')}-${date.day
          .toString().padLeft(2, '0')}",
        'products': List<dynamic>.from(products.map((product) 
          => product.toJson(),),),
    };
}