// Course Link: https://youtu.be/CzRQ9mnmh44
// Duration: 1:46 - 2:47

// Functions
// Its a block of code making it easier to run multiple times
/* Syntax
<return-data-type> <fun-name>{
  <Lines-of-code>
  return <variable-name>
}
*/
// void return type
void hello(){
  print("Hello!");
  // we can leave empty or write
  // return;
}

// We can also return multiple values from a single function in the latest dart 3.0
(int, String) ageName(){
  // () Multiple values of different datatypes used in the above line is known as records.
  return (12, "Rivaan!");
}

// If no return type specified it will be assumed dynamic but not recomended

// Parameterised function OR Positional Arguments
void ageName1(String name, int age){
  print("Age is $age and Name is $name.");
}

// Named Arguements
void ageName2({required String name, required int age}){
  print("Age is $age and Name is $name.");
}

// We can combine both types of arguements
// We can not write any positional arguements after the named arguements
void ageName3(age, isAdult, {required String name, String? greetings}){
  print("$greetings $name,\n$name's age is $age and is ${isAdult ? "" : "not "}adult.");
}

// We can also return multiple values in this named arguements fashion
({int age, String name}) printStuff(){
  return (age:20, name:"naman");
}

// Returning a function from a function
Function returnFunction(){
  return (){
    print("Hello from the returned function!");
  };
}

// Short hand syntax for functions using fat arrow =>
// It is used when we have only one line of code in the function
String hello1() => "Hello!"; // This function will return Hello!
void printHello() => print("Hello!"); // This function will print Hello!

void main(){
  // void function calling
  hello();

  // We can also return multiple values from a single function in the latest dart 3.0
  // var == (int, String)
  var agename = ageName();
  print("Age is ${agename.$1} and Name is ${agename.$2}.");

  // OR

  var (age, name) = ageName();
  print("Age is $age and Name is $name.");

  // Positionally arguemented function calling
  String name1 = "Rivaan!";
  int age1 = 19;
  ageName1(name1, age1);

  // Named arguemented function calling
  ageName2(age: 21, name: "Ram");

  // We can combine both types of arguements
  ageName3(29, false, name: "Rajiv", greetings: "Hello!");

  // We can also return multiple values in this named arguements fashion
  final stuff = printStuff();
  print("Name:"+stuff.name);
  print("Age:${stuff.age}");

  // Returning a function from a function
  var f = returnFunction();
  f();

  // Anonymous function
  // This is a function without a name and can be assigned to a variable and called using that variable name
  var f1 = (){
    print("Hello from the anonymous function!");
  };
  f1();
}