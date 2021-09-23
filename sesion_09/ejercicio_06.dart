class Alumno {
  String _nombre = "";
  int _edad = 0;

  Alumno({String nombre = "anonymous", int edad = 0})
      : assert(edad > 0),
        assert(nombre.isNotEmpty),
        _nombre = nombre,
        _edad = edad;

  @override
  String toString() {
    return "Yo me llamo $_nombre y mi edad es de $_edad";
  }
}

void main() {
  final nerd = Alumno(edad: 20);
  print(nerd);
}
