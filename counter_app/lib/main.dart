import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red), home: const HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var count = 0;
    void increment() {
      setState((){
        count++;
      });
      // print(count);
    }


    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu Primeiro App"),
      ),
      body: Center(
          child: Text('Contagem em\n $count', textAlign: TextAlign.center)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
    );
  }
}
