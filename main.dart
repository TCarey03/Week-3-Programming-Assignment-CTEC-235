import 'Product.dart';
import 'Bundle.dart';

void main() {
  // Regular product
  Product regularProduct = Product(
    name: "Wireless Mouse",
    basePrice: 30.00,
    stockQuantity: 15,
  );

  // Sale product
  Product saleProduct = Product.onSale(
    name: "Gaming Keyboard",
    basePrice: 80.00,
    stockQuantity: 5,
  );

  // Bulk product
  Product bulkProduct = Product.bulk(
    name: "USB Cables",
    basePrice: 10.00,
    stockQuantity: 20,
    packageSize: 5,
  );

  print("Regular Product:");
  print("Name: ${regularProduct.name}");
  print("Price: \$${regularProduct.discountedPrice}");
  print("Low Stock: ${regularProduct.isLowStock}");

  print("\nSale Product:");
  print("Name: ${saleProduct.name}");
  print("Price: \$${saleProduct.discountedPrice}");
  print("Discount: ${saleProduct.discount}%");
  print("Low Stock: ${saleProduct.isLowStock}");

  print("\nBulk Product:");
  print("Name: ${bulkProduct.name}");
  print("Price: \$${bulkProduct.discountedPrice}");
  print("Stock: ${bulkProduct.stockQuantity}");
  print("Low Stock: ${bulkProduct.isLowStock}");

  // Create a bundle
  Bundle bundle = Bundle([
    regularProduct,
    saleProduct,
    bulkProduct,
  ]);

  print("\nBundle:");
  print("Total Price: \$${bundle.totalPrice}");
}
