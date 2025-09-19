void main() {
  Target target = Target("Nearby", "jet is far  away");
  target.jetPosition = "jet is coming closer";
  // Target.targetPositionKiaHai();

  print(target.position);
  print(target.jetPosition);
  Target.jetName = "F22";
  print(Target.jetName);

  print(" ======= ========= =======");

  Target target2 = Target("Faraway", "jet is nearby");
  // Target.targetPositionKiaHai();

  print(target2.position);
  print(target2.jetPosition);
  print(Target.jetName);
}

class Target {
  String position = "";
  String jetPosition = "";
  static String jetName = "F16";

  Target(this.position, this.jetPosition);
  // static String targetPositionKiaHai() => "Target is nearby";
}
