import 'package:flutter/material.dart';

class AmenityChip extends StatelessWidget {
  final String label;

  const AmenityChip(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    IconData? icon;
    if (label == 'WiFi') icon = Icons.wifi;
    if (label == 'Pool') icon = Icons.pool;
    if (label == 'Park') icon = Icons.park;
    if (label == 'Garden') icon = Icons.yard;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 16, color: Colors.green[700]),
            const SizedBox(width: 6),
          ],
          Text(
            label,
            style: TextStyle(
              color: Colors.green[800],
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
