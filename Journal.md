Marketplace Core Journal
Phase 1: Product Foundation
Prompt

Why is it better to use a “getter” for discountedPrice instead of simply creating a second variable (property) like final double discountedPrice?

Response

I think using a getter for discountedPrice is better because the discounted price depends on the product's current basePrice and discount. A getter calculates the value when it is requested instead of storing another value that could become outdated.

For example, if the base price or discount changes, the getter will calculate the new discounted price automatically. If I stored discountedPrice as a separate variable, I would have to make sure that variable was updated whenever the base price or discount changed.

The getter also keeps the calculation inside the Product class, which makes the class easier to use because other parts of the program can simply access product.discountedPrice without needing to know how the calculation works.
