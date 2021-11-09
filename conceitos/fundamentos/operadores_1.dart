main() {
  
  // Operadores Aritmeticos (operadores binario/infix)
  int a = 7;
  int b = 3;

  int result = a + b;

  print(result);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(a + (b + a) - (a / b));

  // Operadores Lógicos
  bool isFragile = true;
  bool isExpensive = false;

  print(isFragile && isExpensive); // And
  print(isFragile || isExpensive); // Or
  print(isFragile ^ isExpensive); // Xor exclusive
  print(!isFragile); // Not (Unario/Prefix)
}