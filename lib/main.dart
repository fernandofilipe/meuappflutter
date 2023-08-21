import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro App - Bootcamp Santander',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Primeiro Desafio - Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double spaceBetweenButtons = 20;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter = _counter > 0 ? _counter - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Saldo entre incrementos e decrementos:',
              style: TextStyle(color: Colors.black45, fontSize: 20),
            ),
            Text(
              '$_counter',
              style: const TextStyle(color: Colors.black45, fontSize: 50),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(spaceBetweenButtons),
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              shape: const CircleBorder(),
              child: const Icon(Icons.add),
            ),
          ),
          Container(
            margin: EdgeInsets.all(spaceBetweenButtons),
            child: FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              shape: const CircleBorder(),
              child: const Icon(Icons.remove),
            ),
          )
        ],
      ),
    );
  }
}
