main()
{
  var alunos = 
  [
    {"nome": "João", "nota": 9.9},
    {"nome": "Maria", "nota": 9.3},
    {"nome": "Ricardo", "nota": 8.7},
    {"nome": "Henrique", "nota": 8.1},
    {"nome": "Ronaldo", "nota": 7.6},
    {"nome": "Jonas", "nota": 6.3}
  ];

  String Function(Map) getNome = (aluno) => aluno["nome"];
  int Function(String) qtdLetras = (texto) => texto.length;
  int Function(int) dobro = (valor) => valor * 2;
  bool Function(int) maiorQue10 = (valor) => (valor > 10) ? true : false;
  
  var resultado = alunos
    .map(getNome)
    .map(qtdLetras)
    .map(dobro)
    .map(maiorQue10);
  
  print(resultado);
}