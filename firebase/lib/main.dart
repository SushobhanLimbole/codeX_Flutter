// import 'package:firebase/firebase_options.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Firestore CRUD Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final TextEditingController _textFieldController = TextEditingController();
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   void _addData(String text) async {
//     await _firestore.collection('items').add({'name': text});
//     setState(() {});
//   }

//   void _updateData(String id, String newText) async {
//     await _firestore.collection('items').doc(id).update({'name': newText});
//     setState(() {});
//   }

//   void _deleteData(String id) async {
//     await _firestore.collection('items').doc(id).delete();
//     setState(() {});
//   }

//   Widget _buildListItem(DocumentSnapshot document) {
//     return ListTile(
//       title: Text(document['name']),
//       trailing: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.edit),
//             onPressed: () => _showEditDialog(document),
//           ),
//           IconButton(
//             icon: Icon(Icons.delete),
//             onPressed: () => _deleteData(document.id),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showEditDialog(DocumentSnapshot document) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Edit Item'),
//           content: TextField(
//             controller: _textFieldController,
//             decoration: InputDecoration(hintText: document['name']),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('CANCEL'),
//               onPressed: () {
//                 Navigator.pop(context);
//                 _textFieldController.clear();
//               },
//             ),
//             TextButton(
//               child: Text('SAVE'),
//               onPressed: () {
//                 _updateData(document.id, _textFieldController.text);
//                 Navigator.pop(context);
//                 _textFieldController.clear();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Firestore CRUD Demo'),
//       ),
//       body: StreamBuilder(
//         stream: _firestore.collection('items').snapshots(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) return CircularProgressIndicator();
//           return ListView.builder(
//             itemCount: snapshot.data!.docs.length,
//             itemBuilder: (context, index) {
//               return _buildListItem(snapshot.data!.docs[index]);
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _showAddDialog(),
//         tooltip: 'Add Item',
//         child: Icon(Icons.add),
//       ),
//     );
//   }

//   void _showAddDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Add Item'),
//           content: TextField(
//             controller: _textFieldController,
//             decoration: InputDecoration(hintText: 'Enter item name'),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('CANCEL'),
//               onPressed: () {
//                 Navigator.pop(context);
//                 _textFieldController.clear();
//               },
//             ),
//             TextButton(
//               child: Text('ADD'),
//               onPressed: () {
//                 _addData(_textFieldController.text);
//                 Navigator.pop(context);
//                 _textFieldController.clear();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:intl/intl.dart';

// class CalendarDialog extends StatefulWidget {
//   @override
//   _CalendarDialogState createState() => _CalendarDialogState();
// }

// class _CalendarDialogState extends State<CalendarDialog> {
//   late DateTime _selectedDay;
//   late DateTime _focusedDay;

//   @override
//   void initState() {
//     super.initState();
//     _selectedDay = DateTime.now();
//     _focusedDay = DateTime.now();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('Select a Date'),
//       content: Container(
//         height: 500,
//         width: 500,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           color: Color.fromRGBO(208, 205, 236, 1),
//         ),
//         child: TableCalendar(
//           headerStyle: HeaderStyle(
//             formatButtonVisible: false,
//             headerMargin: EdgeInsets.only(bottom: 30),
//             decoration:
//                 BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
//           ),
//           firstDay: DateTime.utc(2010, 10, 16),
//           lastDay: DateTime.utc(2030, 3, 14),
//           focusedDay: _focusedDay,
//           selectedDayPredicate: (day) {
//             return isSameDay(_selectedDay, day);
//           },
//           onDaySelected: (selectedDay, focusedDay) {
//             setState(() {
//               _selectedDay = selectedDay;
//               print(_selectedDay);
//               _focusedDay = focusedDay;
//             });
//           },
//         ),
//       ),
//       actions: [
//         TextButton(
//           onPressed: () {
//             Navigator.pop(context, _selectedDay); // Pass selected date back
//           },
//           child: Text('OK'),
//         ),
//       ],
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calendar Dialog Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             final DateTime? selectedDate = await showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return CalendarDialog();
//               },
//             );
//             if (selectedDate != null) {
//               final formattedDate =
//                   DateFormat('dd-MM-yyyy').format(selectedDate);
//               print('Selected Date: $formattedDate');
//             }
//           },
//           child: Text('Open Calendar Dialog'),
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase/imgae.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageFetchScreen(),
    );
  }
}


// class ImageFetchScreen extends StatefulWidget {
//   @override
//   _ImageFetchScreenState createState() => _ImageFetchScreenState();
// }

// class _ImageFetchScreenState extends State<ImageFetchScreen> {
//   List<String> imageUrls = [];

//   Future<void> fetchImageUrls() async {
//     final response = await http.get(Uri.parse('gs://flutterproject-f4182.appspot.com/apulia.jpg'));

//     if (response.statusCode == 200) {
//       List<dynamic> urls = jsonDecode(response.body);
//       setState(() {
//         imageUrls = urls.map((url) => url.toString()).toList();
//       });
//     } else {
//       throw Exception('Failed to load image URLs');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchImageUrls();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Fetch Image URLs')),
//       body: Container(
//         height: 100,
//         width: 100,
//         child: Image.network(imageUrls[0]),
//       )
//     );
//   }
// }
