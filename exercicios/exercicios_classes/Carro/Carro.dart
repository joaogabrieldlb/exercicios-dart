class Carro
{
  static int contador = 0;
  
  int _numero;
  int _quilometragem = 0;                 // definida em quilometros 
  double _tanqueCombustivel;              // definida em litros
  final int _capacidadeTanqueCombustivel; // definida em litros
  double _kmPorLitro = 15;                // km/l

  Carro(this._capacidadeTanqueCombustivel, this._tanqueCombustivel)
    : _numero = ++contador;

  Carro.usado(this._capacidadeTanqueCombustivel, this._tanqueCombustivel
    , this._quilometragem) : _numero = ++contador;

  double get tanqueCombustivel => this._tanqueCombustivel;
  int get quilometragem => this._quilometragem;

  void abastecer(double litros)
  {
    if(litros > 0 &&
      (litros + _tanqueCombustivel) <= _capacidadeTanqueCombustivel)
    {
      this._tanqueCombustivel += litros;
    }
  }

  void dirigir(int quilometros)
  {
    if(quilometros > 0)
    {
      // Calcula litros necessario para dirigir a quilometragem passada
      double litrosNecessarios = quilometros / this._kmPorLitro;
      if(litrosNecessarios <= tanqueCombustivel)
      {
        // Caso seja possivel dirigir a quilometragem desejada
        this._tanqueCombustivel -= litrosNecessarios;
        this._quilometragem += quilometros;

        print("\n -> ${this.runtimeType} $_numero: Dirigiu $quilometros Km.\n");
      }
      else
      {
        // Converte os litros de combustivel do tanque em quilometros a serem rodados
        double litrosParaQuilometros = (this._tanqueCombustivel * this._kmPorLitro);
        this._quilometragem += litrosParaQuilometros.toInt();
        this._tanqueCombustivel = 0;

        print("\n -> ${this.runtimeType} $_numero: Dirigiu ${litrosParaQuilometros.toStringAsFixed(2)} Km.");
        print("[!] Aviso: ${this.runtimeType} $_numero precisa abastecer " +
          "${((quilometros - litrosParaQuilometros) / this._kmPorLitro).round()} litros " +
          "para dirigir mais ${(quilometros - litrosParaQuilometros).toStringAsFixed(2)} Km.\n");
      }
    }
  }

  @override
  String toString() {
    return "${this.runtimeType} $_numero [quilometragem=$_quilometragem, tanqueCombustivel=$_tanqueCombustivel" + 
      ", capacidadeTanqueCombustivel=$_capacidadeTanqueCombustivel, kmPorLitro=$_kmPorLitro]";
  }
}
