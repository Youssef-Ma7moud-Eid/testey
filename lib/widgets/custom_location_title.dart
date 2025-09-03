import 'package:flutter/material.dart';

class CustomLocationTitle extends StatelessWidget {
  const CustomLocationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Text(
        'حدد موقعك على الخريطة',
        style: TextStyle(
          color: Color(0XFF224EA2),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}