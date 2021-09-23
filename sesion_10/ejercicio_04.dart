void main() {
  Set<int> miConjunto = {1, 2, 3, 4, 5, 2, 1};

  Set<int> conjuntoA = {8, 2, 3, 1, 4};
  Set<int> conjuntoB = {1, 6, 5, 4};

  print(miConjunto);

  print(miConjunto.contains(9));
  print(miConjunto.contains(1));

  miConjunto.add(10);
  miConjunto.add(22);
  miConjunto.addAll([7, 33, 102]);

  print(miConjunto);

  miConjunto.remove(1);
  print(miConjunto.contains(1));
  print(miConjunto);

  final interseccion = conjuntoA.intersection(conjuntoB);
  print(interseccion);

  final union = conjuntoA.union(conjuntoB);
  print(union);
}
