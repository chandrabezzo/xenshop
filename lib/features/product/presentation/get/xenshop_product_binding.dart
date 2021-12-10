import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:xenshop_core/xenshop_core.dart';
import 'package:xenshop_product/domain/usecases/retrieve_categories.dart';
import 'package:xenshop_product/xenshop_product.dart';

import '../../data/datasources/xenshop_product_datasource.dart';
import '../../data/datasources/xenshop_product_datasource_impl.dart';
import '../../data/repositories/xenshop_product_repository_impl.dart';
import '../../domain/repositories/xenshop_product_repository.dart';
import '../../domain/usecases/add_to_cart.dart';
import 'xenshop_product_controller.dart';

class XenshopProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<XenshopProductDatasource>(
      XenshopProductDatasourceImpl(
        client: Get.find<Dio>(),
      ),
    );
    Get.put<ProductDatasource>(
      ProductDatasourceImpl(
        client: Get.find<Dio>(),
      ),
    );

    Get.put<XenshopProductRepository>(
      XenshopProductRepositoryImpl(
        dataSource: Get.find<XenshopProductDatasource>(),
      ),
    );
    Get.put<ProductRepository>(
      ProductRepositoryImpl(
        dataSource: Get.find<ProductDatasource>(),
      ),
    );

    Get.put(
      AddToCart(
        errorHandler: Get.find<ErrorHandler>(),
        repository: Get.find<XenshopProductRepository>(),
      ),
    );
    Get.put(
      RetrieveCategories(
        errorHandler: Get.find<ErrorHandler>(),
        repository: Get.find<ProductRepository>(),
      ),
    );
    Get.put(
      RetrieveProducts(
        errorHandler: Get.find<ErrorHandler>(),
        repository: Get.find<ProductRepository>(),
      ),
    );

    Get.put(XenshopProductController(
      addToCart: Get.find<AddToCart>(),
      retrieveCategories: Get.find<RetrieveCategories>(),
      retrieveProducts: Get.find<RetrieveProducts>(),
    ),);
  }
}
