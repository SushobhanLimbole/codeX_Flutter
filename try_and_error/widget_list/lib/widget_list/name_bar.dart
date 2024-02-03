import 'package:flutter/material.dart';

class NameBar extends StatefulWidget {
  const NameBar({super.key});

  @override
  State<NameBar> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NameBar> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              color: Colors.black,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    margin: EdgeInsets.only(left: 20),
                    color: Colors.redAccent[400],
                  ),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        change = !change;
                      });
                    },
                    child: Container(
                      width: 40,
                      color: change ? Colors.red : Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.ac_unit_outlined,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
