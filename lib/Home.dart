import 'package:flutter/material.dart';
import 'package:prescient_automation_flutter_test/IconGrid/IconGrid.dart';
import 'package:prescient_automation_flutter_test/IconGrid/InitialIconGrid.dart';
import 'package:prescient_automation_flutter_test/model/text_data.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Future<List<Text>> futureText;

  @override
  void initState() {
    super.initState();
    futureText = fetchJSONData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Test'), centerTitle: true),
      body: FutureBuilder<List<Text>>(
        future: futureText,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return IconGrid(data: snapshot.data);
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          } else {
            return InitialIconGrid();
          }
        },
      ),
    );
  }
}

/*
funcThatReturnsFuture().then((result) {
  print(result);
  setState(() {
    someVal = result;
  })
})
or

Future funcThatMakesAsyncCall() async {
  var result = await funcThatReturnsFuture();
  print(result);  
  setState(() {
    someVal = result;
  })
}
*/
