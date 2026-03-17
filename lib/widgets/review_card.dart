import 'package:flutter/material.dart';
import 'rating_stars.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final String date;
  final double rating;
  final String comment;

  const ReviewCard({
    super.key,
    required this.name,
    required this.date,
    required this.rating,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.green[100],
                  child: Text(
                    name.substring(0, 1).toUpperCase(),
                    style: TextStyle(color: Colors.green[800]),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      date,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                  ],
                ),
                const Spacer(),
                RatingStars(rating: rating, size: 20),
              ],
            ),
            const SizedBox(height: 12),
            Text(comment, style: const TextStyle(height: 1.4)),
          ],
        ),
      ),
    );
  }
}
