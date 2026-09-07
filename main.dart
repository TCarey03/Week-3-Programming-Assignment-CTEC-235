import 'Product.dart';

void main() {
  Product product = Product("Wireless Headphones", 100.00, 8, 10);

  print("Product: ${product.name}");
  print("Base Price: \$${product.basePrice}");
  print("Discounted Price: \$${product.discountedPrice}");
  print("Low Stock: ${product.isLowStock}");
}
