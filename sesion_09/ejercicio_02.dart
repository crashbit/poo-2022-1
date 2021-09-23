class Alumno {
  String nombre = "";
  int edad = 0;

  Alumno(this.nombre, this.edad);

  Alumno.anomymous() {
    this.nombre = 'anonymous';
    this.edad = 0;
  }

  Alumno.empty() {
    this.nombre = '';
    this.edad = 0;
  }

  // Forwarding constructor
  Alumno.novato() : this('novato', 0);

  @override
  String toString() {
    return "Yo me llamo $nombre y mi edad es de $edad";
  }
}

void main() {
  Alumno nerd = Alumno('El nerd', 20);
  Alumno jose = Alumno.anomymous();
  Alumno lola = Alumno.empty();
  print(nerd);
  print(jose);
  print(lola);
}
