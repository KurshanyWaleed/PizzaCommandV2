class Pizza {
  final String imagepath;
  final String title;
  final String details;
  double price;
  Pizza({
    required this.price,
    required this.imagepath,
    required this.title,
    required this.details,
  });
  Map<String, bool> ingredirnts = {
    "champignions": true,
    "mozzarella": true,
    "jombon": true,
    "sauseTomate": true
  };
  Map<String, bool> supplements = {
    "mozzarellaSpecial": false,
    "pepperoni": false,
    "jombondedinde": false,
    "poulet": false,
    "thon": false,
    "tommedebizert": false
  };
}
