import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';

class JavaDatatypes extends StatelessWidget {
  JavaDatatypes({super.key});
  List<String> code = [
    '''class Demo{

	public static void main(String[] args){

		int a = 10;
		float b = 10.8;
		char ch = 'A';
		String str = "Sushobhan";
		double num = 10.58;
		long no = 34567;
		System.out.println("integer = "+a);
		System.out.println("float = "+ch);
		System.out.println("char = "+b);
		System.out.println("String = "+str);
		System.out.println("double = "+num);
		System.out.println("long = "+no);
	}
}'''
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datatypes"),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: HighlightView(
              "$code",
              languageId: java.id,
              theme: githubDarkDimmedTheme,
            ),
          );
        },
      ),
    );
  }
}
