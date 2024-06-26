/*
Exercise:
Develop a program to calculate the shipping cost based on the destination zone and the weight of the packager (you will be provided). 
Calculate the shipping cost according to these conditions:
If the destination zone is 'XYZ', the shipping cost is $5 per kilogram.
If the destination zone is 'ABC',the shipping cost is $7 per kilogram.
If the destination zone is 'PQR', the shipping cost is $10 per kilogram.
If the destination zone is not 'XYZ', 'ABC', or 'PQR', display an error message.
*/

import 'dart:io';
void main(){
  print("Enter destination:");
  String? dest = stdin.readLineSync();
  print("Enter weight (in Kg):");
  double? weight = double.parse(stdin.readLineSync()!);
  double cost = 0;

// Using if-esle
  if(dest == 'XYZ'){
    cost = weight * 5;
  } else if(dest == 'ABC'){
    cost = weight * 7;
  } else if(dest == 'PQR'){
    cost = weight * 10;
  } else{
    print("Invalid destination entered!");
    return;
  }
  print("The shipping cost is: \$$cost");

// Using switch-case
  switch(dest){
    case 'XYZ':
      cost = weight * 5;
    case 'ABC':
      cost = weight * 7;
    case 'PQR':
      cost = weight * 10;
    default:
      print("Invalid destination entered!"); 
      return;
  }
  print("The shipping cost is: \$$cost");
}