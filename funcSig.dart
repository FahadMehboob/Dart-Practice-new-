void main() {
  Function aikKaam = burgerWala;
  bool cde = aikKaam();
  Function abc = aikKaam;
  print(abc);
  print(cde);
}

bool burgerWala(Function kaam) {
  kaam();
  return true;
}
