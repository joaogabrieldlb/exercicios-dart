import 'produto.dart';

class VendaItem
{
  Produto produto;
  int quantidade;
  double _preco;

  VendaItem({required this.produto, this.quantidade = 1})
    : this._preco = produto.precoComDesconto;

  double get preco => _preco;

  void set preco(double novoPreco)
  {
    if(novoPreco > 0)
    {
      this._preco = novoPreco;
    }
  }

}