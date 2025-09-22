abstract class Human {
  String name = '';
  int age = 0;
  String gender = "";

  void work();

  void run() {
    print("Human is running");
  }
}

class Employee extends Human implements Graduate {
  String idNumber = 'Abc234';

  @override
  void work() {}

  void play() {
    print("I Play Football");
  }

  @override
  void topiUrao() {
    print("Mai nahi urata mobile acha nahi");
  }

  @override
  kiaParhaHaiApny() {}
}

class Manager extends Employee {
  @override
  work() {
    print("Manager is managing the department");
  }
}

class OfficeBoy extends Employee {
  @override
  work() {
    print("For utility work");
  }
}

abstract class SportsPerson {
  void play();
}

abstract class Graduate {
  void topiUrao();

  kiaParhaHaiApny() {
    print("Mai Graduate hun");
  }
}

class Teacher extends SportsPerson {
  @override
  void play() {}
}
