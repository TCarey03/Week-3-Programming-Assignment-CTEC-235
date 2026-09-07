class Product {
  String name;
  double basePrice;
  int stockQuantity;
  double discount;

  Product({
    required this.name,
    required this.basePrice,
    this.stockQuantity = 0,
    this.discount = 0,
  });

  // Creates a product with a 10% discount.
  Product.onSale({
    required this.name,
    required this.basePrice,
    this.stockQuantity = 0,
  }) : discount = 10;

  // Creates a product with stock based on the package size.
  Product.bulk({
    required this.name,
    required this.basePrice,
    required int packageSize,
    this.discount = 0,
  }) : stockQuantity = packageSize;

  double get discountedPrice {
    if (discount > 0) {
      return basePrice * (1 - discount / 100);
    }

    return basePrice;
  }

  bool get isLowStock {
    return stockQuantity < 10;
  }
}
