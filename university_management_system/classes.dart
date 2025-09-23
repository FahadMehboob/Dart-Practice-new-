abstract class Person {
  String name = '';
  int age = 0;
  String gender = '';

  void role();

  walk() {
    print("Person is walking");
  }
}

class Student extends Person implements SportsPerson {
  int rollNumber = 0;

  List<Course> coursesEnrolled = [];

  @override
  void role() {
    print("I am Student, I study");
  }

  @override
  play() {
    print("I am Sports Person as well");
  }

  enroll(Course c) {
    coursesEnrolled.add(c);
    print("$name enrolled in ${c.getCourseName} with ${c.getCredits}");
  }
}

class Teacher extends Person {
  int employeeId = 0;

  List<Course> courseTeaches = [];

  teach(Course c) {
    courseTeaches.add(c);
    print("$name is teaching ${c.getCourseName}");
  }

  @override
  void role() {
    print("I am Teacher, I teach");
  }
}

abstract class SportsPerson {
  void play();
}

class Course {
  String _courseName = '';
  int _credits = 0;

  set setCourseName(String courseName) {
    _courseName = courseName;
  }

  get getCourseName => _courseName;

  set setCredits(int credits) {
    _credits = credits;
  }

  get getCredits => _credits;
}

printPersonDetail(Person p) {
  p.role();
}
