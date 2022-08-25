import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Touchscreen button click bug',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // GestureDetector(
            //   onTap:_incrementCounter,
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     color: Colors.red,
            //     child: Text(_counter.toString()),
            //   ),
            // )
            TextButton(
              onPressed: _incrementCounter,
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(100, 100)),
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: Text(_counter.toString()),
            )
          ],
        ),
      ),
    );
  }
}
