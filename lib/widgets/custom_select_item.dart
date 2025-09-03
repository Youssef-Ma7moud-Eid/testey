import 'package:flutter/material.dart';

class CustomSelectItem extends StatelessWidget {
  const CustomSelectItem({
    super.key,
    required this.title,
    this.onTap,
    this.isIcon = false,
  });
  final String title;
  final void Function()? onTap;
  final bool isIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xff4872E7), width: 3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, top: 12,bottom: 12,right: 5),
            decoration: BoxDecoration(
              color: const Color(0xffDAE3FA),
              borderRadius: BorderRadius.circular(12),
            ),
            child: isIcon == true
                ? GestureDetector(
                    onTap: onTap,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff4872E7),
                      size: 28,
                      weight: 20,
                    ),
                  )
                : null,
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xff4872E7),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
