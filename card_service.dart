import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:requisicoes_http/entidades/card.dart';

class CardService {
  
  Future<List<Card>> metodoGetLista() async {
    var dio =
        Dio(BaseOptions(baseUrl: 'https://api-cards-growdev.herokuapp.com'));
    var resposta = await dio.get('/cards');
    var retorno = <Card>[];
    if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
      List<dynamic> lista = resposta.data;
      lista.forEach((item) => retorno.add(Card.apartirDoMap(item)));
    } else {
      print(resposta.statusMessage);
    }
    return retorno;
  }

  Future<Card> metodoGet(int id) async {
    var dio =
        Dio(BaseOptions(baseUrl: 'https://api-cards-growdev.herokuapp.com'));
    var resposta = await dio.get('/cards/$id');
    Card retorno;
    if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
      retorno = Card.apartirDoMap(resposta.data);
    } else {
      print(resposta.statusMessage);
    }
    return retorno;
  }

  Future<Card> metodoPost(Card card) async {
    var dio =
        Dio(BaseOptions(baseUrl: 'https://api-cards-growdev.herokuapp.com'));
    var dados = jsonEncode(card.toMap());
    var resposta = await dio.post('/cards', data: dados);
    Card retorno;
    if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
      retorno = Card.apartirDoMap(resposta.data);
    } else {
      print(resposta.statusMessage);
    }
    return retorno;
  }

  Future<Card> metodoPut(Card card) async {
    var dio =
        Dio(BaseOptions(baseUrl: 'https://api-cards-growdev.herokuapp.com'));
    var dados = jsonEncode(card.toMap());
    var resposta = await dio.put('/cards/${card.id}', data: dados);
    Card retorno;
    if (resposta.statusCode >= 200 && resposta.statusCode < 300) {
      retorno = Card.apartirDoMap(resposta.data);
    } else {
      print(resposta.statusMessage);
    }
    return retorno;
  }

  Future<void> metodoDelete(int id) async {
    var dio =
        Dio(BaseOptions(baseUrl: 'https://api-cards-growdev.herokuapp.com'));
    var resposta = await dio.delete('/cards/$id');
    if (resposta.statusCode >= 300 && resposta.statusCode < 200) {
      print(resposta.statusMessage);
    }
  }
}
