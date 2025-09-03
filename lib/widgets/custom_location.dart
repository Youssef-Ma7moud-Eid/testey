import 'package:flutter/material.dart';

class CustomDescriptionLocation extends StatelessWidget {
  const CustomDescriptionLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 50,
      width: 370,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "وصف النقطه المحدده",
            style: TextStyle(
              color: Color(0XFF91918B),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(Icons.location_on),
        ],
      ),
    );
  }
}
