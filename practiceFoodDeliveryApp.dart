void main() {
  Restaurant foodmania = Restaurant();
  foodmania.name = "Food Mania";
  foodmania.location = "Gulshan";

  Restaurant foodJunction = Restaurant();
  foodJunction.name = "Food Junction";
  foodJunction.location = "Burns Road";

  print("Total Restaurants: ${Restaurant.totalRestaurants}");

  FoodItem biryani = FoodItem();
  biryani.name = "Chicken Biryani";
  biryani.price = 250.0;

  FoodItem burger = FoodItem();
  burger.name = "Beef Burger";
  burger.price = 150.0;

  Order myOrder = Order();
  myOrder.items = [];
  myOrder.calculateTotal();

  myOrder.items = [biryani, burger];
  myOrder.calculateTotal();
}

class Restaurant {
  String name = '';
  String location = '';

  static int totalRestaurants = 0;

  Restaurant() {
    totalRestaurants += 1;
  }
}

class FoodItem {
  String name = '';
  double price = 0.0;

  int get roundedPrice => price.round();
}

class Order {
  List<FoodItem> items = [];
  int total = 0;

  void calculateTotal() {
    total = 0;
    for (var item in items) {
      total += item.roundedPrice;
    }
    setTotal = total;
  }

  set setTotal(int value) {
    if (value == 0) {
      print("Order can't be empty!");
    } else {
      print("Total order amount: Rs. $value");
    }
  }
}
