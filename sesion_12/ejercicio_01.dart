enum Grade { A, B, C, D, F }

class Person {
  String lastname;
  String firstname;

  // getter
  String get fullname => "$firstname $lastname";

  Person(this.lastname, this.firstname);

  void doSomeWork() {
    print("Person trabajando");
  }

  @override
  String toString() => fullname;
}

class Student extends Person {
  var grades = <Grade>[];

  // Override al getter
  @override
  String get fullname => "$lastname  $firstname";

  Student(String lastname, String firstname) : super(lastname, firstname);

  @override
  void doSomeWork() {
    print("Student haciendo trabajo");
    super.doSomeWork();
  }
}

class StudentBandMember extends Student {
  StudentBandMember(String lastname, String firstname)
      : super(lastname, firstname);

  static const minimumPracticeTime = 2;
}

class StudentPlayer extends Student {
  StudentPlayer(String lastname, String firstname) : super(lastname, firstname);

  bool get scholarShip => grades.every((grade) => grade != Grade.F);
}

void main() {
  final pedro = Student("Perez", "Pedro");
  final nobody = Person("apellido", "nombre");

  final baterista = StudentBandMember("drummer", "boy");
  final player = StudentPlayer("player", "body");

  final calificacion = Grade.A;
  final calificacion2 = Grade.F;
  pedro.grades.add(calificacion);
  print(nobody);
  print(pedro);
  print(baterista);
  print(player);
  player.grades.add(calificacion);
  print(player.scholarShip);
  pedro.doSomeWork();

  final students = [pedro, baterista, player];
  print("------");
  print(player is Object);
  print(player is Person);
  print(player is Student);
  print(player is StudentBandMember);
  print(player is StudentPlayer);
}
