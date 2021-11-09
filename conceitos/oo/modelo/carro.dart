class Carro
{
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro({this.velocidadeMaxima = 300});

  int get velocidadeAtual => this._velocidadeAtual;

  void set velocidadeAtual(int novaVelocidade)
  {
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    if (deltaValido && novaVelocidade >= 0)
    {
      this._velocidadeAtual = novaVelocidade;
    }
  }

  int acelerar()
  {
    if(this._velocidadeAtual + 5 <= velocidadeMaxima)
    {
      this._velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }

  int frear()
  {
    if(this._velocidadeAtual - 5 >= 0)
    {
      this._velocidadeAtual -= 5;
    } 
    else
    {
      this._velocidadeAtual = 0;
    }
    return this._velocidadeAtual;
  }

  bool estaNoLimite()
  {
    return (this._velocidadeAtual == velocidadeMaxima);
  }

  bool estaParado()
  {
    return (this._velocidadeAtual == 0);
  }
}