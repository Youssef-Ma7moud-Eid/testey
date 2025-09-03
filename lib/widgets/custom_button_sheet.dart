import 'package:flutter/material.dart';

class BottomSheetOptions extends StatelessWidget {
  final String title;
  final List<String> options;

  const BottomSheetOptions({
    super.key,
    required this.title,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),

              decoration: BoxDecoration(
                color: const Color(0xffEFF1FD),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: options.map((option) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pop(context, option);
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 10,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                            color: Color(0xff8A93A6),
                          ),
                          Text(
                            option,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff8A93A6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
