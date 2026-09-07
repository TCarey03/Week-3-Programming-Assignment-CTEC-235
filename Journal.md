Marketplace Core Journal
Phase 1: Product Foundation
Prompt

Why is it better to use a “getter” for discountedPrice instead of simply creating a second variable (property) like final double discountedPrice?

Response

I think using a getter for discountedPrice is better because the discounted price depends on the product's current basePrice and discount. A getter calculates the value when it is requested instead of storing another value that could become outdated.

For example, if the base price or discount changes, the getter will calculate the new discounted price automatically. If I stored discountedPrice as a separate variable, I would have to make sure that variable was updated whenever the base price or discount changed.

The getter also keeps the calculation inside the Product class, which makes the class easier to use because other parts of the program can simply access product.discountedPrice without needing to know how the calculation works.

-------------------------------------------

Phase 2: Flexible Construction
Prompt

What's different about these constructors? What syntax do you prefer?

Response

The regular constructor allows me to create a product by providing the normal product information. The Product.onSale() named constructor is different because it automatically gives the product a 10% discount. The Product.bulk() named constructor is designed for products that are being added in packages, so it calculates the stock quantity using the package size.

I prefer named parameters because they make the code easier to read. For example, name: "Wireless Mouse" makes it clear what value I am passing to the constructor. I also like named constructors because Product.onSale() and Product.bulk() make it obvious what type of product I am creating.

The named constructors also keep the special construction logic inside the Product class instead of making me calculate the values manually every time I create a product.
