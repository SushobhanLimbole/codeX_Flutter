import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';

class JavaConstructor extends StatelessWidget {
  JavaConstructor({super.key});
  List<String> code = [
    ''' //Without Parameter Constructor

class Demo{

	Demo(){
		System.out.println("In Constructor");
	}

	public static void main(String[] args)throws IOException{
		
		Demo d = new Demo();
		System.out.println("Main Method");
	}
}''',
    ''' //Parameterized Constructor

class Demo{

	Demo(int a){
		System.out.println("Para Constructor");
	}

	public static void main(String[] args)throws IOException{
		
		Demo d = new Demo(10);
		System.out.println("Main Method");
	}
}''',
    ''' //Parameterized Constructor

class Demo{

	Demo(int a){
		System.out.println("int para Constructor");
	}

  Demo(char a){
    System.out.println("char para constructor");
  }

	public static void main(String[] args)throws IOException{
		
		Demo d = new Demo(10);
		System.out.println("Main Method");
	}
}''',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Constructor"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: HighlightView(
              "${code[index]}",
              languageId: java.id,
              theme: githubDarkDimmedTheme,
            ),
          );
        },
      ),
    );
  }
}
