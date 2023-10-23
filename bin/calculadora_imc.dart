import 'dart:io';
import 'dart:convert';
import 'package:calculadora_imc/modls/pessoa.dart';

void main(List<String> arguments) {
  print("Bem vindo(a) a nosa calculadora IMC");

  print("Informe seu nome : ");
  String nome;
  String nomeImput = stdin.readLineSync(encoding: utf8) ?? "";
  
try {
  nome = (nomeImput.replaceAll("[^\\p{ASCII}]", "").replaceAll("&texto-outroTexto= [A-Za-z0-9]*", ""));

  } catch (e) {
    
    print("Valor de nome inválido: $nomeImput");
    return;
}
  print("Informe seu peso (em kg): ");
  String pesoInput = stdin.readLineSync(encoding: utf8) ?? "";

  double peso;
  try {
    peso = double.parse(pesoInput.replaceAll(",", "."));
  } catch (e) {
    print("Valor de peso inválido: $pesoInput");
    return;
  }
  print("Informe sau altura (em Metros): ");
  var altura = double.parse(stdin.readLineSync(encoding: utf8)!);
  try {
    altura = (altura);
  } catch (e) {
    print("Valor invalido: $altura");
  }

  var pessoa = Pessoa(nome, peso, altura);
  double imc = (pessoa.calculadoraImc(peso, altura));
  print(pessoa.interpretaImc(imc));
}
