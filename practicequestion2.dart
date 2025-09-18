typedef int doubleNumbersFunction(int num);
void main() {
  List<int> numbers = [20, 30, 40, 50, 60];

  numbers.forEach((num) {
    doubleNumbersFunction doubled = doubleNum;
    print(doubleNum(num));
  });
}

int doubleNum(int num) {
  return num * 2;
}
