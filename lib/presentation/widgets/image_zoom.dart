import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageZoom extends StatelessWidget {
  final String imageAsset;

  const ImageZoom({super.key, required this.imageAsset}); 

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FullScreenImage(imageAsset: imageAsset),
              ),
            );
          },
          child: Hero(
            tag: imageAsset,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imageAsset;

  const FullScreenImage({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: Hero(
            tag: imageAsset,
            child: PhotoView(
              imageProvider: AssetImage(imageAsset),
              backgroundDecoration:
                  const BoxDecoration(color: Colors.transparent),
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.covered * 3,
            ),
          ),
        ),
    );
  }
}