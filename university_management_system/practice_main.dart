import 'classes.dart';

void main(List<String> args) {
  Student s1 = Student();
  s1.name = "Ali";
  s1.age = 20;
  s1.gender = "Male";

  Teacher t1 = Teacher();
  t1.name = "Dr. Ahmed";

  Course oop = Course();
  oop.setCourseName = "Object Oriented Programming";
  oop.setCredits = 3;

  s1.enroll(oop);
  t1.teach(oop);

  printPersonDetail(s1);
  printPersonDetail(t1);
}
