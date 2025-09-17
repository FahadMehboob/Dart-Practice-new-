import 'dart:io';

void main() {
  if (isPartyReady()) {
    print("Party is ready, let's start!");
  } else {
    print("Party is not ready yet.");
  }

  List<String> guests = [];

  addGuest(guests);
  guestList(guests);

  teaPartyOrder(3, true, paratha: true);
  teaPartyOrder(2, false);
}

bool teaPartyOrder(int cups, bool cut,
    {int sugarSpoons = 2, bool paratha = false}) {
  print("""
Cups: $cups, Sugar Spoons: $sugarSpoons, Cut: $cut, Paratha: $paratha""");
  return true;
}

bool isPartyReady() {
  int teaCups = 5;
  bool parathaAvailable = true;
  bool snacksAvailable = true;

  return teaCups > 3 && parathaAvailable && snacksAvailable;
}

void addGuest(List<String> guests) {
  print("Enter Guest Name:");
  String guestName = stdin.readLineSync()!;
  guests.add(guestName);
  print("$guestName added to the guest list.");
}

void guestList(List<String> guests) {
  print("-- Guest List ---");
  int sno = 1;
  for (String guest in guests) {
    print("\n ${sno++} . $guest \n");
  }
  print("----");
}
