import 'dart:math';

main()
{

  var minhaFnPar = () => print("Valor é par!");
  var minhaFnImpar = () => print("Valor é ímpar!");

  executar(fnPar: minhaFnPar, fnImpar: minhaFnImpar);

}

void executar({required Function fnPar, required Function fnImpar})
{
  int valorSorteado = Random().nextInt(10);
  valorSorteado & 1 == 0 ? fnPar() : fnImpar();
  print("Valor sorteado foi $valorSorteado");
}