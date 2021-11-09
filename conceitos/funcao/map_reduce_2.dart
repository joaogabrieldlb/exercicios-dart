main()
{
  var notas = 
    [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  
  // for (var nota in notas)
  // {
  //   total += nota;
  // }

  double Function(double, double) somar = 
    (double acumulador, double elemento) {
      print("$acumulador $elemento");
      return acumulador + elemento;
    };
  var total = notas.reduce(somar);
  print(total);

  String Function(String, String) juntar = 
  (String acumulador, String elemento) {
    print("$acumulador $elemento");
    return "$acumulador, $elemento";
  };
  
  var nomes = ["Ana", "Bia", "Carlos", "Daniel", "Maria", "Pedro"];
  var resultadoConcatenacao = nomes.reduce(juntar);
  print(resultadoConcatenacao);

}
