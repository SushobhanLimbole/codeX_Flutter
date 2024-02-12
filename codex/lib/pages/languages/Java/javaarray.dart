import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/java.dart';

class JavaArray extends StatelessWidget {
  JavaArray({super.key});
  List<String> code = [
    ''' //Write a loop to print all elements of an array in reverse order.
//Take array size and array elements as an input

import java.util.Scanner;
class ReverseArray{

	public static void main(String[] args){

		Scanner sc=new Scanner(System.in); 
		System.out.print("Enter the size of the array:");
		int no=sc.nextInt();
		int i,arr[]=new int[no];
		for(i=0;i<no;i++){
			arr[i]=sc.nextInt();	
		}
		System.out.print("Array in reverse:");
		for(i=no-1;i>=0;i--){
			System.out.print(arr[i]+" ");	
		}
	}
}''',
''' //Calculate and print the sum of all elements in an array.
//Take array size and array elements as an input

import java.util.Scanner;
class SumArray{

	public static void main(String[] args){

		Scanner sc=new Scanner(System.in);
		System.out.print("Enter the size of the array:");
		int no=sc.nextInt();
		int arr[]=new int[no],sum=0;
		System.out.print("Enter the elements of an array:");
		for(int i=0;i<no;i++){

			arr[i]=sc.nextInt();
			sum=sum+arr[i];
		}
		System.out.print("Sum of all elements of the array="+sum);
	}
}
'''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Array"),
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
