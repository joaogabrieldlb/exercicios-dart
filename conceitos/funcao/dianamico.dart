
import 'dart:math';

main()
{
  juntar(1, 9);
  juntar("Bom ","dia!!");
  
  String resultado = juntar("O valor de PI é",3.1415);
  

}

String juntar(dynamic a, b)
{
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}