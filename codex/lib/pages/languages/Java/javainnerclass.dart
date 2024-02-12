import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';

class JavaInnerClass extends StatelessWidget {
  JavaInnerClass({super.key});
  List<String> code = [
    ''' //Inner class

class Company{

	void interview(){

    class Department{

      void project(){
        System.out.println("Salary");
      }
    }
    Department d = new Department();
    d.project();
  }
}''',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inner Class"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: HighlightView(
              "",
              languageId: java.id,
              theme: githubDarkDimmedTheme,
            ),
          );
        },
      ),
    );
  }
}
