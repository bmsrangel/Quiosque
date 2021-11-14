import 'package:quiosque/app/core/models/product_model.dart';

abstract class IProductRepository {
  Future<List<ProductModel>> getAllProducts();
  Future<ProductModel> getProductById(int id);
}
