void main() {
  var sum = (int a, int b) {
    print(a + b);
  };

  sum(10, 20);
  sum(100, 200);

  List<String> achyDost = ["Ali", "Noman", "Ahsan", "Ahmed"];
  achyDost.forEach((name) {
    print(name);
  });
}
