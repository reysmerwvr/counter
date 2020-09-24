import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = TextStyle(fontSize: 25);

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Taps Numbers:', style: _textStyle),
            Text("$_counter", style: _textStyle),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _sub,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _sub() {
    setState(() => _counter--);
  }

  void _reset() {
    setState(() => _counter = 0);
  }
}
