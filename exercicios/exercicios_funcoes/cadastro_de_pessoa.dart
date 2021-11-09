
/**
 * Descricao do problema:
 * 
 * Elabore um cadastro de pessoas. Cada pessoa deve ter uma sinalização de sexo (M/F), uma idade e um 
 * salario. Utilize coleção para a construção deste cadastro. A partir da coleção elaborada, resolva 
 * as questões que seguem usando os conceitos funcionais apresentados e investigue outras oportunidades
 *  disponível na documentação.
 * 
 */
enum Sexo
{
  M,F
}

class Pessoa
{
  Sexo _sexo;
  int _idade;
  double _salario;

  Pessoa(this._sexo, this._idade, this._salario);

  Sexo get sexo => this._sexo;
  int get idade => this._idade;
  double get salario => this._salario;
 
  @override
  String toString() {
    return "Pessoa [sexo: ${_sexo}, idade: $_idade, salario: $_salario]";
  }
}

main()
{
  List<Pessoa> cadastros = 
  [
    Pessoa(Sexo.F, 18, 400.0),
    Pessoa(Sexo.M, 22, 3271.99),
    Pessoa(Sexo.F, 39, 18392.50),
    Pessoa(Sexo.F, 25, 5024.39),
    Pessoa(Sexo.M, 28, 8694.32),
    Pessoa(Sexo.F, 21, 1500.0),
    Pessoa(Sexo.M, 44, 20000.0),
    Pessoa(Sexo.M, 22, 3214.0),
    Pessoa(Sexo.M, 31, 9623.94)
  ];

  print("Listar o cadastro inteiro:");
  cadastros.forEach((p) => print(p));

  print("\nInformacoes sobre o cadastro:");

  bool Function(Sexo s1, Sexo s2) fnSexo = (s1,s2) => s1 == s2;

  print("Existe mulher? " + cadastros.any((p) => fnSexo(Sexo.F, p.sexo)).toString());
  print("Existe homem? " + cadastros.any((p) => fnSexo(Sexo.M, p.sexo)).toString());
  print("Somente mulheres? " + cadastros.every((p) => fnSexo(Sexo.F, p.sexo)).toString());
  print("Somente homens? " + cadastros.every((p) => fnSexo(Sexo.M, p.sexo)).toString());

  List<Pessoa> listaDeMulheres = cadastros.where((p) => fnSexo(Sexo.F, p.sexo)).toList();
  var mediaIdadesF = listaDeMulheres
    .map((p) => p.idade)
    .reduce((int acumulador, valor) => acumulador + valor) / listaDeMulheres.length;
  assert(mediaIdadesF == 25.75);
  print("Média da idade das mulheres é ${mediaIdadesF.toStringAsFixed(1)} ano(s)");

  List<Pessoa> listaDeHomens = cadastros.where((p) => fnSexo(Sexo.M, p.sexo)).toList();
  var mediaIdadesM = listaDeHomens
    .map((p) => p.idade)
    .reduce((int acumulador, valor) => acumulador + valor) / listaDeHomens.length;
  assert(mediaIdadesM == 29.4);
  print("Média da idade dos homens é ${mediaIdadesM.toStringAsFixed(1)} ano(s)");

  cadastros.sort((p1,p2) => p1.salario.compareTo(p2.salario));
  var pessoaMaiorSalario = cadastros.last;
  assert(pessoaMaiorSalario.salario == 20000.0);
    print("A pessoa com o maior salario é do sexo " + 
      ((pessoaMaiorSalario.sexo == Sexo.M) ? "masculino" : "feminino") + 
      ", \nseu salario e de R\$${pessoaMaiorSalario.salario.toStringAsFixed(2).replaceAll(".", ",")}");
  
  bool Function(double salario, double mediaSalarios) fnSalario = 
    (salario,mediaSalarios) => salario < mediaSalarios;

  var mediaSalarioF = listaDeMulheres
    .map((p) => p.salario)
    .reduce((double acumulador, valor) => acumulador + valor) / listaDeMulheres.length;
  print("Média salarial das mulheres é R\$${mediaSalarioF.toStringAsFixed(2).replaceAll(".", ",")}");

  cadastros
    .removeWhere((p) => fnSexo(Sexo.F, p.sexo) && fnSalario(p.salario, mediaSalarioF));

  var mediaSalarioM = listaDeHomens
    .map((p) => p.salario)
    .reduce((double acumulador, valor) => acumulador + valor) / listaDeHomens.length;
  print("Média salarial dos homens é R\$${mediaSalarioM.toStringAsFixed(2).replaceAll(".", ",")}\n");

  cadastros
    .removeWhere((p) => fnSexo(Sexo.M,p.sexo) && fnSalario(p.salario, mediaSalarioM));

  print("Lista de cadastrados apos remocao:");
  cadastros.forEach((p) => print(p));
}