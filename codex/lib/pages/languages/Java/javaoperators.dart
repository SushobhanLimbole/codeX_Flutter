import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';

class JavaOperators extends StatelessWidget {
  JavaOperators({super.key});
  List<String> code = [
    ''' //Arithmetic Operators

class Demo{

	public static void main(String[] args){
		
		int a = 10;
		int b = 5;
		System.out.println("Addition = "+(a+b));
		System.out.println("Substraction = "+(a-b));
		System.out.println("Multiplication = "+(a*b));
		System.out.println("Division = "+(a/b));
		System.out.println("Modulus = "+(a%b));
	}
}''',

''' //Assignment operators

class Demo{

	public static void main(String[] args){
		
		int a = 10; // = operator
		int b = 5;
		System.out.println("a = "+(a-=10));
		System.out.println("a = "+(a+=10));
		System.out.println("a = "+(a*=10));
		System.out.println("a = "+(a/=10));
		System.out.println("a = "+(a%=10));
	}
}''',

''' //Relational operators

class Demo{

	public static void main(String[] args){
		
		if(10>5){
			System.out.println("10 is greater than 5");
		}
		if(10<15){
			System.out.println("10 is less than 15");
		}
		if(10>=10){
			System.out.println("10 is greater than or equal to 10");
		}
		if(10<=10){
			System.out.println("10 is less than or equal to 10");
		}
		if(1==1){
			System.out.println("1 is equal to 1");
		}
		if(10!=5){
			System.out.println("10 is not equal to 5");
		}


	}
}''',

''' //Logical operators

class Demo{

	public static void main(String[] args){
		
		if(10>5 && 5<12){
			System.out.println("True");
		}
		if(10>15 || 5 == 5){
			System.out.println("True");
		}
		if(!false){
			System.out.println("True");
		}
	}
}'''
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operators"),
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
