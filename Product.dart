class Product {
  String name;
  double basePrice;
  int stockQuantity;
  double discount;

  Product(this.name, this.basePrice, this.stockQuantity, this.discount);

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
