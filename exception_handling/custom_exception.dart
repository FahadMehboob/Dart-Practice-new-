import 'contact.dart';

void main(List<String> args) {
  Contact contact = Contact();

  try {
    contact.setEmail = "abc@gmail.com";
    contact.setPhone = "03256987456";
  } on InvalidEmailException catch (e) {
    print(e.runtimeType);
    print("invalid email hai bhai : ${e.message} ye waja hai");
  } on InvalidPhoneException catch (e) {
    print(e.runtimeType);
    print("invalid phone Number hai bhai : ${e.message} ye waja hai");
  } catch (e) {
    print(e.runtimeType);
    print(e);
  } finally {
    print("finally to chalega");
  }
}

class InvalidEmailException implements Exception {
  String message = '';

  InvalidEmailException(this.message);
}

class InvalidPhoneException implements Exception {
  String message = '';

  InvalidPhoneException(this.message);
}
