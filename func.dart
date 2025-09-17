void main() {
  if (!isChaiAvailable()) {
    print("Chai available hai");
  } else {
    print("Chai available nahi hai");
  }
  bool isReady = TeaOrder(2, true, 3);
  if (isReady == true) {
    print("Chai ready hai ly a mama");
  } else {
    print("Chai nahi ayi ab tak yar");
  }
}

bool TeaOrder(int cups, bool cut, int sugarSpoons) {
  print("Number of cups: $cups, Cut: $cut, Sugar Spoons: $sugarSpoons");
  return false;
}

isChaiAvailable() {
  int cheeni = 1;
  int doodh = 40;
  bool gas = false;
  return cheeni > 0 && doodh > 30 && gas;
}
