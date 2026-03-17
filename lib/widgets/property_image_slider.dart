import 'package:carousel_slider/carousel_slider.dart' as slider;
import 'package:flutter/material.dart';

class PropertyImageSlider extends StatelessWidget {
  PropertyImageSlider({super.key});

  final List<String> images = [
    'https://a0.muscache.com/im/pictures/hosting/Hosting-1298149296746584747/original/0ba47f87-27ff-473e-bcc2-1942c525dc0e.jpeg?im_w=1200',
    'https://camrealtyservice.com/property/1-bedroom-apartment-for-rent-in-bkk1-phnom-penh-n3601168/',
    'https://aps.com.kh/properties/1-bedroom-serviced-apartment-for-rent-tuol-svay-prey-1-phnom-penh/',
    'https://aps.com.kh/properties/2-bedroom-condo-for-rent-l-tower1-mean-chey-phnom-penh/',
    'https://aps.com.kh/properties/2-bedroom-condo-for-rent-l-tower1-mean-chey-phnom-penh/',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: double.infinity,
      child: slider.CarouselSlider(
        // ← add slider.
        options: slider.CarouselOptions(
          // ← add slider.
          height: 320,
          viewportFraction: 1.0,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          enlargeCenterPage: false,
        ),
        items: images.map((url) {
          return Image.network(
            url,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[300],
                child: Center(child: Icon(Icons.image_not_supported)),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
