import 'package:flutter/material.dart';

class Widget_List extends StatefulWidget {
  const Widget_List({super.key});

  @override
  State<Widget_List> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Widget_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 50,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(left: 50)),
                      Container(
                        width: 50,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox.expand(
                        child: Container(
                          width: 20,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
