import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/Modal/category.dart';
import 'package:todo_firebase/local_db/localdb.dart';
import 'package:todo_firebase/main.dart';
import 'package:todo_firebase/pages/last_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({super.key, this.userName});
  String? userName;

  @override
  State<ThirdPage> createState() => _ThirdPageState(userName: userName);
}

class _ThirdPageState extends State<ThirdPage> {
  _ThirdPageState({this.userName});

  final TextEditingController _textFieldController = TextEditingController();
  String? userName;

  final CollectionReference categoriesRef =
      FirebaseFirestore.instance.collection('categories');


  void _showEditDialog(Category category) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Category'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(
              hintText: category.name,
              filled: true,
              fillColor: const Color.fromRGBO(208, 205, 236, 1),
            ),
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
    return Slidable(
      endActionPane: ActionPane(motion: BehindMotion(), children: [
        Container(
          width: 75, // Set the desired width
          height: 75, // Set the desired height
          child: SlidableAction(
            onPressed: (context) => _showEditDialog(category),
            icon: Icons.edit,
            borderRadius: BorderRadius.circular(12),
            backgroundColor: Color.fromRGBO(208, 205, 236, 1),
          ),
        ),
        Container(
          width: 75, // Set the desired width
          height: 75, 
          margin: EdgeInsets.only(left: 5),
          child: SlidableAction(
            onPressed: (context) async {
                  await categoriesRef.doc(category.id).delete();
                },
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ]),
      child: Container(
        decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12))),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        // color: Colors.white, // Set the background color of the container
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LastPage(
                    categoryId: category.id, categoryName: category.name),
              ),
            );
          },
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              category.name,
              style: GoogleFonts.jost(fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(top: 60, left: 40, bottom: 10),
                      child: const Text('Enter Category')),
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
                    height: 40,
                    width: MediaQuery.of(context).size.width - 100,
                    margin:
                        const EdgeInsets.only(top: 20, left: 40, bottom: 40),
                    child: Center(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(const Size(70, 40)),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(208, 205, 236, 1),
                              )),
                          onPressed: () async {
                            String categoryName =
                                _textFieldController.text.trim();
                            Navigator.pop(context);
                            if (categoryName.isNotEmpty) {
                              await categoriesRef.add({
                                'userName': userName,
                                'name': categoryName,
                                'timestamp': FieldValue
                                    .serverTimestamp(), // Add the timestamp field
                              });
                            }
                            _textFieldController.clear();
                          },
                          child: const Text(
                            'Add',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Are you sure you want to logout or Delete Account?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Color.fromRGBO(13, 12, 56, 1)),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(13, 12, 56, 1))),
              onPressed: () async {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
                await deleteUser(userName);
              },
              child: Text('Delete'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromRGBO(13, 12, 56, 1))),
              onPressed: () async {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
                await deleteUser(userName);
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print('third page build method');
    return Scaffold(
      backgroundColor: const Color.fromRGBO(208, 205, 236, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, top: 35),
            child: IconButton(
                onPressed: () {
                  _showLogoutConfirmation(context);
                },
                icon: Icon(
                  Icons.more_vert_sharp,
                  size: 30,
                  color: Color.fromRGBO(13, 12, 56, 1),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, bottom: 10, top: 10),
            child: Text(
              'Hello',
              style: GoogleFonts.jost(
                  fontSize: 45,
                  color: const Color.fromRGBO(13, 12, 56, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, bottom: 50),
            child: Text(
              '$userName',
              style: GoogleFonts.jost(
                  fontSize: 45,
                  color: const Color.fromRGBO(13, 12, 56, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                top: 40,
              ),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(13, 12, 56, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: StreamBuilder(
                stream: categoriesRef
                    .where('userName', isEqualTo: userName)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: const CircularProgressIndicator(),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Implement logout functionality here
                // For example, you can navigate to the login page
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _showBottomSheet(),
          backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
          child: const Icon(Icons.add)),
    );
  }
}
