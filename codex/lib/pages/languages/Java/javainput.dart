import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';

class JavaInput extends StatelessWidget {
  JavaInput({super.key});
  List<String> code = [
    ''' //BufferedReader

//take two integer inputs and print Add and Sub
import java.io.*;
class AddSub{

	public static void main(String[] args)throws IOException{
	
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		System.out.print("Enter number1=");
		String str1=br.readLine();
		int num1=Integer.parseInt(str1);
		System.out.print("Enter number2=");
		String str2=br.readLine();
		int num2=Integer.parseInt(str2);
		int add=num1+num2;
		System.out.println("Addition is "+add);
		int sub;
		if(num1==num2){
			sub=num1-num2;
		}else if(num1>num2){
			sub=num1-num2;
		}else{
			sub=num2-num1;
		}
		System.out.println("Substraction is "+sub);
	}
}
''',
    ''' //Scanner

//Write a Program that checks whether the entered number is a Prime Number or not

import java.util.Scanner;
class PrimeNumber{

	public static void main(String[] args){

		Scanner sc=new Scanner(System.in);
		System.out.print("Enter a number:");
		int no=sc.nextInt();
		int count=0;
		for(int i=1;i<=no;i++){

			if(no%i==0)
			count++;
		}
		if(count==2)
		System.out.println(no+" is prime number.");
		else
		System.out.println(no+" is not a prime number.");
	}
}'''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Output"),
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
