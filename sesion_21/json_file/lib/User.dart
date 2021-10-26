import 'dart:convert';

class User {
  String? nombre;
  String? apellidos;
  int? edad;

  User({
    this.nombre,
    this.apellidos,
    this.edad,
  });

  @override
  String toString() =>
      'User(nombre: $nombre, apellidos: $apellidos, edad: $edad)';

  /// --- READ JSON TO CLASS
  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'apellidos': apellidos,
      'edad': edad,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      nombre: map['nombre'],
      apellidos: map['apellidos'],
      edad: map['edad'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
