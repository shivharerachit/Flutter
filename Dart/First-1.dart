// Course Link: https://youtu.be/CzRQ9mnmh44
// First 2-hours of the course
void main() {
  //Dart folows BODMAS rule

  print('Hello, World!');

  //Variables

  //<data type> <variable name> = <value>;0
  int age = 20;
  double pi = 3.14;
  String name = 'John Doe';
  bool isTrue = true;

  //Dynamic data type allows to store any other data type
  dynamic dynamicVar = 100;
  print(dynamicVar);
  dynamicVar = 'Hello';
  print(dynamicVar);

  //var keyword is used to declare variables without specifying the data type
  var x =
      100; //Here x is an integer and all the features of an integer can be used with x
  print(x);
  var y =
      'Hello'; //Here y is a string and all the features of a string can be used with y
  print(y);

  //Final and Const
  //The type of both final and const variables will be automatically determined by the compiler and can be provided explicitly
  //final keyword is used to declare a variable whose value cannot be changed but is declared at runtime
  final int finalVar = 100;
  //finalVar = 200; //This will give an error
  print(finalVar);
  final dateTime = DateTime.now(); //This will give the current date and time
  print(dateTime);

  //const keyword is used to declare a variable whose value cannot be changed and is declared at compile time
  const int constVar = 100;
  // constVar = 200; //This will give an error
  print(constVar);

  //Printing variables
  print(age);
  print(pi);
  print(name);
  print(isTrue);
  print(dynamicVar);

  //String Interpolation
  print('My name is $name and I am $age years old.');
  //We use curly braces to evaluate expressions
  print('The value of pi is $pi and it is a ${pi.runtimeType} value.');

  //To print $, use \$.
  print('I earned \$1000 today.');

  //Multi-line strings
  String multiLineString = '''
    This is a multi-line string.
    It can span multiple lines.
    ''';
  print(multiLineString);

  //If we want to assign null to any data type variable, we have to define it as nullable by using ? after the data type. Not applicable for final and const variables
  int? nullableVar = null;
  //or
  int? nullableVar2;
  print(nullableVar);
  print(nullableVar2);

  //To use some functions on a nullable variable, we have to check if it is null or not
  if (nullableVar != null) {
    print(nullableVar + 100);
  }
  print("\n\n");
  //or
  print(nullableVar2?.runtimeType);

  //If we have to print some other thing if value is null then we can use ?? operator
  print(nullableVar ?? 'Value is null');
  //or
  print(nullableVar2 ??= 100); //If nullableVar2 is null, then assign 100 to it
  //or
  print(nullableVar?.runtimeType ?? 'Value is null');

  //If Statement
  if (age >= 21) {
    print('You are an adult.');
  } else if (age >= 18) {
    print('You are a teenager adult.');
  } else {
    print('You are a minor.');
  }

  //Ternary Operator
  age >= 21 ? print('You are an adult.') : print('You are a minor.');

  //Switch Case no need to put break statement
  switch (age) {
    case 18:
      print('You are 18 years old.');
    case 21:
      print('You are 21 years old.');
    default:
      print('You are neither 18 nor 21 years old.');
  }
  //when keyword is used in place of case
  switch (age) {
    case 18:
      print('You are 18 years old.');
      // case age when condition:
    case 21 when age == 21:
      print('You are 21 years old.');
    default:
      print('You are neither 18 nor 21 years old.');
  }

  // Loops
  // For Loop
  // for (initialization; condition; increment/decrement){}
  for (int i = 0; i < 2; i++) {
    print("Hello World! ${i+1}");
  }

  // While Loop
  /*
  initialization
  while (condition){
    // code
    // increment/decrement
  }
  */
  int i = 0;
  while (i < 2) {
    print("Hello World! ${i+1}");
    i++;
  } 

  // Do-While Loop
  /*
  initialization
  do{
    // code
    // increment/decrement
  } while (condition);
  */
  i = 0;
  do {
    print("Hello World! ${i+1}");
    i++;
  } while (i < 2);

  // break and continue
  for (int i = 0; i < 5; i++) {
    if (i == 1 || i == 2 || i == 3) {
      continue;
      // This will skip the rest of the code in the loop and will go to the next iteration
    }
    else if (i == 4) {
      break;
      // This will break the loop and will not go to the next iteration
    }
    print(i);
  }
}