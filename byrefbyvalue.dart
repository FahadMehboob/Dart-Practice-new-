import 'dart:io';

void main() {
  print("Reference vs Value");
  List<String> contacts = [];

  while (true) {
    mainMenu(contacts);
  }
}

void mainMenu(List<String> contacts) {
  print("=========== Main Menu ===========");
  print("1. Add Contact");
  print("2. View Contacts");
  print("3. Exit");
  print("=========== Main Menu ===========");
  print("Choose an option:");

  String options = stdin.readLineSync()!;
  if (options == '1') {
    addContact(contacts);
  } else if (options == '2') {
    listContacts(contacts);
  } else {
    exit(0);
  }
}

void addContact(List<String> contacts) {
  print("Enter contact name:");
  String contactName = stdin.readLineSync()!;
  contacts.add(contactName);
}

void listContacts(List<String> contacts) {
  print("Contacts List:");
  print("adaadad");
  int sno = 1;
  for (String contact in contacts) {
    print("${sno++}. $contact");
  }
}
