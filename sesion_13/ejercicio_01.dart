abstract class Animal {
  bool estaVivo = true;

  void comer();
  void moverse();

  @override
  String toString() {
    return "Yo soy un $runtimeType";
  }
}

class Perro extends Animal {
  @override
  void comer() {
    // TODO: implement comer
  }

  @override
  void moverse() {
    // TODO: implement moverse
  }
}

void main() {
  final firulais = Perro();
  print(firulais);
}
