import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

class ImageFetchScreen extends StatefulWidget {
  @override
  _ImageFetchScreenState createState() => _ImageFetchScreenState();
}

class _ImageFetchScreenState extends State<ImageFetchScreen> {
  String imageUrl = '';
  bool isLoading = true;

  Future<void> fetchImageUrl() async {
    try {
      // Get the download URL from Firebase Storage
      String url =
          await FirebaseStorage.instance.ref('calabria.webp').getDownloadURL();
      print(url);
      setState(() {
        imageUrl = url;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Failed to load image URL: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchImageUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(imageUrl)),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : imageUrl != null
                ? Container(
                    height: 500,
                    width: 500,
                    child: Image.network(imageUrl),
                  )
                : Text('Failed to load image'),
      ),
    );
  }
}
