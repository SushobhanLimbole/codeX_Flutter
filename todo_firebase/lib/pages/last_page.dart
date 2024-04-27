import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:todo_firebase/Modal/Tasks.dart';
import 'package:todo_firebase/pages/calendar.dart';

class LastPage extends StatefulWidget {
  LastPage({super.key, required this.categoryId, required this.categoryName});
  final String categoryName;
  final String categoryId;
  @override
  State<LastPage> createState() =>
      _LastPageState(categoryId: categoryId, categoryName: categoryName);
}

class _LastPageState extends State<LastPage> {
  _LastPageState({required this.categoryId, required this.categoryName});

  final String categoryName;
  final String categoryId;
  late DateTime _selectedDay;
  late DateTime _focusedDay;
  static String chosenDate = '';
  final CollectionReference tasksRef =
      FirebaseFirestore.instance.collection('tasks');

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
  }

  final TextEditingController _textFieldController = TextEditingController();

  Widget _buildListItem(Task task) {
    return InkWell(
      child: Container(
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 4),
                  blurRadius: 4)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      task.title,
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                          color: const Color.fromRGBO(147, 149, 211, 1)),
                    ),
                    Text(task.date,
                        style: GoogleFonts.jost(
                          fontSize: 13,
                        ))
                  ],
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit,
                  color: Color.fromRGBO(208, 205, 236, 1), size: 22),
              onPressed: () => _showEditDialog(task),
            ),
            IconButton(
              icon: const Icon(Icons.delete_outline_outlined,
                  color: Color.fromRGBO(208, 205, 236, 1), size: 22),
              onPressed: () async {
                await tasksRef.doc(task.id).delete();
              },
            ),
            Checkbox(
              value: task.isCompleted,
              onChanged: (newValue) async {
                await tasksRef.doc(task.id).update({
                  'isCompleted': newValue,
                });
              },
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }

  void _showEditDialog(Task task) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Task'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
                  child: const Text('Enter Task')),
              Container(
                margin: const EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width - 100,
                child: TextField(
                  controller: _textFieldController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(208, 205, 236, 1),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                  margin: const EdgeInsets.only(left: 10, bottom: 10),
                  child: const Text('Enter Date')),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 10),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(208, 205, 236, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () async {
                          final DateTime? selectedDate = await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CalendarDialog();
                            },
                          );
                          if (selectedDate != null) {
                            final formattedDate =
                                DateFormat('dd-MM-yyyy').format(selectedDate);
                            print('Selected Date: $formattedDate');
                            chosenDate = formattedDate;
                          }
                        },
                        icon: const Icon(Icons.calendar_today)),
                    Expanded(
                      child: Container(
                        // color: Colors.black,
                        margin: const EdgeInsets.only(left: 15),
                        child: const Text(
                          '',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'CANCEL',
                style: TextStyle(color: Color.fromRGBO(13, 12, 56, 1)),
              ),
              onPressed: () {
                Navigator.pop(context);
                _textFieldController.clear();
              },
            ),
            TextButton(
              child: const Text(
                'SAVE',
                style: TextStyle(color: Color.fromRGBO(13, 12, 56, 1)),
              ),
              onPressed: () async {
                Navigator.pop(context);
                await tasksRef.doc(task.id).update(
                    {'title': _textFieldController.text, 'date': chosenDate});
                _textFieldController.clear();
              },
            ),
          ],
        );
      },
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 60, left: 40, bottom: 10),
                  child: const Text('Enter Task')),
              Container(
                margin: const EdgeInsets.only(left: 40),
                width: MediaQuery.of(context).size.width - 100,
                child: TextField(
                  controller: _textFieldController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(208, 205, 236, 1),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                  margin: const EdgeInsets.only(left: 40, bottom: 10),
                  child: const Text('Enter Date')),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 40),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(208, 205, 236, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () async {
                          final DateTime? selectedDate = await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CalendarDialog();
                            },
                          );
                          if (selectedDate != null) {
                            final formattedDate =
                                DateFormat('dd-MM-yyyy').format(selectedDate);
                            print('Selected Date: $formattedDate');
                            chosenDate = formattedDate;
                          }
                        },
                        icon: const Icon(Icons.calendar_today)),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: const Text(''),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width - 100,
                margin: const EdgeInsets.only(top: 20, left: 40),
                child: Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(70, 40)),
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(208, 205, 236, 1),
                          )),
                      onPressed: () async {
                        Navigator.pop(context);
                        await tasksRef.add({
                          'categoryId': categoryId,
                          'title': _textFieldController.text,
                          'isCompleted': false,
                          'date': chosenDate, // Add the timestamp field
                        });
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print('last page build method');
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 205, 236, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 26, 85, 1),
        centerTitle: true,
        title: Text(
          '$categoryName',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
        ),
      ),
      body: StreamBuilder(
        stream: tasksRef.where('categoryId', isEqualTo: categoryId).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const CircularProgressIndicator();

          final List<Task> tasks =
              snapshot.data!.docs.map((doc) => Task.fromSnapshot(doc)).toList();

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return _buildListItem(task);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
        onPressed: () => _showBottomSheet(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
