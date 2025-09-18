void main() {
  Gari tarzan1 = Gari();
  tarzan1.startHojao();
  print("Hello Dart");
  Gari tarzanW11 = Gari(name: "W11");
  tarzanW11.startHojao();

  Gari bus = Gari.engineCCkSath(engineCC: 50000);

  print(bus.engineCC);
}

class Gari {
  String name = "";
  int engineCC = 2000;
  Gari({this.name = "Tarzan"});

  Gari.engineCCkSath({this.engineCC = 2000});

  startHojao() {
    print("Mai khud start hojati hun $name");
  }
}
