import 'dart:io';

void main() async {
  print('Olá, vamos calcular a média das idades?');
  print('Insira o número de pessoas, depois a idade de cada uma.');
  print('');
  int quantidade = int.parse(stdin.readLineSync().toString());

  double media = await calcularMedia(quantidade);
  print('A idade média é : $media');
}

Future<double> calcularMedia(int quantidade) async {
  List<int> idades = [];
  int soma = 0;

  for (int i = 0; i < quantidade; i++) {
    print('Digite a idade da ${i + 1}ªpessoa');
    int idade = int.parse(stdin.readLineSync().toString());
    idades.add(idade);
    soma += idade;
  }
  return soma / quantidade;
}
