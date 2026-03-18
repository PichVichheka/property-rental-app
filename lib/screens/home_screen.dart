import 'package:flutter/material.dart';
import '../models/property.dart';
import '../widgets/property_card.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/filter_dropdown_widget.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedLocation = 'All';
  String selectedPrice = 'Any';
  String selectedSort = 'Default';

  final List<Property> properties = [
    Property(
      title: "Spacious Family House",
      location: "Phnom Penh",
      image: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
      rating: 4.5,
      beds: 4,
      baths: 1,
      price: 75,
      isAvailable: true,
    ),
    Property(
      title: "Modern Apartment",
      location: "Siem Reap",
      image: "https://images.unsplash.com/photo-1493809842364-78817add7ffb",
      rating: 4.2,
      beds: 2,
      baths: 1,
      price: 60,
      isAvailable: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 148, 235, 145),
        elevation: 0,
        title: const Text("Home", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
              icon: const Icon(Icons.notifications_none, color: Colors.black),
              onPressed: () {}),
          const CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=3")),
          const SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          const SearchBarWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                FilterDropdownWidget(
                  label: "Location",
                  selectedValue: selectedLocation,
                  options: ['All', 'Phnom Penh', 'Siem Reap'],
                  onChanged: (value) {
                    setState(() {
                      selectedLocation = value!;
                    });
                  },
                ),
                const SizedBox(width: 8),
                FilterDropdownWidget(
                  label: "Price",
                  selectedValue: selectedPrice,
                  options: ['Any', '<50', '50-80', '>80'],
                  onChanged: (value) {
                    setState(() {
                      selectedPrice = value!;
                    });
                  },
                ),
                const SizedBox(width: 8),
                FilterDropdownWidget(
                  label: "Sort",
                  selectedValue: selectedSort,
                  options: ['Default', 'Price Low → High', 'Price High → Low'],
                  onChanged: (value) {
                    setState(() {
                      selectedSort = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: properties.length,
              itemBuilder: (context, index) {
                return PropertyCard(property: properties[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}