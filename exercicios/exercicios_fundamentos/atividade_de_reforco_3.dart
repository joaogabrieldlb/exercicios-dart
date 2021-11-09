
import 'dart:io';

int sum(int valueX, int valueY) => valueX + valueY;
int multiply(int valueX, int valueY) => valueX * valueY;
int fibonacci(int value) => (value < 2) ? value : fibonacci(value - 1) + fibonacci(value -2);

main()
{
  stdout.write("Digite um valor: ");
  String result = stdin.readLineSync() ?? "";

  if (int.tryParse(result) != null)
  {
    int value = int.tryParse(result) ?? 0;
    int accumulator = 0;
    for (int i = 0; i <= value; i++)
    {
      accumulator = sum(accumulator, i);
    }
    print("Somatorio = $accumulator");

    accumulator = 1;
    for (int i = 1; i <= value; i++)
    {
      accumulator = multiply(accumulator, i);
    }
    print("Produtorio = $accumulator");

    accumulator = 1;
    switch(value)
    {
      case 0:
        accumulator = 1;
        break;
      default:
        for (int i = 1; i <= value; i++)
        {
          accumulator = multiply(accumulator, i);
        }
    }
    print("Fatorial = $accumulator");

    print("Fibonacci= ${fibonacci(value)}");
  }
}