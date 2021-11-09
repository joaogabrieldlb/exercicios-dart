
import 'dart:io';
main() {
  stdout.write("Está chovendo? (s/N) ");
  final resposta1 = stdin.readLineSync();
  bool isChovendo = resposta1 == "s";

  stdout.write("Está frio? (s/N) ");
  bool isFrio = stdin.readLineSync() == "s";

  String resultado = isChovendo && isFrio ? "Ficar em casa" : "Sair";
  print(resultado);
  print(isChovendo && isFrio ? "Azarado!" : "Sortudo!");
  
}