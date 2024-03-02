import 'package:flutter/material.dart';

class ToDoHome extends StatefulWidget {
  const ToDoHome({super.key});

  @override
  State<ToDoHome> createState() => _ToDoHomeState();
}

class _ToDoHomeState extends State<ToDoHome> {
  List toDoList = [];

  // int counter = 0;
  void incrementCounter() {
    toDoList.length++;
  }

  String show(int index) {
    if (toDoList[index] == null) {
      return 'Task${index + 1}';
    } else {
      return '${toDoList[index]}';
    }
  }

  void editToDoList(int index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            children: [
              TextFormField(
                initialValue: "Task${index + 1}",
                decoration: InputDecoration(label: Text('Task${index + 1}')),
                onChanged: (value) => toDoList[index] = value,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Text('Save'))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Home'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              editToDoList(index);
            },
            child: Container(
              height: 50,
              color: Colors.amber,
              child: Text(show(index)),
              margin: EdgeInsets.only(top: 10),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            incrementCounter();
          });
        },
      ),
    );
  }
}
