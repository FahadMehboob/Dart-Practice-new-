void main() {
  Contact contact = Contact.withChanges("Fahad", "emailails");

  print(contact.name);
  print(contact.email);
}

class Contact {
  String name = "";
  String phone = "";
  String email = "";
  String address = "";

  Contact();

  // Contact(this.name, {this.phone = "", this.email = "", this.address = ""}) {
  //   if (!this.email.contains("@")) {
  //     print("Email address is invalid");
  //   } else {
  //     print("Email address is valid");
  //   }
  // }

  factory Contact.withChanges(String n, String e) {
    Contact c = Contact();
    c.name = n;
    c.email = e;

    if (e.contains("@")) {
      print("Email address is valid");
    } else {
      print("Email address is invalid");
      c.name = n;
      c.email = "";
    }
    return c;
  }
}
