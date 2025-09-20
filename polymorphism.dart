void main() {
  Men m = Men("Male", "Javed", 25);
  Women w = Women("Female", "Sara", 30);

  printWorkOfHuman(m);
  print("=========");
  printWorkOfHuman(w);
}

class Human {
  String name = "";
  int age = 0;
  Human({this.name = "", this.age = 0});

  perDayWork() {
    print("Eat");
    print("survive");
    print("Sleep");
  }
}

class Men extends Human {
  String gender = "male";

  Men(this.gender, String n, int a) : super(name: n, age: a);

  @override
  perDayWork() {
    print("Eat");
    print("Work");
    print("Sleep");
  }
}

class Women extends Human {
  String gender = "female";

  Women(this.gender, String n, int a) : super(name: n, age: a);
}

printWorkOfHuman(Human h) {
  h.perDayWork();
}
