import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LastPage extends StatefulWidget {
  LastPage({super.key, this.data});
  String? data;
  @override
  State<LastPage> createState() => _LastPageState(data: data);
}

class _LastPageState extends State<LastPage> {
  String? data;
  _LastPageState({this.data});

  final TextEditingController _textFieldController = TextEditingController();
  // final TextEditingController _textFieldController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void _addData(String text) async {
    await _firestore.collection('$data').add({'task': text});
    setState(() {});
  }

  void _updateData(String id, String newText) async {
    await _firestore.collection('$data').doc(id).update({'task': newText});
    setState(() {});
  }

  void _deleteData(String id) async {
    await _firestore.collection('$data').doc(id).delete();
    setState(() {});
  }

  Widget _buildListItem(DocumentSnapshot document) {
    return ListTile(
      title: Text(document['task']),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => _showEditDialog(document),
          ),
          IconButton(
            icon: Icon(Icons.delete),
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
          title: Text('Edit Item'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: document['task']),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
                _textFieldController.clear();
              },
            ),
            TextButton(
              child: Text('SAVE'),
              onPressed: () {
                _updateData(document.id, _textFieldController.text);
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
                  child: Text('Enter Category')),
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
                  margin: EdgeInsets.only(top: 60, left: 40, bottom: 10),
                  child: Text('Enter Date')),
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
                height: 40,
                width: 90,
                margin: EdgeInsets.only(
                    top: 20, left: MediaQuery.of(context).size.width / 2.8),
                child: ElevatedButton(
                    style: ButtonStyle(
                        // fixedSize: MaterialStateProperty.all(Size(70, 40)),
                        backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(208, 205, 236, 1),
                    )),
                    onPressed: () {
                      _addData(_textFieldController.text);
                      _textFieldController.clear();
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(147, 149, 211, 1),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
