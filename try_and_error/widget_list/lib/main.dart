// import 'package:flutter/material.dart';
// import 'package:widget_list/productModel.dart';
// import 'package:widget_list/search.dart'; // Import the SearchScreen

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Sample JSON data
//     final jsonData = [
//       {
//         "productId": 1,
//         "productName": "Nike Revolution",
//         "smallDesc": "Running Shoes for Men",
//         "mainDesc":
//             "Experience unmatched comfort and performance with our running shoes designed specifically for men. Crafted with advanced cushioning technology, these shoes offer superior support and shock absorption, ensuring a smooth and stable run.",
//         "categoryName": "Shoes",
//         "stock": 5,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/shoe1.png?alt=media&token=54ff3cdf-4ed9-48b2-a96f-b362553e6028",
//         "rating": 4,
//         "sizes": ["7", "8", "9", "11"],
//         "colors": ["black", "blue", "green"],
//         "price": 2550.0,
//         "favorite": false
//       },
//       {
//         "productId": 2,
//         "productName": "CLYMB ES-21",
//         "smallDesc": "Hockey,Walking",
//         "mainDesc":
//             "Upgrade your athletic gear with the versatile ES-21 running shoes, perfect for walking, outdoor activities, gym sessions, and training. Designed for men, these grey shoes combine style and functionality. ",
//         "categoryName": "Shoes",
//         "stock": 3,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/shoe2.png?alt=media&token=240e4094-88a6-46a1-92a6-1de4b0141345",
//         "rating": 4,
//         "sizes": ["11", "12", "13"],
//         "colors": ["black", "blue", "green", "red"],
//         "price": 599.0,
//         "favorite": false
//       },
//       {
//         "productId": 3,
//         "productName": "CAMPUS MIKE",
//         "smallDesc": "Running Shoes For Men ",
//         "mainDesc":
//             "Experience unmatched comfort and performance with CAMPUS MIKE running shoes. Designed for runners, these shoes feature a breathable mesh upper, cushioned insole, and durable outsole to support your every stride. ",
//         "categoryName": "Shoes",
//         "stock": 3,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/shoe3.png?alt=media&token=70d2d5bf-f61e-432d-beda-c45fc42a8c37",
//         "rating": 4,
//         "sizes": ["7", "8", "9", "10"],
//         "colors": ["black", "blue", "grey", "red"],
//         "price": 599.0,
//         "favorite": false
//       },
//       {
//         "productId": 4,
//         "productName": "CAMPUS HURRICANE",
//         "smallDesc": "Running Shoes For Men ",
//         "mainDesc":
//             "Experience unmatched comfort and performance with CAMPUS MIKE running shoes. Designed for runners, these shoes feature a breathable mesh upper, cushioned insole, and durable outsole to support your every stride.",
//         "categoryName": "Shoes",
//         "stock": 3,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/shoe4.png?alt=media&token=a5b58473-3331-4a29-9ca4-de1f4d677699",
//         "rating": 4,
//         "sizes": ["10", "11", "12", "13", "14"],
//         "colors": ["black", "blue", "grey", "red"],
//         "price": 699.0,
//         "favorite": false
//       },
//       {
//         "productId": 1,
//         "productName": "Asus bagpack",
//         "smallDesc": "Asus backpack laptop",
//         "mainDesc":
//             "Asus Gaming backpack is the original leather and polyster mixed backpack with seperate laptop compartment and 3d graphics on the bag",
//         "categoryName": "bags",
//         "stock": 10,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/asus1.png?alt=media&token=1a28cbbd-227f-4684-b9f7-d81707492792",
//         "rating": 5,
//         "sizes": ["15 inch", "17 inch"],
//         "colors": [],
//         "price": 1000.0,
//         "favorite": false
//       },
//       {
//         "productId": 2,
//         "productName": "Asus Gaming Backpack",
//         "smallDesc": "Asus gaming backpack",
//         "mainDesc":
//             "Asus Gaming backpack is the original leather and polyster mixed backpack with seperate laptop compartment and 3d graphics on the bag",
//         "categoryName": "bags",
//         "stock": 4,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/asus2.png?alt=media&token=11c28fda-7111-4b20-a5dc-2145b8fafdb5",
//         "rating": 4,
//         "sizes": ["15 inch", "17 inch"],
//         "colors": [],
//         "price": 3000.0,
//         "favorite": false
//       },
//       {
//         "productId": 3,
//         "productName": "Safari Bag",
//         "smallDesc": "Safari bags",
//         "mainDesc":
//             "Safari band name comes with the best quality and have been years serving the user to the best exprience",
//         "categoryName": "bags",
//         "stock": 10,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/safari.png?alt=media&token=59517c33-8234-4487-b1a9-13b4ab2942c2",
//         "rating": 5,
//         "sizes": ["15 inch"],
//         "colors": [],
//         "price": 800.0,
//         "favorite": false
//       },
//       {
//         "productId": 4,
//         "productName": "Laguage Bags",
//         "smallDesc": "Laguage Bag",
//         "mainDesc":
//             "The laguage bag offers the 4 campartment sections which store up to 17 kg of weight",
//         "categoryName": "bags",
//         "stock": 2,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/laguage.png?alt=media&token=30029d3c-e9dc-4271-ab24-4397eaec6b8e",
//         "rating": 5,
//         "sizes": ["25.0 inch"],
//         "colors": [],
//         "price": 7000.0,
//         "favorite": false
//       },
//       {
//         "productId": 5,
//         "productName": "Duffel Bags",
//         "smallDesc": "Duffel Bags",
//         "mainDesc":
//             "Duffel bags is perfect for gym rats to store the gym essentials in it with proper space allotation",
//         "categoryName": "bags",
//         "stock": 14,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/duffel.png?alt=media&token=2ffa4255-511e-4c65-87e6-564a9ea736ca",
//         "rating": 5,
//         "sizes": [],
//         "colors": [],
//         "price": 800.0,
//         "favorite": false
//       },
//       {
//         "productId": 6,
//         "productName": "Travelling Bags",
//         "smallDesc": "Travelling bags",
//         "mainDesc":
//             "Duffel bags is perfect for gym rats to store the gym essentials in it with proper space allotation",
//         "categoryName": "bags",
//         "stock": 14,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/travelling.png?alt=media&token=2277bf84-8c77-45d4-8c19-4fb6e056ab99",
//         "rating": 5,
//         "sizes": [],
//         "colors": [],
//         "price": 5000.0,
//         "favorite": false
//       },
//       {
//         "productId": 7,
//         "productName": "HandBags",
//         "smallDesc": "Hand Bags",
//         "mainDesc":
//             "Hand bags is perfect for women to store the essentials in it with proper space allotation and with rich design curved with proper lasses",
//         "categoryName": "bags",
//         "stock": 14,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/handbag1.png?alt=media&token=e90cdce2-e04f-455f-aa0a-25acb3d5bc42",
//         "rating": 5,
//         "sizes": [],
//         "colors": [],
//         "price": 800.0,
//         "favorite": false
//       },
//       {
//         "productId": 8,
//         "productName": "HandBags",
//         "smallDesc": "Hand Bags",
//         "mainDesc":
//             "Hand bags is perfect for women to store the essentials in it with proper space allotation and with rich design curved with proper lasses",
//         "categoryName": "bags",
//         "stock": 14,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/handbag2png.png?alt=media&token=7675b3d8-24be-42c5-99f6-4fc5ad0857a5",
//         "rating": 5,
//         "sizes": [],
//         "colors": [],
//         "price": 800.0,
//         "favorite": false
//       },
//       {
//         "productId": 1,
//         "productName": "Boat rokerz 450z",
//         "smallDesc": "Wireless headphones",
//         "mainDesc":
//             "This headphones contain bluetooth 5.0 wiht anc mic cancllectoin and is available in multi-color with about 80hrs battery life",
//         "categoryName": "electronics",
//         "stock": 5,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/headphone1.png?alt=media&token=99bf052c-f3fb-4555-b5e1-d0aa620bd9d6",
//         "rating": 4,
//         "sizes": [],
//         "colors": [],
//         "price": 1499,
//         "favorite": false
//       },
//       {
//         "productId": 2,
//         "productName": "Asus Gaming Console",
//         "smallDesc": "Wireless Gaming Console",
//         "mainDesc":
//             "This gaming console provides all available games over steam and epic store to play in with it and is available in multi-color with about 1-2 days of battery life",
//         "categoryName": "electronics",
//         "stock": 2,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/console1.png?alt=media&token=6b44f840-e8ec-4626-b5e0-624dcd0f2607",
//         "rating": 4,
//         "sizes": [],
//         "colors": [],
//         "price": 49500,
//         "favorite": false
//       },
//       {
//         "productId": 3,
//         "productName": "Samsung S24 ultra",
//         "smallDesc": "SmartPhone with advance camera and display",
//         "mainDesc":
//             "This smartphone is capable to handle any heavy task it can run multiple application at the same time and is available in multi-color and has snapDragon 8 gen 3 processor",
//         "categoryName": "electronics",
//         "stock": 3,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/mobile1.png?alt=media&token=3ee88628-edfa-4c5b-8e5b-d218ea2eb345",
//         "rating": 5,
//         "sizes": [],
//         "colors": [],
//         "price": 122000,
//         "favorite": false
//       },
//       {
//         "productId": 4,
//         "productName": "Canon Camera",
//         "smallDesc": "Mirrorless camera",
//         "mainDesc":
//             "This camera is a mirrorless camera which clicks the high defination images even you are not a professional with autofocusing and premium options",
//         "categoryName": "electronics",
//         "stock": 3,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/camera1.png?alt=media&token=6a54c111-bff8-4b73-ab00-099267b19aa2",
//         "rating": 3,
//         "sizes": [],
//         "colors": [],
//         "price": 40000,
//         "favorite": false
//       },
//       {
//         "productId": 5,
//         "productName": "Iphone 15 pro max",
//         "smallDesc": "Apple Iphone 15 pro max",
//         "mainDesc":
//             "The seemless experience with every touch many a move is the defination of apple iphone 15 pro max with our latest ios 18",
//         "categoryName": "electronics",
//         "stock": 4,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/mobile2.png?alt=media&token=2a89ec38-0f98-4b7c-88d2-d60144bed4c2",
//         "rating": 5,
//         "sizes": [],
//         "colors": [],
//         "price": 180000,
//         "favorite": false
//       },
//       {
//         "productId": 6,
//         "productName": "JBL Speaker",
//         "smallDesc": "JBL speaker with wireless connection",
//         "mainDesc":
//             "JBl offers the bluetooth 6.1 connectivity and the loud noise can make any party scream loud",
//         "categoryName": "electronics",
//         "stock": 4,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/speaker1.png?alt=media&token=673b7d3a-a5d9-403f-a9a4-6eb508f85999",
//         "rating": 4,
//         "sizes": [],
//         "colors": [],
//         "price": 5000,
//         "favorite": false
//       },
//       {
//         "productId": 7,
//         "productName": "Smart Watch",
//         "smallDesc": "Noise Force plus bluetooth",
//         "mainDesc":
//             "Noise force plus is the wireless smart watch offer the features like hard rugged look and more than 120+ sport mode options",
//         "categoryName": "electronics",
//         "stock": 10,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/watch1.png?alt=media&token=4c1a3f77-1ddb-4fa7-99a4-f29ab378e054",
//         "rating": 5,
//         "sizes": [],
//         "colors": [],
//         "price": 4000,
//         "favorite": false
//       },
//       {
//         "productId": 8,
//         "productName": "Asus Gtrix 17",
//         "smallDesc": "Intel i9 13000k",
//         "mainDesc":
//             "The asus gtrix 17 offers the raw power which excutes any task like it was their. The powerful processor 19 13000k offers any gaming with 4k resolution supported by 4080",
//         "categoryName": "electronics",
//         "stock": 2,
//         "imageUrl":
//             "https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/laptop1.png?alt=media&token=2edf8e1a-51ac-4a25-bf91-ad6046d19302",
//         "rating": 5,
//         "sizes": [],
//         "colors": [],
//         "price": 200000,
//         "favorite": false
//       }
//     ];

//     // Parse JSON data to list of Product objects
//     final products = jsonData.map((json) => Product.fromJson(json)).toList();

//     return MaterialApp(
//       home: HomeScreen(products: products),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   final List<Product> products;

//   HomeScreen({required this.products});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => SearchScreen(products: products),
//               ),
//             );
//           },
//           child: Text('Go to Search'),
//         ),
//       ),
//     );
//   }
// }


