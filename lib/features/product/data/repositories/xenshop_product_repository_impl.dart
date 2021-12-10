import '../../domain/entity/xenshop_cart_product.dart';
import '../../domain/repositories/xenshop_product_repository.dart';
import '../datasources/xenshop_product_datasource.dart';
import '../mappers/add_to_cart_mapper.dart';

class XenshopProductRepositoryImpl implements XenshopProductRepository {
  final XenshopProductDatasource _dataSource;

  XenshopProductRepositoryImpl({
    required XenshopProductDatasource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<bool> addToCart({
    required int userId,
    required DateTime date,
    required List<XenshopCartProduct> products,
  }) async {
    final model = AddToCartMapper.toModel(
      userId: userId,
      date: date,
      products: products,
    );

    return await _dataSource.addToCart(payload: model);
  }
}
