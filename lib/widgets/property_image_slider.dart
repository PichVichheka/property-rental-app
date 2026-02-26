import 'package:flutter/material.dart';

class PropertyImageSlider extends StatelessWidget {
  const PropertyImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Image.network(
        'https://a0.muscache.com/im/pictures/hosting/Hosting-1298149296746584747/original/0ba47f87-27ff-473e-bcc2-1942c525dc0e.jpeg?im_w=1200',
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300],
            child: const Center(
              child: Icon(
                Icons.image_not_supported,
                size: 60,
                color: Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}
