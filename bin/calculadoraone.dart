import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Bem vindo a nossa calculadora !!!");

  print("Informe o primeiro numero que deseja:");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo numero que deseja:");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação mátematica que deseja (+, -, *, /):");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "";

  var resultado = 0.0;
  if (operacao == "+") {
    resultado = numero1 + numero2;
  } else if (operacao == "-") {
    resultado = numero1 - numero2;
  } else if (operacao == "*") {
    resultado = numero1 * numero2;
  } else if (operacao == "/") {
    resultado = numero1 / numero2;
  } else {
    print("Operação invalida !!!");
  }

  print("Operação solicitada: $operacao");
  print("O resultado da conta é: $resultado");
}
