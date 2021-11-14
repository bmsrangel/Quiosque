class ProductModel {
  ProductModel({
    required this.id,
    required this.product,
    required this.price,
  });

  final int id;
  final String product;
  final double price;

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      product: map['product'],
      price: map['price'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'product': product,
      'price': price,
    };
  }
}
