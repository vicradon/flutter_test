import 'package:flutter/Material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Text>> fetchJSONData() async {
  var response = await http.get(
    Uri.encodeFull(
        'https://0ff15105-f26b-42ee-9264-ed947b4147eb.mock.pstmn.io/flutter_tst'),
    headers: {
      "Accept": "application/json",
      'x-api-key':
          'PMAK-5ec39ada394b4200422eb173-a201dd13e9b920d18e17647e00c9accde6'
    },
  );
  
  List<Text> textData = [];
  final parsed = await jsonDecode(response.body);
  parsed["String"].forEach((i) {
    textData.add(Text(i));
  });
  return textData;
}
