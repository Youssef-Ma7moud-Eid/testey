import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadPdfView extends StatefulWidget {
  const UploadPdfView({super.key});

  @override
  _UploadPdfViewState createState() => _UploadPdfViewState();
}

class _UploadPdfViewState extends State<UploadPdfView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        DottedBorder(
          options: RectDottedBorderOptions(
            borderPadding: EdgeInsets.all(2),
            strokeWidth: 5,
            dashPattern: <double>[8, 20],
            strokeCap: StrokeCap.round,
            color: Color(0xff4872E7),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffEFF1FD),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 8,
                    top: 10,
                    bottom: 10,
                    right: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffCED8F9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.add,
                      color: Color(0xff4872E7),
                      size: 32,
                      weight: 20,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "رفع تقرير الفحص",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "ملف نصي pdf",
                      style: TextStyle(
                        color: Color(0xff8A93A6),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffEFF1FD),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 12,
                  bottom: 12,
                  right: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffACBEF4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff4872E7),
                    size: 28,
                    weight: 20,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "طلب فحص",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "يمكنك طلب فحص للسياره الحالية",
                    style: TextStyle(
                      color: Color(0xff8A93A6),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
