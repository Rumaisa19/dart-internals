/**Create a class Car with:
Properties: brand, year
A constructor using this
A method showDetails() that prints:"The <brand> was made in <year>"
Then make two cars in main() and call showDetails(). */

class Car {
  String? brand;
  int? year;

  Car(this.brand, this.year);

  void showDetails() {
    print("The $brand was made in $year");
  }
}

void main() {
  Car car_1 = Car("BMW", 2022);
  Car car_2 = Car('Bently', 2023);
  car_1.showDetails();
  car_2.showDetails();
}
