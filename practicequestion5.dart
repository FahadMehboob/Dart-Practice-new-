void main() {
  Product shoes = Product();
  shoes.name = "Nike";
  shoes.price = 10000;

  Product watch = Product();
  watch.name = "Rolex";
  watch.price = 50000;

  checkOut([shoes, watch], 10);
}

class Product {
  String name = '';
  int price = 0;

  int applyDiscount(int discountPercent) =>
      price - (price * discountPercent ~/ 100);
}

void checkOut(List<Product> cart, int discountPercent) {
  for (var cartItem in cart) {
    print(
        "Product: ${cartItem.name} | Original Price: Rs. ${cartItem.price} | Discount Percent: ${discountPercent}% | Discounted Price: Rs. ${cartItem.applyDiscount(discountPercent)}");
  }
}
