import 'package:flutter/material.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.green[100],
          child: Text(
            'JS',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            ),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'John Smith',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text('Property Owner', style: TextStyle(color: Colors.grey[600])),
          ],
        ),
        const Spacer(),
        Icon(Icons.phone, color: Colors.green[700], size: 28),
      ],
    );
  }
}
