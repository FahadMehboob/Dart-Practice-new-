void main() {
  var achyDost = goodFriends(
      ["Ali", "Ahmed", "Ahsan", "Asad", "Adeel", "Abdullah", "Aftab"]);

  print(achyDost);
}

List<String> goodFriends(List<String> friends) {
  List<String> finalGoodFriends = [];

  for (String friend in friends) {
    if (friend == 'Ali' || friend == 'Ahsan') {
      finalGoodFriends.add(friend);
    }
  }
  return finalGoodFriends;
}
