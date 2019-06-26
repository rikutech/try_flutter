import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _title = 'Flutterサンプル';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless',
      home: new MyHomePage(
        title: this._title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title}) : super();

  @override
  State<StatefulWidget> createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message;

  @override
  void initState() {
    super.initState();
    _message = 'Hello!';
  }

  void _setMessage() {
    setState(() {
      _message = _message == 'LGTM' ? 'Hello!' : 'LGTM';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Text(
        _message,
        style: TextStyle(fontSize: 32),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setMessage,
        tooltip: 'set message.',
        child: Icon(Icons.star),
      ),
    );
  }
}
