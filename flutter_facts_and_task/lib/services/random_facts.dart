import 'package:http/http.dart';
import 'dart:convert';

class RandomFact{
  int number;
  String fact;
  String url;

  RandomFact({this.number,this.fact,this.url});

  void getFact() async{
    Response response = await get(
        'http://numbersapi.com/random/$url');
  }
}