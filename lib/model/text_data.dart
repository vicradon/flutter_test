import 'package:flutter/Material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Text>> fetchJSONData() async {
  // final rawJson = await http.get(
  //   'https://0ff15105-f26b-42ee-9264-ed947b4147eb.mock.pstmn.io/flutter_tst',
  //   headers: {
  //     'x-api-key':
  //         'PMAK-5ec39ada394b4200422eb173-a201dd13e9b920d18e17647e00c9accde6'
  //   },
  // );
  // final rawjson1 = await http.get(
  //   'https://0ff15105-f26b-42ee-9264-ed947b4147eb.mock.pstmn.io/flutter_tst',
  // );
  // final rawjson2 = await http.get(
  //   'https://swapi.dev/api/people/2/',
  // );
  // // print(11);
  // final b = jsonEncode(rawJson);
  // // final a = json.encode(b);
  // // print(a);
  // print('c');
  // final c = (jsonDecode('{name:["array", "list"]}'));
  // print(c);
  // final parsedJson = json.decode(rawjson2.toString());
  // print(9);
  // print(parsedJson);
  String rawJson = '{"name":["bro", "bro1", "bro2"]}';
  Map<String, dynamic> parsedJson = await jsonDecode(rawJson);

  List<Text> textData = [];
  final parsed = parsedJson['name'];
  parsed.forEach((i) {
    textData.add(Text(i));
  });
  return textData;
}

