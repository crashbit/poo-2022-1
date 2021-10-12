void main() {
  print("Antes del future");

  final myFuture = Future<int>.delayed(
    Duration(seconds: 5),
    () {
      print("Esto no me gusta");
      print("ya me aburri");
      return 5;
    },
  )
      .then((value) => print("El valor de $value"))
      .catchError((error) => print("Error: $error"))
      .whenComplete(() => print("mi funcion se ha completado"));

  print("Despues del future");
}
