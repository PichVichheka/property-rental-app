import 'package:flutter/material.dart';
import '../widgets/rating_stars.dart';
import '../widgets/review_card.dart';
import '../widgets/review_input.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  // Dummy reviews (you can replace with real data/API later)
  final List<Map<String, dynamic>> _reviews = [
    {
      'name': 'Srey Pov',
      'date': 'Feb 15, 2026',
      'rating': 4.5,
      'comment':
          'Very clean and peaceful place. The host is friendly. Good for short stay in Phnom Penh.',
    },
    {
      'name': 'David K.',
      'date': 'Jan 28, 2026',
      'rating': 5.0,
      'comment':
          'Perfect budget studio! Everything as described. Loved the natural light and quiet area.',
    },
    {
      'name': 'Chanthy',
      'date': 'Dec 10, 2025',
      'rating': 4.0,
      'comment':
          'Nice location, close to market. AC works well. Only small issue with hot water timing.',
    },
  ];

  double _averageRating = 4.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reviews'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with property image + info (similar to your screenshot style)
            Stack(
              children: [
                // Background image
                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: Image.network(
                    'https://thumbs.dreamstime.com/b/modern-minimalist-bedroom-design-featuring-wooden-bed-frame-soft-bedding-natural-light-large-windows-ai-generated-357263602.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                // Overlay gradient + text
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Cozy Budget Rental Studio',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'at Dei Tmei, Sen Sok, Phnom Penh',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Average rating
                  Row(
                    children: [
                      Text(
                        _averageRating.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 12),
                      RatingStars(rating: _averageRating, size: 28),
                      const SizedBox(width: 8),
                      Text(
                        '(${_reviews.length} reviews)',
                        style: TextStyle(color: Colors.grey[600], fontSize: 15),
                      ),
                    ],
                  ),

                  const SizedBox(height: 28),
                  const Text(
                    'Guest Reviews',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),

                  // List of reviews
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _reviews.length,
                    itemBuilder: (context, index) {
                      final review = _reviews[index];
                      return ReviewCard(
                        name: review['name'],
                        date: review['date'],
                        rating: review['rating'],
                        comment: review['comment'],
                      );
                    },
                  ),

                  const SizedBox(height: 32),
                  const Divider(),
                  const SizedBox(height: 24),

                  // Add your review section
                  const Text(
                    'Share Your Experience',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),
                  ReviewInput(
                    onSubmit: (rating, comment) {
                      setState(() {
                        _reviews.insert(0, {
                          'name': 'You', // or get real user name
                          'date': 'Just now',
                          'rating': rating,
                          'comment': comment,
                        });
                        // Recalculate average (simple way)
                        double sum = _reviews.fold(
                          0,
                          (prev, e) => prev + e['rating'],
                        );
                        _averageRating = sum / _reviews.length;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Thank you for your review!'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
