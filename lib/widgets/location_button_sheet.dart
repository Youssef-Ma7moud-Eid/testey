import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocationBottomSheetContent extends StatelessWidget {
  const LocationBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 4,
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        TextField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: "المدينه ",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: "المديرية",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          maxLines: 5,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: "وصف الموقع ",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            hintText: "رقم الهاتف",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ],
    );
  }
}
