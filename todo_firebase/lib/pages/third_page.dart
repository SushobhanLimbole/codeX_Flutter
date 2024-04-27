import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/Modal/category.dart';
import 'package:todo_firebase/pages/last_page.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({super.key, this.user});
  String? user;

  @override
  State<ThirdPage> createState() => _ThirdPageState(user: user);
}

class _ThirdPageState extends State<ThirdPage> {
  _ThirdPageState({this.user});

  final TextEditingController _textFieldController = TextEditingController();
  String? user;

  final CollectionReference categoriesRef =
      FirebaseFirestore.instance.collection('categories');

  void _showEditDialog(Category category) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Category'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(
              hintText: category.name,
              filled: true,
              fillColor: Color.fromRGBO(208, 205, 236, 1),
            ),
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
              onPressed: () async {
                await categoriesRef
                    .doc(category.id)
                    .update({'name': _textFieldController.text});
                _textFieldController.clear();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildListItem(Category category) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                LastPage(categoryId: category.id, categoryName: category.name),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    category.name,
                    style: GoogleFonts.jost(fontSize: 20),
                  )),
            ),
            IconButton(
              icon: Icon(Icons.edit,
                  color: Color.fromRGBO(208, 205, 236, 1), size: 18.5),
              onPressed: () => _showEditDialog(category),
            ),
            IconButton(onPressed: () async {
        await categoriesRef.doc(category.id).delete();
      }, icon: Icon(Icons.delete_outline_outlined,
                color: Color.fromRGBO(208, 205, 236, 1), size: 19),),
            SizedBox(
              width: 5,
            )
          ],
        ),
      ),
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
                      onPressed: () async {
                        String categoryName = _textFieldController.text.trim();
                        Navigator.pop(context);
                        if (categoryName.isNotEmpty) {
                          await categoriesRef.add({
                            'name': categoryName,
                            'timestamp': FieldValue
                                .serverTimestamp(), // Add the timestamp field
                          });
                        }
                        _textFieldController.clear();
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
              style: GoogleFonts.jost(
                  fontSize: 45,
                  color: Color.fromRGBO(13, 12, 56, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, bottom: 50),
            child: Text(
              '$user',
              style: GoogleFonts.jost(
                  fontSize: 45,
                  color: Color.fromRGBO(13, 12, 56, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                top: 40,
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(13, 12, 56, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: StreamBuilder(
                stream: categoriesRef.snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: CircularProgressIndicator(),
                    );

                  final List<Category> categories = snapshot.data!.docs
                      .map((doc) => Category.fromSnapshot(doc))
                      .toList();

                  return ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return _buildListItem(category);
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
