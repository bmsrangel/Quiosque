import 'package:quiosque/app/core/models/order_model.dart';

abstract class IOrdersRepository {
  Future<List<OrderModel>> getAllOrders();
}
