import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentStep;
  final int totalSteps;
  final String title;
  final String? subTitle1;
  final String? subTitle2;
  final void Function()? onTap;
  const CustomAppBar({
    super.key,
    required this.currentStep,
    this.totalSteps = 5,
    required this.title,
    required this.subTitle1,
    required this.subTitle2, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xff4872E7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text.rich(
                      TextSpan(
                        children: [
                          if (subTitle1 != null)
                            TextSpan(
                              text: subTitle1,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          if (subTitle2 != null)
                            TextSpan(
                              text:
                                  " $subTitle2", // مسافة قبلها عشان يبان الفرق
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                Container(width: 1.5, height: 40, color: Color(0xff6EACF2)),

                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xff91AAF1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/images/Vector.png",
                      height: 20,
                      width: 15,
                      fit: BoxFit.fill,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Row(
                textDirection: TextDirection.rtl,
                children: List.generate(totalSteps, (index) {
                  bool isActive = index < currentStep;
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      height: 11,
                      decoration: BoxDecoration(
                        color: isActive ? Color(0xff4872E7) : Color(0xffCBD3F9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
