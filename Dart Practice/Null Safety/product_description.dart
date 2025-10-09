/**Write a Dart class Product with nullable String? description.
 *  Write a method printDescription() that safely prints "No description" if 
 * description is null. */

class Product {
  String? description;

  printDescription() => description == null ?print( 'No Description') : print('$description');
}

void main() {
  Product product1 = Product(); // description is null
  product1.printDescription(); // prints: No Description

  Product product2 = Product()
    ..description = 'This is a new product';
  product2.printDescription(); // prints: This is a new product
}