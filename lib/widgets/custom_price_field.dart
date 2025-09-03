import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomPriceField extends StatelessWidget {
  const CustomPriceField({super.key, this.onChanged});
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xff4872E7), width: 3),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        style: const TextStyle(
          color: Color(0xff000000),
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "أدخل السعر",
          hintStyle: TextStyle(
            color: Color(0xff4872E7),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}