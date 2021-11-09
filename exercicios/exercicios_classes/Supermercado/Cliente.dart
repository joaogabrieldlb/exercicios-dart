import 'dart:math';

class Cliente
{
  static int contador = 0;
  final int _id;
  late final double _valorDeCompra;

  Cliente()
    : this._id = ++contador
  {
    this._valorDeCompra = 10.0 + Random().nextInt(4991);
  }

  int get id => this._id;
  double get valorDeCompra => this._valorDeCompra;

  @override
  String toString() {
    return "Cliente [id=$_id, valorDeCompra=$_valorDeCompra]";
  }
}