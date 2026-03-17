import 'package:flutter/material.dart';
import 'register.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'property_rental_app',
      debugShowCheckedModeBanner: false,
      initialRoute: '/register',
      routes: {
        '/register': (BuildContext context) => const Register(),
        // TODO: Change to a Backdrop with a HomePage frontLayer (104)
      },
      // TODO: Customize the theme (103)
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
