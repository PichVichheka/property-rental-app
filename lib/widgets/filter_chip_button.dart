import 'package:flutter/material.dart';

class FilterChipButton extends StatelessWidget {
  final String label;
  final List<String> options;

  const FilterChipButton({super.key, required this.label, required this.options});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        // Handle selected option here
        print('$label selected: $value');
      },
      itemBuilder: (context) {
        return options
            .map((option) => PopupMenuItem<String>(
                  value: option,
                  child: Text(option),
                ))
            .toList();
      },
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 3,
      ),
    );
  }
}