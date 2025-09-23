import 'dart:io';

void main(List<String> args) {
  List<String> friends = ["Ali", "Haseeb"];

  try {
    print(friends[200]);
    int age = int.parse(stdin.readLineSync()!);
    print(age);
  } on RangeError catch (e) {
    print(e);
    print("Frineds 2 thy 200 hogaye wah ?");
  } catch (e) {
    print(e);
  }
}
