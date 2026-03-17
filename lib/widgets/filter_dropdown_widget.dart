import 'package:flutter/material.dart';

class FilterDropdownWidget extends StatelessWidget {
  final String label;
  final String selectedValue;
  final List<String> options;
  final ValueChanged<String?> onChanged;

  const FilterDropdownWidget({
    super.key,
    required this.label,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        items: options
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
            .toList(),
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          filled: true,
          fillColor: Colors.grey.shade100,
        ),
      ),
    );
  }
}