main()
{
  var adicao = (int a, int b) =>
  {
    a + b
  };
  print(adicao(4,19));
  print(adicao(4,19) is Set); // pelas chaves após arrow function

  var subtracao = (int a, int b) => a - b;
  var multiplicacao = (int a, int b) => a * b;
  var divisao = (int a, int b) => a / b;
  print(subtracao(5,2));
  print(multiplicacao(5,2));
  print(divisao(5,2));
}