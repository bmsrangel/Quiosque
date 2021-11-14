import 'package:quiosque/app/core/models/product_model.dart';

class OrderModel {
  OrderModel({
    required this.id,
    required this.tableNumber,
    required this.status,
    required this.productsOrdered,
  });

  final int id;
  final int tableNumber;
  final bool status;
  final List<ProductModel> productsOrdered;

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id'],
      tableNumber: map['table_number'],
      status: map['status'],
      productsOrdered: (map['products_ordered'] as List)
          .map((productMap) => ProductModel.fromMap(productMap))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'table_number': tableNumber,
      'status': status,
      'products_ordered':
          productsOrdered.map((product) => product.toMap()).toList(),
    };
  }
}
