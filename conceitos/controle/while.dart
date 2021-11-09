import 'dart:io';

main()
{
  var digitado = "";

  int a = 0;
  while(a < 10)
  {
    print(a);
    a++;
  }

  while(digitado != "sair")
  {
    stdout.write("Digite algo ou sair: ");
    digitado = stdin.readLineSync().toString();
  }
  
  do
  {
    stdout.write("Digite algo ou sair: ");
    digitado = stdin.readLineSync().toString();
  } while(digitado != "sair");

  print("Fim do programa!");
}