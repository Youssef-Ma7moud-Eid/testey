import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testey/core/pick_image.dart';



class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({super.key});

  @override
  State<ImageUploadScreen> createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  final List<File?> _images = List.generate(50, (index) => null);

  Future<void> _pickImage(int index) async {
    final File? file = await FuctionsPickImage.pickImageGallery();
    if (file != null) {
      setState(() {
        _images[index] = file;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            "يمكنك إضافة 50 صور",
            style: TextStyle(color: Color(0xff7E7E7E), fontSize: 18),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: GridView.builder(
              itemCount: _images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                final image = _images[index];
                return GestureDetector(
                  onTap: () => _pickImage(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffE9EEF9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: image == null
                          ? Image.asset("assets/images/gallery-add.png")
                          : Image.file(image, fit: BoxFit.cover),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      
    );
  }
}
