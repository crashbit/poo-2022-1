class Alumno {
  String nombre = "";
  int edad = 0;

  Alumno({this.nombre = "anonymous", this.edad = 0});

  @override
  String toString() {
    return "Yo me llamo $nombre y mi edad es de $edad";
  }
}

void main() {
  final lola = Alumno();
  final nerd = Alumno(nombre: "El nerd");
  final jose = Alumno(edad: 22);

  print(lola);
  print(nerd);
  print(jose);
}
