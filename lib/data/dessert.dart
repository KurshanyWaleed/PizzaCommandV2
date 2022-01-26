class Dessert {
  final String imagepath;
  final String title;
  final String details;
  double price;
  Dessert({
    required this.price,
    required this.imagepath,
    required this.title,
    required this.details,
  });

  // double updatePIzzaPrice(double value) {
  //   value > 0 ? this.price = this.price + 2 : this.price = this.price - 2;
  //   return this.price;
  // }
}
