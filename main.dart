import 'package:requisicoes_http/entidades/card.dart';
import '../lib/services/card_service.dart';
import 'dart:io';

void main() async {
 
  var cardservice = CardService();
  var sair = false;
  while (!sair) {
    // inicio
    print('=================================');
    print('Bem vindo ao sistemas de Cards o/');
    print('Escolha uma das opções: ');
    print('1 - Buscar todos os cards');
    print('2 - Buscar card pelo ID');
    print('3 - Criar card');
    print('4 - Atualizar card');
    print('5 - Deletar card');
    print('6 - Sair');

    // entrada de valor do usuario
    int opcao = int.tryParse(stdin.readLineSync());

    // switch case
    switch (opcao) {
      case 1:
        {
          print('1.Buscar todos os cards');
          var cards = await cardservice.metodoGetLista();
          print(cards);
          break;
        }
      case 2:
        {
          print('2.Buscar card pelo ID');
          print('Digite o id:');
          int entrada = int.tryParse(stdin.readLineSync());
          var cards = await cardservice.metodoGet(entrada);
          print(cards);
          break;
        }
      case 3:
        {
          print('3.Criar card');
          //digitar title e content que vai criar
          print('Digite o title:');
          String titulo = stdin.readLineSync();
          print('Digite o content:');
          String conteudo = stdin.readLineSync();
          var criarCard = Card(null, titulo, conteudo);
          var cardCriado = await cardservice.metodoPost(criarCard);
          print(cardCriado);
          break;
        }
      case 4:
        {
          print('4.Atualizar card');
          print('Digite o id do card que deseja atualizar:');
          int id = int.tryParse(stdin.readLineSync());
          print('Digite o titulo do card que deseja atualizar:');
          String titulo = stdin.readLineSync();
          print('Digite o content do card que deseja atualizar:');
          String content = stdin.readLineSync();
          var card = Card(id, titulo, content);
          var cardAtualizado = await cardservice.metodoPut(card);
          print(cardAtualizado);
          break;
        }
      case 5:
        {
          print('5.Deletar card');
          print('Digite o id que deseja deletar:');
          int entrada = int.tryParse(stdin.readLineSync());
          await cardservice.metodoDelete(entrada);
          print('card deletado com sucesso');
          break;
        }
      case 6:
        {
          print('''
              Saíndo do sistema.... Valeu, falows \o 
          ''');
          sair = true;
          break;
        }
      default:
        {
          print('Entrada inválida!');
        }
    }
  }
}
