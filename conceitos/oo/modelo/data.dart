class Data
{
  int? dia;
  int? mes;
  int? ano;

  // Data({int dia = 1, int mes = 1, int ano = 1})
  // {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  Data({this.dia = 1, this.mes = 1, this.ano = 1970});
  // Named Constructors
  Data.com({this.dia = 1, this.mes = 1, this.ano= 1970});
  Data.ultimoDiaDoAno(this.ano) {
    this.dia = 31;
    this.mes = 12;
  }

  @override
  String toString() {
    return "$dia/$mes/$ano";
  }
}

main()
{
  var dataAniversario = new Data(dia: 2,mes: 3);
  // dataAniversario.dia = 2;
  // dataAniversario.mes = 3;
  // dataAniversario.ano = 2021;

  Data dataCompra = Data(dia: 5,ano: 2021);
  // dataCompra.dia = 2;
  // dataCompra.mes = 5;
  // dataCompra.ano = 2021;

  print(dataAniversario);
  print(dataCompra);
  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey será público em $dataFinal");
  print(Data.ultimoDiaDoAno(2021));
}
