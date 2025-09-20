void main() {
  Men men = Men("male", "Fahad", 25);

  men.gender;
  men.age;

  men.perDayWork();
}

class Human {
  String name = "";
  int age = 0;
  Human({this.name = "", this.age = 0}) {
    print("Hello From Human");
  }

  perDayWork() {
    print("Eat");
    print("survive");
    print("Sleep");
  }
}

class Men extends Human {
  String gender = "male";

  Men(this.gender, String n, int a) : super(name: n, age: a) {
    print("Hello From Men");
  }

  @override
  perDayWork() {
    print("Eat");
    print("Work");
    print("Sleep");
  }
}

class Women extends Human {
  String gender = "female";

  Women(this.gender);
}
