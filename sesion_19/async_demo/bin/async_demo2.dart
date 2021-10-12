Future<void> main() async {
  print("antes del future");

  try {
    final value = await Future<int>.delayed(
      Duration(seconds: 2),
      () => 23,
    );
    throw Exception("Hubo un error");
    print("Valor: $value");
  } catch (error) {
    print(error);
  } finally {
    print("Despues del future");
  }
}
