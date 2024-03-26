import 'package:flutter/material.dart';
import 'package:local_db/local.dart';

class ShowPlayers extends StatefulWidget {
  const ShowPlayers({super.key});

  @override
  State<ShowPlayers> createState() => _ShowPlayersState();
}

class _ShowPlayersState extends State<ShowPlayers> {
  int updateJerno = 0;
  String updatename = '';

  int jersey = 0;
  String name = '';
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

  void update(Map index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height - 150,
          width: 200,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(children: [
            TextFormField(
              initialValue: '${index["name"]}',
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(44, 55, 149, 0.67))),
                hintText: 'Enter player name',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              onChanged: (value) {
                updatename = value;
                print(updatename);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  updateJerno = index["jerNo"];
                  print(updatename);
                  print(updateJerno);
                  PlayerModelClass p =
                      PlayerModelClass(jerNo: updateJerno, name: updatename);
                  index["jerNo"] = updateJerno;
                  index["name"] = updatename;
                  await updatePlayer(p);

                  setState(() {});
                  Navigator.pop(context);
                },
                child: const Text("Update"))
          ]),
        );
      },
    );
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
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                '${data[index]["name"]}',
                style: const TextStyle(fontSize: 16),
              ),
              IconButton(
                  onPressed: () {
                    update(data[index]);
                  },
                  icon: const Icon(Icons.edit)),
              IconButton(
                  onPressed: () async {
                    data.removeAt(index);
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
