main() 
{
  var partesDaArvore = [
    "#",
    "##",
    "###",
    "####",
    "#####",
    "######"
  ];
  
  for(var parte in partesDaArvore)
  {
    print(parte);
  }

  for(var valor = "#"; true ; valor += "#")
  {
    print(valor);
  }
}