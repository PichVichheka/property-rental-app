// lib/models/property.dart
class Property {
  final String title;
  final String subtitle;
  final double pricePerMonth;
  final int bedrooms;
  final int bathrooms;
  final double areaSqm;
  final String description;
  final List<String> amenities;
  final String ownerName;
  final String location;
  final String imageUrl; // For now local asset path, later network URL

  Property({
    required this.title,
    required this.subtitle,
    required this.pricePerMonth,
    required this.bedrooms,
    required this.bathrooms,
    required this.areaSqm,
    required this.description,
    required this.amenities,
    required this.ownerName,
    required this.location,
    required this.imageUrl,
  });

  // Example factory for your screenshot data
  factory Property.sample() => Property(
    title: "Cozy Budget Rental Studio",
    subtitle: "at St. 371, Sangkat Boeung Tompun, Khan Mean Chey",
    pricePerMonth: 350,
    bedrooms: 1,
    bathrooms: 2,
    areaSqm: 10,
    description:
        "Beautiful modern apartment in the heart of the city with stunning views, premium amenities.",
    amenities: ["WiFi", "Pool", "Park amenities", "Garden"],
    ownerName: "John Smith",
    location: "Phnom Penh, Cambodia",
    imageUrl: "assets/images/property_main.jpg", // ← change to your asset
  );
}
