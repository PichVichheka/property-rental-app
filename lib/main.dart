import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property_rental_app/screens/property..dart';

// Import your screens
import 'screens/review_screen.dart'; // Assuming you have this file from earlier

void main() {
  runApp(const RentalApp());
}

class RentalApp extends StatelessWidget {
  const RentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cozy Rental',
      debugShowCheckedModeBanner: false,

      // Combined & improved theme from both versions
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',

        // Text styles (from your first main.dart + slight refinement)
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(fontSize: 15, height: 1.4),
        ),

        // AppBar theme (clean white from review version)
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),

        // Button theme (from your first version)
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[600],
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            minimumSize: const Size(double.infinity, 54),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // Card & general elevation style
        cardTheme: CardThemeData(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),

      // Start with Property Detail as home
      home: const PropertyDetailScreen(),

      // Optional: define named routes if you want cleaner navigation
      routes: {'/reviews': (context) => const ReviewScreen()},
    );
  }
}
