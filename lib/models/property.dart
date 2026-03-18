class Property {
  final String title;
  final String location;
  final String image;
  final double price;
  final double rating;
  final int beds;
  final int baths;
  final bool isAvailable;

  Property({
    required this.title,
    required this.location,
    required this.image,
    required this.price,
    required this.rating,
    required this.beds,
    required this.baths,
    required this.isAvailable,
  });
}