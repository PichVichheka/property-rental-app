// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _formKey = GlobalKey<FormState>();

//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   bool _isPasswordHidden = true;
//   bool _isLoading = false;

//   void _login() async {
//     if (!_formKey.currentState!.validate()) return;

//     setState(() => _isLoading = true);

//     await Future.delayed(const Duration(seconds: 2)); // simulate API

//     setState(() => _isLoading = false);

//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text("Login Successful")),
//     );
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   InputDecoration _inputDecoration(String label) {
//     return InputDecoration(
//       labelText: label,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   const SizedBox(height: 40),
//                   const Text(
//                     "Welcome Back 👋",
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   const Text(
//                     "Login to continue",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   const SizedBox(height: 32),

//                   // Email
//                   TextFormField(
//                     controller: _emailController,
//                     decoration: _inputDecoration("Email"),
//                     keyboardType: TextInputType.emailAddress,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return "Email is required";
//                       }
//                       if (!value.contains("@")) {
//                         return "Invalid email";
//                       }
//                       return null;
//                     },
//                   ),

//                   const SizedBox(height: 16),

//                   // Password
//                   TextFormField(
//                     controller: _passwordController,
//                     obscureText: _isPasswordHidden,
//                     decoration: _inputDecoration("Password").copyWith(
//                       suffixIcon: IconButton(
//                         icon: Icon(
//                           _isPasswordHidden
//                               ? Icons.visibility_off
//                               : Icons.visibility,
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             _isPasswordHidden = !_isPasswordHidden;
//                           });
//                         },
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return "Password is required";
//                       }
//                       if (value.length < 6) {
//                         return "Password must be at least 6 characters";
//                       }
//                       return null;
//                     },
//                   ),

//                   const SizedBox(height: 24),

//                   ElevatedButton(
//                     onPressed: _isLoading ? null : _login,
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: _isLoading
//                         ? const CircularProgressIndicator(color: Colors.white)
//                         : const Text("Login"),
//                   ),

//                   const SizedBox(height: 16),

//                   TextButton(
//                     onPressed: () {
//                       // Navigate to Register
//                     },
//                     child: const Text("Don't have an account? Register"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }