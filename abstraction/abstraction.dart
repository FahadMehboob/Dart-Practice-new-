import 'structure.dart';

void main(List<String> args) {
  Human h = Employee();

  Human manager = Manager();

  Graduate ge = Employee();

  if (manager is SportsPerson) {
    SportsPerson managerSportsPersonBhiHai = manager as SportsPerson;
    managerSportsPersonBhiHai.play();
    print("Abc");
  }

  // (manager as Graduate).kiaParhaHaiApny();
}
