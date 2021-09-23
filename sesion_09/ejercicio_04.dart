class Alumno {
  String nombre = "";
  int _edad = 0;

  Alumno({String nombre = "anonymous", int edad = 0})
      : _edad = edad,
        nombre = nombre;

  @override
  String toString() {
    return "Yo me llamo $nombre y mi edad es de $_edad";
  }
}

// void main() {
//   final lola = Alumno();
//   final nerd = Alumno(nombre: "El nerd");
//   final jose = Alumno(edad: 22);

//   print(lola);
//   print(nerd);
//   print(jose);
// }
