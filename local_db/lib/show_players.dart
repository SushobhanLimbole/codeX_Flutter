import 'package:flutter/material.dart';
import 'package:local_db/local.dart';

class ShowPlayers extends StatefulWidget {
  const ShowPlayers({super.key});

  @override
  State<ShowPlayers> createState() => _ShowPlayersState();
}

class _ShowPlayersState extends State<ShowPlayers> {
  List data = [];
  List tempData = [];
  fetchData() async {
    print('fetch method called');
    tempData = await getPlayers();
    for (var element in tempData) {
      data.add(element.toMap());
    }
    setState(() {});
  }

  @override
  void initState() {
    print('init method called');
    // TODO: implement initState
    super.initState();
    fetchData();
    print('data = $data');
  }

  @override
  Widget build(BuildContext context) {
    print('build method called');
    print('backend = $data');
    print('${data[0]['jerNo']}');
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(border: Border.all()),
          height: 50,
          margin: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${data[index]["jerNo"]}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '${data[index]["name"]}',
                style: TextStyle(fontSize: 16),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              IconButton(
                  onPressed: () async {
                    data.removeLast();
                    await deletePlayer(tempData[index]);
                    setState(() {});
                  },
                  icon: const Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
