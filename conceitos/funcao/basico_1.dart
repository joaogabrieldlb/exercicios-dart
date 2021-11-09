import 'dart:math';

void main()
{
  int a = 2;
  int b = 3;
  print(a + b);
  
  int c = 4;
  int d = 5;

  somaComPrint(a, b);
  somaComPrint(c, d);
  somaDoisNumerosQuaisquer();

}

void somaComPrint(int valor1, int valor2) 
{
  print(valor1 + valor2);
}

void somaDoisNumerosQuaisquer()
{
  int valor1 = Random().nextInt(11);
  int valor2 = Random().nextInt(11);

  print("Os valores sorteados foram $valor1 e $valor2.");
  somaComPrint(valor1, valor2);
}