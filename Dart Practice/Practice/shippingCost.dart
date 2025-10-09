/*Develop a program to calculate the shipping cost based on the destination zone and the weight of the package(you will be provided)
Calculate the shipping cost acc to these conditions:
(i)detination zone 'xyz', the shipping cost is $5 per kg
(i)detination zone 'abc', the shipping cost is $7 per kg
(i)detination zone 'pqr', the shipping cost is $10 per kg
(i)detination zone is not 'xyz', 'abc' , or 'pqr',then display an error message.*/
import 'dart:io';

ShippingCost() {
  stdout.write('Please Enter the destination:');
  String shippingDestination = stdin.readLineSync()!;
  int shippingCost;
  stdout.write('Please Enter the weight:');
  int weight = int.parse(stdin.readLineSync()!);
  switch (shippingDestination) {
    case 'xyz':
      shippingCost = 5 * weight;
      print("shippingCost:\${$shippingCost}");
      break;
    case 'abc':
      shippingCost = 7 * weight;
      print("shippingCost:\${$shippingCost}");
      break;
    case 'pqr':
      shippingCost = 10 * weight;
      print("shippingCost:\${$shippingCost}");
      break;
    default:
      print("Invalid destination zone. Please try again.");
  }
}

void main() {
  ShippingCost();
}
