import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:todo_firebase/pages/calendar.dart';

class LastPage extends StatefulWidget {
  LastPage({super.key, this.data});
  String? data;
  @override
  State<LastPage> createState() => _LastPageState(data: data);
}

class _LastPageState extends State<LastPage> {
  String? data;
  late DateTime _selectedDay;
  late DateTime _focusedDay;
  String chosenDate = '';
  _LastPageState({this.data});

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
  }

  final TextEditingController _textFieldController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void _addData(String text, String date) async {
    await _firestore.collection('$data').add({'task': text, 'date': date});
    setState(() {});
  }

  void _updateData(String id, String newText, String date) async {
    await _firestore
        .collection('$data')
        .doc(id)
        .update({'task': newText, 'date': date});
    setState(() {});
  }

  void _deleteData(String id) async {
    await _firestore.collection('$data').doc(id).delete();
    setState(() {});
  }

  Widget _buildListItem(DocumentSnapshot document) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 4),
                blurRadius: 4)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    document['task'],
                    style: GoogleFonts.jost(
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        color: Color.fromRGBO(147, 149, 211, 1)),
                  ),
                  Text(document['date'],
                      style: GoogleFonts.jost(
                        fontSize: 13,
                      ))
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.edit,
                color: Color.fromRGBO(208, 205, 236, 1), size: 19),
            onPressed: () => _showEditDialog(document),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline_outlined,
                color: Color.fromRGBO(208, 205, 236, 1), size: 19),
            onPressed: () => _deleteData(document.id),
          ),
        ],
      ),
    );
  }

  void _showEditDialog(DocumentSnapshot document) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Task'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                  child: Text('Enter Task')),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width - 100,
                child: TextField(
                  controller: _textFieldController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(208, 205, 236, 1),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                  margin: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text('Enter Date')),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(208, 205, 236, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(''),
                      ),
                    ),
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
                        icon: Icon(Icons.calendar_today))
                  ],
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'CANCEL',
                style: TextStyle(color: Color.fromRGBO(13, 12, 56, 1)),
              ),
              onPressed: () {
                Navigator.pop(context);
                _textFieldController.clear();
              },
            ),
            TextButton(
              child: Text(
                'SAVE',
                style: TextStyle(color: Color.fromRGBO(13, 12, 56, 1)),
              ),
              onPressed: () {
                _updateData(document.id, _textFieldController.text, chosenDate);
                Navigator.pop(context);
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
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 60, left: 40, bottom: 10),
                  child: Text('Enter Task')),
              Container(
                margin: EdgeInsets.only(left: 40),
                width: MediaQuery.of(context).size.width - 100,
                child: TextField(
                  controller: _textFieldController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(208, 205, 236, 1),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                  margin: EdgeInsets.only(left: 40, bottom: 10),
                  child: Text('Enter Date')),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 40),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(208, 205, 236, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(''),
                      ),
                    ),
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
                        icon: Icon(Icons.calendar_today))
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width - 100,
                margin: EdgeInsets.only(top: 20, left: 40),
                child: Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(70, 40)),
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(208, 205, 236, 1),
                          )),
                      onPressed: () {
                        _addData(_textFieldController.text, chosenDate);
                        _textFieldController.clear();
                        Navigator.pop(context);
                      },
                      child: Text(
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
        backgroundColor: Color.fromRGBO(27, 26, 85, 1),
        centerTitle: true,
        title: Text(
          '$data',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
        ),
      ),
      body: StreamBuilder(
        stream: _firestore.collection('$data').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              return _buildListItem(snapshot.data!.docs[index]);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(147, 149, 211, 1),
        onPressed: () => _showBottomSheet(),
        child: Icon(Icons.add),
      ),
    );
  }
}
