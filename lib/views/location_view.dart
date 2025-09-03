import 'package:flutter/material.dart';
import 'package:testey/widgets/custom_location.dart';
import 'package:testey/widgets/custom_location_title.dart';
import 'package:testey/widgets/location_button_sheet.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Image.asset("assets/images/location.png", fit: BoxFit.cover),
        ),
        Positioned(
          top: 5,
          left: 10,
          right: 10,
          child: const CustomLocationTitle(),
        ),
        Positioned(
          bottom: 110,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) {
                  return DraggableScrollableSheet(
                    initialChildSize: 0.5,
                    minChildSize: 0.3,
                    maxChildSize: 0.95,
                    expand: false,
                    builder: (context, scrollController) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: ListView(
                          controller: scrollController,
                          padding: const EdgeInsets.all(16),
                          children: const [LocationBottomSheetContent()],
                        ),
                      );
                    },
                  );
                },
              );
            },
            child: const CustomDescriptionLocation(),
          ),
        ),

        DraggableScrollableSheet(
          initialChildSize: 0.17,
          minChildSize: 0.1,
          maxChildSize: 0.7,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.all(16),
                children: const [LocationBottomSheetContent()],
              ),
            );
          },
        ),
      ],
    );
  }
}