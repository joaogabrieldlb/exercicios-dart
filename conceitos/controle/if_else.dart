import 'dart:math';

main() {
  const MEDIA_HONRA_ACADEMICA = 9.0;
  const MEDIA_APROVACAO = 7.0;
  const MEDIA_RECUPERACAO = 6.0;
  var nota = Random().nextInt(11);

  print("Aluno tirou $nota");
  
  if(nota >= MEDIA_HONRA_ACADEMICA)
  {
    print("Parabéns,");
    print("Quadro de honra!");
  }
  else if(nota >= MEDIA_APROVACAO)
  {
    print("Aprovado!");
  }
  else if(nota >= MEDIA_RECUPERACAO)
  {
    print("Recuperação!");
  }
  else
  {
    print("Reprovado!");
  }
}