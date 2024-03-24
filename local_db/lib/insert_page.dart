import 'package:flutter/material.dart';
import 'package:local_db/local.dart';
import 'package:local_db/show_players.dart';

class InsertPage extends StatefulWidget {
  const InsertPage({super.key});

  @override
  State<InsertPage> createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  int jersey = 0;
  String name = '';
  // TextEditingController jerController = TextEditingController();
  // TextEditingController nameController = TextEditingController();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          // key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Player Details',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(top: 50)),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                child: TextFormField(
                  // controller: jerController,
                  keyboardType: TextInputType.number,
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Please jersey number";
                  //   } else {
                  //     jersey = int.parse(jerController.toString());
                  //     return null;
                  //   }
                  // },
                  onChanged: (value) => jersey = int.parse(value),
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(44, 55, 149, 0.67))),
                    hintText: 'Enter jersey number',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                width: MediaQuery.of(context).size.width - 80,
                child: TextFormField(
                  // controller: nameController,
                  keyboardType: TextInputType.text,
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return "Please player name";
                  //   } else {
                  //     name = nameController.toString();
                  //     return null;
                  //   }
                  // },
                  onChanged: (value) => name = value,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(44, 55, 149, 0.67))),
                    hintText: 'Enter player name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width - 200, 40))),
                  onPressed: () async {
                    // bool loginValidator = _formKey.currentState!.validate();
                    if (jersey != 0 && name != '') {
                      print('insert called');
                      print('$jersey $name');
                      PlayerModelClass obj =
                        PlayerModelClass(jerNo: jersey, name: name);
                      await insertPlayer(obj); 
                      setState(() {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('Inserted details successfully')));
                      });
                    } else {
                      print('insert not called');
                      setState(() {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Please Enter the details!')));
                      });
                    }
                    // PlayerModelClass p =
                    //     PlayerModelClass(jerNo: 1, name: "KL");
                    // await insertIntoDb(obj);
                    // await insertPlayer(p);
                    // List pp = await getPlayers();
                    // print('$pp');
                  },
                  child: const Text(
                    'Insert',
                    style: TextStyle(fontSize: 18),
                  )),
              const Padding(padding: EdgeInsets.only(top: 30)),
              ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width - 200, 40))),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShowPlayers(),
                          ));
                    });
                  },
                  child: const Text(
                    'Show all players',
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
