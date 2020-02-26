import 'package:http/http.dart';
import 'dart:convert';

class RandomFact{

  String factText;
  String factNumber;

  Function(String,String) callback;
  RandomFact({this.callback});

  Future<void> getFact(String factType) async{
    try {
      Response response = await get(
          'http://numbersapi.com/random/$factType?json');
      Map data = jsonDecode(response.body);

      factText = data['text'];
      factNumber = data['number'].toString();
      callback(factNumber,factText);
    }catch (e) {
      print('caught error: $e');
    }
  }
}