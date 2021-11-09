main() {

  // permitindo que o tipo String tambem possa ser null com o (?)
  String? t1 = null;

  // inferencia de tipos
  var n1 = 2;
  var n2 = 4.56;
  
  t1 = "O valor da soma é ";

  // Concatenacao de String juntos a outro tipo necessita chamar o toString() do tipo
  print(t1 + (n1 + n2).toString());

  // imprime o tipo da variavel
  print(n1.runtimeType);
  print(n2.runtimeType);
  print(t1.runtimeType);

  // imprime o resultado do teste entre os tipos de variaveis
  print(n1 is String);
  print(n2 is double);
  print(t1 is int);
}
