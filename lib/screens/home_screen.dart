import 'package:flutter/material.dart';
import '../route/app-route.dart';
import '../components/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: CustomButton(
          title: "Go to Profile", // text shown on the button
          onPressed: () {
            Navigator.pushNamed(
              context,
              AppRoutes.profile,   // go to ProfileScreen
            );
          },
        ),
      ),
    );
  }
}