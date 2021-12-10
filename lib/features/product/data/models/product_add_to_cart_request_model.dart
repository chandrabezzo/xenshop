class ProductAddToCartRequestModel {
    ProductAddToCartRequestModel({
      required this.productId,
      required this.quantity,
    });

    final int productId;
    final int quantity;

    factory ProductAddToCartRequestModel.fromJson(Map<String, dynamic> json) 
      => ProductAddToCartRequestModel(
        productId: json['product_id'],
        quantity: json['quantity'],
    );

    Map<String, dynamic> toJson() => {
        'product_id': productId,
        'quantity': quantity,
    };
}
