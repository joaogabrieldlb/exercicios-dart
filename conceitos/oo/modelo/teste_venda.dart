import 'Venda.dart';
import 'cliente.dart';
import 'produto.dart';
import 'venda_item.dart';

main() {
  var venda = Venda(
    cliente: Cliente(
      nome: "João Gabriel",
      cpf: "000.000.000-00"
    ),
    itens: <VendaItem>[
      VendaItem(
        produto: Produto(
          codigo: 1,
          nome: "Caneta Bic",
          preco: 10,
          desconto: 0.5
        )
      ),
      VendaItem(
        produto: Produto(
          codigo: 2,
          nome: "Lápis",
          preco: 10,
          desconto: 0.5
        ),
        quantidade: 5
      ),
      VendaItem(
        produto: Produto(
          codigo: 3,
          nome: "Borracha",
          preco: 10,
          desconto: 0.5
        ),
        quantidade: 2
      )
    ]
  );

  print("O valor total da venda é ${venda.valorTotal}");
  print(venda.itens[0].produto.nome);

}