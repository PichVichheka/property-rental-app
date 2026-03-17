import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/edit_profile_screen.dart';
import '../screens/add_property_screen.dart';
import 'package:property_rental_app/route/app-route.dart';

class AppRoutes {
  // Route Names
  static const String login = '/';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String editProfile = '/edit-profile';
  static const String addProperty = '/add-property'; // ✅ ADD THIS

  // Route Map
  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginScreen(),
    home: (context) => const HomeScreen(),
    profile: (context) => const ProfileScreen(),
    editProfile: (context) => const EditProfileScreen(),
    addProperty: (context) => const AddPropertyScreen(), // ✅ ADD THIS
  };
}