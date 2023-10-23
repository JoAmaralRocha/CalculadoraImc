class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  double calculadoraImc(double peso, double altura) {
    return  _peso / (_altura * _altura);
  }

  String interpretaImc(double calculadoraImc) {
    if (calculadoraImc < 18.5) {
      return ("Abaixo do peso");
    } else if (calculadoraImc < 25) {
      return ("Peso Ideal");
    } else if (calculadoraImc < 30) {
      return ("Sobrepeso");
    } else if (calculadoraImc < 40) {
      return ("Obesidade");
    }
    return ("Obesidade Crítica");
  }

  @override
  String toString() {
    return {"Nome": _nome, "peso": _peso, "Altura": _altura}.toString();
  }
}
