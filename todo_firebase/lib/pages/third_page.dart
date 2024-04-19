import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_firebase/pages/last_page.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({super.key, this.user});
  String? user;

  @override
  State<ThirdPage> createState() => _ThirdPageState(user: user);
}

class _ThirdPageState extends State<ThirdPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _textFieldController = TextEditingController();
  String? user;

  void _addColl(String text) async {
    await _firestore.collection('metadata').add({'collection': text});
    setState(() {});
  }

  void _updateColl(String id, String newText) async {
    await _firestore.collection('metadata').add({'collection': newText});
    await _firestore.collection('metadata').doc(id).delete();
    await _firestore.collection('metadata').doc(id).update({'name': newText});
    setState(() {});
  }

  void _deleteColl(String id) async {
    await _firestore.collection('metadata').doc(id).delete();
    setState(() {});
  }

  void _showEditDialog(DocumentSnapshot document) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Category'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: document['collection']),
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
                _updateColl(document.id, _textFieldController.text);
                Navigator.pop(context);
                _textFieldController.clear();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildListItem(DocumentSnapshot document) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LastPage(),)),
      child: ListTile(
        title: Text(document['name']),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => _showEditDialog(document),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _deleteColl(document.id),
              // onPressed: () => _deleteData(document.id),
            ),
          ],
        ),
      ),
    );
  }

  _ThirdPageState({this.user});

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
                      _addColl(_textFieldController.text);
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
    print('third page build method');
    return Scaffold(
      backgroundColor: Color.fromRGBO(208, 205, 236, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30, bottom: 10, top: 80),
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, bottom: 50),
            child: Text(
              '$user',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 40,
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(13, 12, 56, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              // child: ListView.builder(
              //   itemBuilder: (context, index) => Container(
              //     color: Colors.blue,
              //     height: 40,
              //     margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              //   ),
              // ),
              child: StreamBuilder(
                stream: _firestore.collection('metadata').snapshots(),
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
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _showBottomSheet(),
          backgroundColor: Color.fromRGBO(147, 149, 211, 1),
          child: Icon(Icons.add)),
    );
  }
}
