import '../modelo/carro.dart';

main()
{
  var carro = new Carro();
  
  while(!carro.estaNoLimite())
  {
    print("Velocidade atual: ${carro.acelerar()} Km/h");
  }

  print("O carro chegou no máximo com velocidade ${carro.velocidadeAtual} Km/h");
  
  while(!carro.estaParado())
  {
    print("Velocidade atual: ${carro.frear()} Km/h");
  }  
  
  carro.velocidadeAtual = 3;
  print("O carro parou com velocidade ${carro.velocidadeAtual} Km/h");
}