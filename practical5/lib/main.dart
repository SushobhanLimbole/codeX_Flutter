import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List items = ['item1', 'item2', 'item3'];
  bool pop = false;
  String item = '';
  int _counter = 0;
  final item1 = TextEditingController();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget popUpContainer({String item = '', bool pop = false}) {
    if (pop == true) {
      return Container(
        height: 500,
        width: 500,
        child: TextField(
          controller: item1,
          decoration: InputDecoration(hintText: '$item'),
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do list'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStateProperty.all(Size(200, 40))),
                        onPressed: () {
                          setState(() {
                            item = items[index];
                            pop = true;
                          });
                        },
                        child: Text('${items[index]}')),
                    popUpContainer(pop: pop, item: item),
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
