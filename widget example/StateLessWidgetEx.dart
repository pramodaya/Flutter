import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Exploring Widgets"),
            ),
            body: Column(
              children: <Widget>[listViewWidget()],
            )
        )
    );
    
  }
}

Widget textWidget() {
  return Text(
    "Hello, World!",
    style: TextStyle(
      fontSize: 40.0,
    ),
  );
}

Widget inputWidget() {
  return TextField(
    decoration: InputDecoration(
        border: InputBorder.none, hintText: 'Write something here'),
  );
}

Widget listViewWidget() {
  final List<String> entries = <String>['A', 'B', 'C'];

  return ListView.builder(
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('Row ${entries[index]}'),
        onTap: () {
          // do something
        },
      );
    },
  );
}

//create a button
Widget buttonWidget() {
      return RaisedButton(
        child: const Text('Button'),
        color: Colors.orange,
        elevation: 4.0,
        splashColor: Colors.red,
        onPressed: () {
          // do something
        },
      );
    }
