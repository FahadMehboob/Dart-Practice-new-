void main() {
  List<String> packingItems = ["Clothes", "Shoes", "Camera"];

  packingItems.add("Caps");

  packingItems.forEach(everyPackingItem);

  // packingItems.map((e) {
  //   print(e[0]);
  // }).toList();

  List<String> packingItemsFirstChar = [];
  for (String item in packingItems) {
    packingItemsFirstChar.add(firstChar(item));
  }
  print(packingItemsFirstChar);
}

String firstChar(String packingItems) {
  return packingItems[0];
}

void everyPackingItem(String item) {
  print("item : $item");
}
