import 'Carro.dart';

/**
 * Descricao do problema:
 * 
 * O carro deve ter informacao sobre quilometragem (distancia percorida em quilometros) e sobre o estado do
 * tanque de combustivel. O tanque de combustivel tem capacidade maxima definida durante a instanciacao do
 * objeto. Assuma que o carro faz no maximo 15 km/l. Quando nao ha combustivel, o carro nao consegue deslocar.
 * Apesar disto, posso andar ate o combustivel acabar. Considere ainda que a qualquer momento, como motorista,
 * devo ter acesso ao odometro (saber quantos quilometros o carro já andou) e saber qual o estado do tanque de
 * combustivel. Como motorista, quero poder abastecer o carro. Lembre que o tanque nao deve permitir que sua
 * capacidade máxima seja ultrapassada. Para deslocar o carro, quero poder informar quantos quilometros dirigirei.
 * Lembre que se o combustivel acabar, o carro nao pode continuar andando.
 * 
 */
main()
{
  var carro1 = Carro(80, 20);
  var carro2 = Carro.usado(40, 15, 500);
  var carro3 = Carro(50, 5);
  
  carro1.abastecer(50);
  assert(carro1.tanqueCombustivel == 70);
  print(carro1);

  carro2.abastecer(30);
  assert(carro2.tanqueCombustivel == 15);
  print(carro2);

  carro3.abastecer(45);
  assert(carro3.tanqueCombustivel == 50);
  print(carro3);

  carro1.dirigir(2000);
  assert(carro1.quilometragem == 1050);
  print(carro1);

  carro2.dirigir(150);
  assert(carro2.quilometragem == 650);
  print(carro2);

  carro3.dirigir(750);
  assert(carro3.quilometragem == 750);
  print(carro3);
}
