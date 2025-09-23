typedef int mathOperation(int a, int b);
void main() {
  List<mathOperation> operations = [add, multiply];

  for (var operation in operations) {
    print(operation(10, 20));
  }
}

int add(int a, int b) {
  return a + b;
}

int multiply(int a, int b) {
  return a * b;
}
