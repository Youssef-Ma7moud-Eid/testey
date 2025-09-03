import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:testey/widgets/custom_button_sheet.dart';
import 'package:testey/widgets/custom_price_field.dart';
import 'package:testey/widgets/custom_select_item.dart';

class CarView extends StatelessWidget {
  const CarView({super.key});

  void _showBlurSheet(
    BuildContext context,
    String title,
    List<String> options,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(color: Colors.black.withOpacity(0.2)),
            ),

            DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.9,
              builder: (_, controller) {
                return BottomSheetOptions(title: title, options: options);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CustomSelectItem(
          title: "ماركة ونوع السيارة",
          isIcon: true,
          onTap: () {
            _showBlurSheet(context, "ماركة ونوع السيارة", [
              "تويوتا كورولا",
              "تويوتا لاندكروزر",
              "تويوتا راف فور",
              "تويوتا ياريس",
              "تويوتا كامري",
              "تويوتا هايلاندر",
              "تويوتا سيكويا",
              "تويوتا فينزا",
              "تويوتا تندرا",
            ]);
          },
        ),
        CustomSelectItem(
          title: "نوع ناقل الحركة",
          isIcon: true,
          onTap: () {
            _showBlurSheet(context, "نوع ناقل الحركة", [
              "جير عادي",
              "أوتوماتيك",
            ]);
          },
        ),
        CustomPriceField(onChanged: (price) {}),
      ],
    );
  }
}


