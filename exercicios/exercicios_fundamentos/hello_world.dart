void main()
{
  print("Hello World!");

  final name = "Edson";
  final String nickname = "colorado";

  const bar = 10000;
  const double atm = 1.01325 * bar;

  var texto1 = "Edson" " " " Moreno";
  print(texto1);

  var texto2 = "Edson" + " " + "Moreno";
  print(texto2);

  var texto3 = """
Edson
Ifarraguirre
Moreno
""";
  print(texto3);

  var a, b;
  a = 0;
  b = ++a;
  print(a);
  print(b);

  assert(a == b);

  a = 0;
  print(a);
  b = a++;
  print(b);

  assert(a != b);

}