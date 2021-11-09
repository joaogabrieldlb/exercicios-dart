main() {
  saudarPessoa(idade: 33, nome: "João");
  saudarPessoa(nome: "João", idade: 23);

  imprimirData(7, ano: 2020, mes: 12);
  imprimirData(7, ano: 2020);
  imprimirData(7, mes: 1);

}

saudarPessoa({String? nome, int? idade}) 
{ 
  print("Olá $nome nem parece que vode tem $idade anos.");
}

imprimirData(int dia, {int ano = 1970, int mes = 1})
{
  print("$dia/$mes/$ano");
}