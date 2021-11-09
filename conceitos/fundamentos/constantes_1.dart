import 'dart:io';

main() {
  // Area da circunferencia = PI * raio * raio

  // constante em tempo de compilacao
  const PI = 3.1415;

  stdout.write("Informe o raio: ");
  // constante em tempo de runtime
  // solicitar input do usuário com o numero do raio
  final entradaDoUsuario = stdin.readLineSync();
  final double raio = double.parse(entradaDoUsuario!);

  // efetuar calcula da area
  final area = PI * raio * raio;

  // imprime valor da area calculado de acordo com o raio especificado pelo usuário
  print("O valor do área é $area");
}
