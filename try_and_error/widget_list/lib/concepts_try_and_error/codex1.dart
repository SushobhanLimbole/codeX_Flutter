import 'package:flutter/material.dart';

class Codex1 extends StatefulWidget {
  const Codex1({super.key});

  @override
  State<Codex1> createState() => _Codex1State();
}

class _Codex1State extends State<Codex1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50))),
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 40),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  'Please sign in to continue',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            margin: const EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.amber)),
            child: const Text('mob'),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.amber)),
            child: const Text('password'),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          const Text('Forgot Password?'),
          InkWell(
            child: Container(
              height: 50,
              width: 70,
              color: Colors.blue,
              child: const Text('Login'),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          const Row(
            children: [
              Text("Don't have an Account?"),
              Text(
                'Sign Up',
                style: TextStyle(color: Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }
}
