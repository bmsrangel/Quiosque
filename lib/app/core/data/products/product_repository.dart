import 'package:quiosque/app/core/database/db_connection.dart';
import 'package:quiosque/app/core/models/product_model.dart';
import 'package:sqflite/sqflite.dart';

import 'i_product_repository.dart';

class ProductRepository implements IProductRepository {
  ProductRepository(this._connection);

  final DbConnection _connection;

  @override
  Future<List<ProductModel>> getAllProducts() async {
    final Database connection = await _connection.openConnection();
    final results =
        await connection.rawQuery('SELECT id, product, price FROM products');
    return results
        .map((productMap) => ProductModel.fromMap(productMap))
        .toList();
  }

  @override
  Future<ProductModel> getProductById(int id) {
    // TODO: implement getProductById
    throw UnimplementedError();
  }
}
