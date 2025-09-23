void main(List<String> args) {
  // Human h = Human():
}

mixin Walk {
  void walk() {
    print("walk kar sakta sakti hun");
  }
}

mixin Swim {
  void swim() {
    print("Tair sakta sakti hun");
  }
}

abstract class Animal {
  void eat();
}

abstract class Mammal extends Animal {}

class Dolphin extends Mammal with Swim {
  @override
  void eat() {
    print("Nahi pata");
  }
}

class Bat extends Mammal {
  @override
  void eat() {
    print("Kuch nahi pata");
  }
}

class Cat extends Mammal with Walk {
  @override
  void eat() {
    print("Milk");
  }
}
