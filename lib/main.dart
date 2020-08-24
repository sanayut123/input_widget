import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Widget"),
      ),
      body: Input_widget(), 
    );
  }
}

class Input_widget extends StatefulWidget {
  @override
  _Input_widgetState createState() => _Input_widgetState();
}

class _Input_widgetState extends State<Input_widget> {
  TextEditingController _con;
  static String text = "";
  showimage(){
    setState(() {
      text = _con.text;
    });
    _con.clear();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _con = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            TextFormField(
              controller: _con,
            ),
            RaisedButton(onPressed: (){
              showimage();
            }),
            Text(
              "$text",
              style: TextStyle(
                fontSize: 25.0
              ),
            )
          ],
        ),
    );
  }
}


              // decoration: InputDecoration(
              //   border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(10.0))
              //   ),
              // ),