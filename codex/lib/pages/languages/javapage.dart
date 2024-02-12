// import 'package:codex/pages/codepage.dart';
// import 'package:flutter/material.dart';

// class JavaCode extends StatelessWidget {
//   List<String> java = ["abc", "xyz", "lmn"];
//   JavaCode({super.key, required this.topics});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Java Syllabus"),
//         backgroundColor: Colors.black,
//       ),
//       body: Center(
//         child: ListView.builder(
//           itemCount: topics.length,
//           itemBuilder: (context, index) {
//             return InkWell(
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => Codes(code: java)));
//               },
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 child: Center(
//                   child: Text("${topics[index]}"),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
