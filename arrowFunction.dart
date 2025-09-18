void main() {
  print(isTeaReady(-10));

  List<String> shops = ["Gul Ahmed", "Khaadi", "J.", "Alkaram"];

  shops.map((shop) => print("shop Name : $shop")).toList();
}

bool isTeaReady(int numSpoons) => numSpoons > 0;
