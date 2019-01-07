import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

int find(var value) {
  var fact = 1;
  for(var i = 2;i<=value;i++)
    {
      fact *=i;
    }
    return fact;
}

class MyAppState extends State<MyApp> {
  String data = "";
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factorial',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Factorial'),
          backgroundColor: Colors.blueAccent,
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('FIND THE FACTORIAL OF A NUMBER',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                new Container(
                  width: 250.0,
                  margin: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(hintText: 'Enter A Number'),
                  ),
                ),
                Text(
                  data,
                  style: TextStyle(
                    fontWeight :FontWeight.w200,
                  ),
                ),
                RaisedButton(
                  child: Text('FIND'),
                  onPressed: () {
                    setState(() {
                      var value = int.parse(textController.text);
                      data = 'The factorial of ${textController.text} is ${find(value)}';
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
