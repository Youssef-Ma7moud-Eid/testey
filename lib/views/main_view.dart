import 'package:flutter/material.dart';
import 'package:testey/views/car_view.dart';
import 'package:testey/views/location_view.dart';
import 'package:testey/views/upload_image_view.dart';
import 'package:testey/views/upload_pdf_view.dart';
import 'package:testey/widgets/custom_app_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 1;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onTap: () {
          if (currentIndex > 1) {
            setState(() {
              currentIndex -= 1;
            });

            _pageController.animateToPage(
              currentIndex - 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        currentStep: currentIndex,
        title: steps[currentIndex - 1]["title"]!,
        subTitle1: steps[currentIndex - 1]["subtitle1"],
        subTitle2: steps[currentIndex - 1]["subtitle2"],
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffEFF1FD), width: 2),
        ),
        child: PageView(
          controller: _pageController,

          reverse: true,
          onPageChanged: (index) {
            currentIndex != index + 1
                ? setState(() {
                    currentIndex = index + 1;
                  })
                : null;
          },
          children: [
            const ImageUploadScreen(),
            const CarView(),
            UploadPdfView(),
            LocationView(),
            const Center(child: Text("Page 3")),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(12),
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff90AAF1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            if (currentIndex < steps.length) {
              setState(() {
                currentIndex += 1;
              });

              _pageController.animateToPage(
                currentIndex - 1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
          child: const Text(
            "التالي",
            style: TextStyle(
              fontSize: 22,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, String>> steps = [
  {
    "title": "رفع الصور",
    "subtitle1": "الخطوة التالية:",
    "subtitle2": "تفاصيل المنتج",
  },
  {
    "title": "تفاصيل السيارة",
    "subtitle1": "الخطوة التالية:",
    "subtitle2": "تقرير الفحص",
  },

  {
    "title": "تقرير الفحص (اختياري)",
    "subtitle1": "الخطوة التالية:",
    "subtitle2": "تفاصيل المعلن وموقع المنتج",
  },
  {
    "title": "تفاصيل المعلن وموقع المنتج",
    "subtitle1": "الخطوة التالية:",
    "subtitle2": "مراجعه الاعلان ونشر",
  },
  {"title": "مراجعه الاعلان ونشر"},
];
