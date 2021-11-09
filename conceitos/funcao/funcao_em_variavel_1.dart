main()
{
  int a = 2;
  // tipo nome = valor;
  int Function(int, int) soma1 = somaFn;
  print(soma1(2,3));
  print(soma1(20,312));

  int Function(int,int) soma2 = (int x, int y) 
  {
    return x * y;
  };

  print(soma2(20,2));

  var soma3 = ([int x = 1, int y = 2])
  {
    return x / y;
  };
}

int somaFn(int a, int b)
{
  return a + b;
}