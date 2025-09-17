typedef bool mairaLunchFunction(String lunchName);
void main() {
  mairaLunchFunction lunch = eatLunch;

  // print(lunch("Pizza"));
  lunch("Pizza");
}

bool eatLunch(String lunchName) {
  print(lunchName);
  return true;
}
