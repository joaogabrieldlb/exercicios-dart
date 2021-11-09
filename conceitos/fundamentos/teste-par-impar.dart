void main(List args) {
  // laço que realiza repeticoes ate que a variavel valor seja igual ou maior que 10
  for (int valor = 0; valor <= 10; valor++) {
    // validando se o valor é par ou impar
    if ((valor & 1) == 0) {
      // se o valor for par
      print("$valor - par");
    } else {
      // se o valor for impar
      print("$valor - ímpar");
    }
  }
}
