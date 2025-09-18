typedef int discountFunction(int price);

void main() {
  List<discountFunction> discounts = [
    tenPercentDiscount,
    twentyPercentDiscount,
    fiftyPercentDiscount,
  ];

  for (var discount in discounts) {
    print(discount(1000));
  }
}

int tenPercentDiscount(int price) {
  return price - (price * 10 ~/ 100);
}

int twentyPercentDiscount(int price) {
  return price - (price * 20 ~/ 100);
}

int fiftyPercentDiscount(int price) {
  return price - (price * 50 ~/ 100);
}
