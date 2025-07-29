// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebase_core/firebase_core.dart';

// class ImageFetchScreen extends StatefulWidget {
//   @override
//   _ImageFetchScreenState createState() => _ImageFetchScreenState();
// }

// class _ImageFetchScreenState extends State<ImageFetchScreen> {
//   String imageUrl = '';
//   bool isLoading = true;

//   Future<void> fetchImageUrl() async {
//     try {
//       // Get the download URL from Firebase Storage
//       String url = await FirebaseStorage.instance
//           .ref('apulia.jpg')
//           .getDownloadURL();
      
//       setState(() {
//         imageUrl = url;
//         isLoading = false;
//       });
//     } catch (e) {
//       setState(() {
//         isLoading = false;
//       });
//       print('Failed to load image URL: $e');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchImageUrl();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Fetch Image URL')),
//       body: Center(
//         child: isLoading
//             ? CircularProgressIndicator()
//             : imageUrl != null
//                 ? Container(
//                     height: 200,
//                     width: 200,
//                     child: Image.network(imageUrl),
//                   )
//                 : Text('Failed to load image'),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ImageFetchScreen extends StatefulWidget {
  @override
  _ImageFetchScreenState createState() => _ImageFetchScreenState();
}

class _ImageFetchScreenState extends State<ImageFetchScreen> {
  List<String> imageUrls = [];
  bool isLoading = true; // Add a loading indicator

  Future<void> fetchImageUrls() async {
    try {
      // Example URL for fetching JSON data containing image URLs
      final response = await http.get(Uri.parse('https://firebasestorage.googleapis.com/v0/b/voguevault-ab740.appspot.com/o/calabria.webp?alt=media&token=45c96a8f-395f-4c19-9531-6ee2d065d459'));

      if (response.statusCode == 200) {
        List<dynamic> urls = jsonDecode(response.body);
        setState(() {
          imageUrls = urls.map((url) => url.toString()).toList();
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load image URLs');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchImageUrls();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fetch Image URLs')),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator() // Show a loading indicator while fetching
            : imageUrls.isNotEmpty
                ? Container(
                    height: 200,
                    width: 200,
                    child: Image.network(imageUrls[0]),
                  )
                : Text('No images found'), // Show a message if no images are found
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ImageFetchScreen(),
  ));
}
