class Alumno {
  var nombre = "no_name";
  int edad = 0;

  // Alumno() {
  //   print("constructor");
  // }

  void estudiar() {
    print("alumno estudiando");
  }

  @override
  String toString() {
    return "Yo me llamo: $nombre y tengo $edad años";
  }
}

void main() {
  Alumno mac = Alumno();
  final ciencias = new Alumno();
  Alumno porro;

  mac.nombre = "Don Mac";
  mac.edad = 20;
  ciencias.nombre = "Chavito ciencias";

  porro = mac;
  porro.nombre = "Don chaca";

  print(mac.nombre);
  print(ciencias.nombre);
  print(porro.nombre);

  print(ciencias);
  print(mac);
}
