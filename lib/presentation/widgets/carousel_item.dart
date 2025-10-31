import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget> content;
  final double height;
  const CarouselItem({
    super.key, 
    required this.title,
    required this.backgroundColor,
    required this.content, 
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Container(
          decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(
                        alpha: 0.2,
                      ), 
                      blurRadius: 6, 
                      offset: const Offset(0, 3), 
                    ),
                  ],
                ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: textTheme.titleMedium),
                  SizedBox(height: 14),
                  Column(children: content),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
