main()
{
  var notas = [8.5, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  var notasBoas = [];
  var notasMuitoBoas = [];

  for(var nota in notas)
  {
    if (nota > 7)
    {
      notasBoas.add(nota);
    }
  }

  for(var nota in notas)
  {
    if (nota >= 8.8)
    {
      notasMuitoBoas.add(nota);
    }
  }

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);
}