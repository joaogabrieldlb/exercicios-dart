main()
{
  Map<String, double> notas = {
    "João Gabriel" : 9.1,
    "Felipe Silva" : 10.0,
    "Maria Edurada" : 7.5,
    "Cláudia" : 8.8,
    "Pedro" : 9.0
  };

  for(String nome in notas.keys)
  {
    print("Nome do aluno é $nome e a nota é ${notas[nome]}.");
  }

  for(var nota in notas.values)
  {
    print("A nota é $nota.");
  }

  for(var registro in notas.entries)
  {
    print("O ${registro.key} tem nota ${registro.value}.");
  }
}