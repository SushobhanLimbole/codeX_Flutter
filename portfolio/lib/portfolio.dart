import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Portfolio"),
        centerTitle: true,
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
        elevation: 2,
      ),
      body: SizedBox(
        child: ListView(
          children: [
            //Name Bar
            Container(
              height: 40,
              margin: EdgeInsets.only(top: 12, left: 10),
              child: Text(
                "Sushobhan Limbole",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),

            //Photo
            Padding(padding: EdgeInsets.only(top: 20)),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage("images/my-pic.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
