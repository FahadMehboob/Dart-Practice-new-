import 'custom_exception.dart';

class Contact {
  String _email = '';

  String _phone = '';

  set setEmail(String email) {
    if (email.contains("@") && email.contains("gmail.com")) {
      _email = email;
    } else {
      if (!email.contains("@")) {
        throw InvalidEmailException("@ lagao bhai email mai");
      } else if (!email.contains("gmail.com")) {
        throw InvalidEmailException(
            "gmail h accept hoti hai gmail.com wali email do");
      }
    }
  }

  String get getEmail => _email;

  set setPhone(String phone) {
    if (phone.length == 11) {
      _phone = phone;
    } else {
      throw InvalidPhoneException("Phone number h ghalat hai");
    }
  }

  String get getPhone => _phone;
}
