import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';

class JavaControl extends StatelessWidget {
  JavaControl({super.key});
  List<String> code = [
    ''' //if-else

class Demo{

	public static void main(String[] args){
		
		if(10>5){
			System.out.println("10 is greater than 5");
		}else{
			System.out.println("10 is less than 5");
		}
	}
}''',
    ''' //for loop

class Demo{

	public static void main(String[] args){
		
		for(int i = 1;i<=10;i++){
      System.out.println(i);
    }
	}
}''',
    ''' //while loop

class Demo{

	public static void main(String[] args){
		
    int i = 1;
		while(i<12){
      System.out.println(i);
      i++;
    }
	}
}''',
    ''' //do-while loop

class Demo{

	public static void main(String[] args){
		
    int i = 1;
		do{
      System.out.println("Hello");
      i++;
    }while(i<=5);
	}
}''',
    ''' //break statement

class Demo{

	public static void main(String[] args){
		
		for(int i = 1;i<=10;i++){
      System.out.println(i);
      if(i == 5){
        break;
      }
    }
	}
}''',

 ''' //continue statement

class Demo{

	public static void main(String[] args){
		
		for(int i = 1;i<=10;i++){
      if(i == 5){
        continue;
      }
      System.out.println(i);
    }
	}
}''',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Control Statements"),
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
