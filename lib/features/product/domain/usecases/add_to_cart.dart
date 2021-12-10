import 'package:xenshop_core/xenshop_core.dart';

import '../entity/xenshop_cart_product.dart';
import '../repositories/xenshop_product_repository.dart';

class AddToCart extends UseCase<bool, AddToCartParams> {
  final ErrorHandler _errorHandler;
  final XenshopProductRepository _repository;

  AddToCart({
    required ErrorHandler errorHandler,
    required XenshopProductRepository repository,
  })  : _errorHandler = errorHandler,
        _repository = repository;

  @override
  Future<bool> build(AddToCartParams params) async =>
      await _repository.addToCart(
        userId: params.userId,
        date: DateTime.now(),
        products: [
          params.product,
        ],
      );

  @override
  ErrorHandler errorHandler() => _errorHandler;
}

class AddToCartParams {
  final int userId;
  final XenshopCartProduct product;

  const AddToCartParams({
    required this.userId,
    required this.product,
  });
}
