main() {
  int a = 3;
  int b = 4;

  // a = a + 1;
  // a += 1;
  a++; // Postfix
  --a; // Prefix

  print(a);

  // --b vai ser executado primeiro
  // logo apos sera o ==
  // ou seja 3 == 3
  // e por final sera incrementado o a++
  print(a++ == --b);
  print(a == b);

}