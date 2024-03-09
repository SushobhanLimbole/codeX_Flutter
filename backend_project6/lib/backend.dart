import 'package:backend_project6/userDetails.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BackEndData extends StatefulWidget {
  const BackEndData({super.key});

  @override
  State<BackEndData> createState() => _BackEndDataState();
}

class _BackEndDataState extends State<BackEndData> {
  List realData = [];
  fetchData() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    realData = json.decode(response.body);
    print(realData[0]['name']);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    // print(realData[0]['name']);
    return Scaffold(
        appBar: AppBar(
          title: Text("backend"),
        ),
        body: ListView.builder(
            itemCount: realData.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> UserDetail(userDetails: realData[index])));
                  },
                  child: Text(realData[index]['name']),
                ),
              );
            }));
  }
}
