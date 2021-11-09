main() 
{
  var notas = [8.5, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];

  bool Function(double) notasBoasFn = (double nota) => nota >= 7;
  bool Function(double) notasBoasMuitoFn = (double nota) => nota >= 9;

  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasBoasMuitoFn);

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);
}