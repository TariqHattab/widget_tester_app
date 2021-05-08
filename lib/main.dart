import 'package:flutter/material.dart';
import 'package:widget_tester_app/cart3.dart';
import 'package:widget_tester_app/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pages = [FirstScreen(), CartThreePage()];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox.expand(
          child: Stack(
        children: [
          pages[index],
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  setState(() {
                    index = index == 0 ? 1 : 0;
                  });
                }),
          )
        ],
      )),
    );
  }
}
