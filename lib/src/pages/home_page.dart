import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = TextStyle(fontSize: 25);

  final int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click Numbers:', style: textStyle),
            Text("$counter", style: textStyle),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("onPressed");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
