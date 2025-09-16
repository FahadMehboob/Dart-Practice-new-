void main() {
  // MamaChaiOrder(2, true, 3, true);
  MamaChaiOrder(2, true, paratha: true);
}

bool MamaChaiOrder(int cups, bool cut,
    {int cheeniSpoon = 2, bool paratha = false}) {
  print("""
ye lo chai agayi
Cups: $cups, CheeniSpoon: $cheeniSpoon, Cut: $cut, Paratha: $paratha
""");

  return false;
}
