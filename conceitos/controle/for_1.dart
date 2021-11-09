main()
{
  for(int i = 0; i < 10; i++)
  {
    print("i = $i");
  }

  for(int a = 100; a >= 0; a -= 4)
  {
    print("a = $a");
  }

  for(int i = 1; i <= 10; i++)
  {
    print("9 * $i = ${9 * i}");
  }

  int b = 0;
  for(; b <= 10; b++)
  {
    print("b = $b");
  }

  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];
  for(var i = 0; i < notas.length; i++)
  {
    print("Nota ${i + 1} = ${notas[i]}");
  }

  print("Fim do programa!");
}