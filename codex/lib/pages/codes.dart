List javaCode = [
  [
    '''class Demo{

	public static void main(String[] args){

		System.out.println("Hello World");
	}
}'''
  ],
  [
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
  ],
  [
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
  ],
  [
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
  ],
  [
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
  ],
  [
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
  ],
  [
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
  ],
  [
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
}

class Demo{

  public static void main(String[] args){
    
    Company c = new Company();
    c.interview();
  }
}''',
    ''' //Inner class

class Olympic{

	void indoorGames(){

    class TableTennis{

      int Team1 = 0;
      void numberOfTeams(){
        System.out.println("There are 10 teams in table tennis");
      }

      void score(int t){
        Team1 = t;
      }
    }
    TableTennis tt = new TableTennis();
    tt.numberOfTeams();
    tt.score(14);
  }

  void outdoorGames(){

    class Football{

      int nations = 9;
      void rules(){
        System.out.println("8 rules");
      }
    }
    Football f = new Football();
    f.rules();
  }
}

class Demo{

  public static void main(String[] args){
    
    Olympic obj = new Olympic();
    obj.indoorGames();
    obj.outdoorGames();
  }
}''',
  ],
];
