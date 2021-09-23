class Alumno {
  String _nombre = "";
  int _edad = 0;

  // Getters
  String get nombre => _nombre;
  int get edad => _edad;

  // Setters
  void set setNombre(String nombre) {
    this._nombre = nombre;
  }

  Alumno(String nombre, int edad) {
    this._nombre = nombre;
    this._edad = edad;
  }
}

void main() {
  final jose = Alumno("Jose", 20);
  print(jose.edad);
  print(jose.nombre);
}
