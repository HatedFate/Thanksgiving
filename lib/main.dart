import 'package:flutter/material.dart';
import 'display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Thanksgiving'),
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

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thanksgiving Recipe")
      ),
      body: Center(
        child: Menu(page: Page.values[_index])
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined),
              label: 'food'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_drink_outlined),
              label: 'drink'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.cake_outlined),
              label: 'cake'
          )
        ],
      ),
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _index = index;
    });
  }
}

enum Page {
  food,
  drink,
  dessert,
}
