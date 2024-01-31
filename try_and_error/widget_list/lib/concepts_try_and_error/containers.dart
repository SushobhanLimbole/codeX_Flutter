// parent class container takes color of child container
// if child does not have color then parent takes
// color of his own
// TRY AND ERROR FOR HERARCHY OF CONTAINERS
// 
// Container(
//   height: 200,
//   width: 200,
//   color: Colors.black,
// child container's height & width is that of parent
// Container(200x200)-->child(200x200) 
//     child: Container(
//       height: 50,
//       width: 50,
//       decoration: BoxDecoration(
//         border: Border.all(width: 10, color: Colors.green),
//         color: Colors.red,
//       ),
//     ),
// ),


// Container(
//   height: 200,
//   width: 200,
//   color: Colors.black,
// child container's height & width is that of parent
// because it doesn't have its own height & width
// Container(200x200)-->child:Center(200x200)-->child(200x200) 
//   child: Center(
//     child: Container(
//       decoration: BoxDecoration(
//         border: Border.all(width: 10, color: Colors.green),
//         color: Colors.red,
//       ),
//     ),
//   ),
// ),

// Container(
//   height: 200,
//   width: 200,
//   color: Colors.black,
//   child: Center(
// here,chid container takes its own height and width
// because it is a child of Center and Center places its child 
// in the center hence the height and width of child container is obtained
// Container(200x200)-->child:Center(200x200)-->child(100x100) 
//     child: Container(
//       height: 100,
//       weight: 100,
//       decoration: BoxDecoration(
//         border: Border.all(width: 10, color: Colors.green),
//         color: Colors.red,
//       ),
//     ),
//   ),
// ),