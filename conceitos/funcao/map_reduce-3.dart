main()
{
  var alunos = 
  [
    {"nome": "João", "nota": 9.9},
    {"nome": "Maria", "nota": 9.3},
    {"nome": "Ricardo", "nota": 8.7},
    {"nome": "Henrique", "nota": 8.1},
    {"nome": "Ronaldo", "nota": 7.6},
    {"nome": "Jonas", "nota": 6.8}
  ];

  var notasFinais = alunos
    .map((aluno) => aluno["nota"])
    .map((nota) => (nota as double))
    .where((nota) => nota >= 8);

  var total = notasFinais
    .reduce((total, atual) => total + atual);

  print("valor da média é: ${total / notasFinais.length}");
}