import 'dart:math';

void main() {
  int resultado1 = somar(2,3);
  resultado1 *= 2;
  int resultado2 = somarNumerosAleatorios();
  print(resultado1);
  print(resultado2);
}

int somar(int x, int y)
{
  return x + y;
}

int somarNumerosAleatorios()
{
  int x = Random().nextInt(11);
  int y = Random().nextInt(11);

  print("Os valores sorteados forma $x e $y.");

  return x + y;
}