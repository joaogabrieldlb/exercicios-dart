import 'Caixa.dart';
import 'Cliente.dart';

class Supermercado
{
  int _totalDeClientes = 0;
  int _totalDeClientesNaoAtendidos = 0;

  double _faturamentoPerdas = 0.0;
  double _faturamentoGanhos = 0.0;
  double _menorValorDeCompra = double.maxFinite;
  double _maiorValorDeCompra = 0.0;

  late List<Caixa> _caixas;

  Supermercado({int numeroCaixas = 3})
  {
    if(numeroCaixas <= 0)
    {
      throw Exception("Erro: A quantidade de caixas deve ser postiva.");
    }
    this._caixas = List.generate
    (
      numeroCaixas,
      (index) => Caixa(),
      growable: true
    );
  }

  void entraCliente(Cliente cliente)
  {
    _totalDeClientes++;
    var caixasDisponiveis = _caixas
      // filtra pelos caixas disponiveis
      .where((c) => c.estaDisponivel)
      // converte em lista
      .toList();
    
    
    if(caixasDisponiveis.isNotEmpty)
    {
      // ordena os caixas pela quantidade de clientes
      caixasDisponiveis.sort((c1,c2) => 
        c1.qtdClientes.compareTo(c2.qtdClientes));
      caixasDisponiveis.first.entraCliente(cliente);
    }
    else
    {
      _faturamentoPerdas += cliente.valorDeCompra;
      _totalDeClientesNaoAtendidos++;
      print("Cliente #${cliente.id} nao atendido!");
    }
  }

  void alterarDiponibilidadeDoCaixa(int numeroDoCaixa, bool estaAtendendo)
  {
    validaNumeroDoCaixa(numeroDoCaixa);
    _caixas[numeroDoCaixa - 1].disponibilidade = estaAtendendo;
  }

  void validaNumeroDoCaixa(int numeroDoCaixa)
  {
    if(numeroDoCaixa <= 0 || numeroDoCaixa > _caixas.length)
      throw Exception("Erro: Caixa invalido.");
  }

  bool atendeCliente(int numeroDoCaixa)
  {
    validaNumeroDoCaixa(numeroDoCaixa);
    Cliente? cliente = _caixas[numeroDoCaixa - 1].avancaFila();
    if(cliente == null)
    {
      return false;
    }

    var valorDeCompra = cliente.valorDeCompra;
    _faturamentoGanhos += valorDeCompra;
    // Verificando maior e menor valor de compra
    if(valorDeCompra > _maiorValorDeCompra)
    {
      _maiorValorDeCompra = valorDeCompra;
    }
    if(valorDeCompra < _menorValorDeCompra)
    {
      _menorValorDeCompra = valorDeCompra;
    }
    return true;
  }

  @override
  String toString() {
    return """

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
Dados do Supermercado
totalDeClientes=$_totalDeClientes
totalDeClientesNaoAtendidos=$_totalDeClientesNaoAtendidos
faturamentoGanhos=$_faturamentoGanhos
faturamentoPerdas=$_faturamentoPerdas
menorValorDeCompra=$_menorValorDeCompra
maiorValorDeCompra=$_maiorValorDeCompra
Caixas:
$_caixas
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

""";
  }
}