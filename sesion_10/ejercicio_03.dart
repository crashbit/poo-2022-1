void main() {
  var comidas = ['frijoles', 'huevo', 'quesadillas', 'gorditas'];

  var otrasComidas = ["hotdogs", "tacos de canasta", "donas"];

  List<String> postres = [];
  var misComidas = ["tlacoyos", ...comidas, ...otrasComidas];

  print(comidas[2]);

  final indice = comidas.indexOf("quesadillas");
  print(indice);

  comidas[3] = "enchiladas";

  comidas.add("tacos");
  print(comidas);

  comidas.remove("huevo");
  print(comidas);

  comidas.removeAt(3);
  print(comidas);

  // Spread operator

  print(misComidas);
}
