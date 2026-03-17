import 'package:flutter/material.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: Colors.green[100],
          child: Text(
            'JS',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            ),
          ),
        ),
        const SizedBox(width: 16),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Smith',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              Text(
                'Property Owner',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
        Icon(Icons.phone, color: Colors.green[700], size: 26),
        const SizedBox(width: 20),
        Icon(Icons.message, color: Colors.green[700], size: 26),
      ],
    );
  }
}
