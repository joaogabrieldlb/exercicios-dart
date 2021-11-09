import 'dart:math';

import 'Cliente.dart';

class Caixa
{
  static int contador = 0;
  final int _id;
  final int _capacidadeDeAtendimento;
  bool _estaAtendendo;
  List<Cliente> _filaDeClientes;

  Caixa([this._capacidadeDeAtendimento = 3, this._estaAtendendo = true])
    : _filaDeClientes = [],
    _id = ++contador;

  int get qtdClientes => this._filaDeClientes.length;
  bool get estaDisponivel => this._estaAtendendo &&
    this._filaDeClientes.length < this._capacidadeDeAtendimento;
  void set disponibilidade(bool estaAtendendo) => this._estaAtendendo = estaAtendendo;
  void imprimeFila() => print("Caixa $_id $_filaDeClientes\n");

  void entraCliente(Cliente cliente)
  {
    if(estaDisponivel)
    {
      _filaDeClientes.add(cliente);
      print("Cliente #${cliente.id} entrou na fila do caixa #$_id.");
      imprimeFila();
    }
  }

  Cliente? avancaFila()
  {
    // gera um valor aleatorio inteiro, podendo ser 0 ou 1
    int valorAleatorio = Random().nextInt(2);
    if(_filaDeClientes.isNotEmpty)
    {  
      switch(valorAleatorio)
      {
        case 0:
          print("Cliente #${_filaDeClientes.first.id} nao finalizou o atendimento.");
          return null;
        case 1:
          var cliente = _filaDeClientes.removeAt(0);
          print("Cliente #${cliente.id} finalizou o atendimento.");
          return cliente;
        default:
          print("Erro: Valor aleatorio maior/menor do que o esperado.");
      }
    }
  }

  @override
  String toString() {
    return "\nCaixa [estaDisponivel=$_estaAtendendo, capacidadeDeAtendimento=$_capacidadeDeAtendimento]\n"
      + "filaDeClientes=${_filaDeClientes.toString()}\n";
  }
}