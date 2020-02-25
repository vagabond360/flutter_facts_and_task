import 'package:http/http.dart';
import 'dart:convert';

class Fact{

  String factType;

  Fact({this.factType});

  void getFact() async{
    try {
      Response response = await get(
          'http://numbersapi.com/random/$factType?json');
      Map data = jsonDecode(response.body);

      String text = data['text'];
      String number = data['number'].toString();

      print(text);
      print(number);

    }catch (e) {
      print('caught error: $e');
    }
  }
}