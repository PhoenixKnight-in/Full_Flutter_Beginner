import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;
  // method
  void _incrementCounter() {
    // When change need to be reflected use setstate it redos the widget
    setState(() {
      _counter++;
    });
  }

  // UI (user Interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You pushed the button this many times: "),
        
            // Counter value
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),

            // Button
            ElevatedButton(
              onPressed: _incrementCounter,
               child: Text("Increment!!"),
               )
          ],
        
        ),
      ),
    );
  }
}
