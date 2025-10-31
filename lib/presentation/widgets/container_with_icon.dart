import 'package:flutter/material.dart';

class ContainerWithIcon extends StatelessWidget {
  const ContainerWithIcon({
    super.key,
    required this.color,
    required this.content,
  });

  final Color color;
  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
              width: 12,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 18,
              right: 18,
              top: 12,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: content,
            ),
          ),
        ),
        Positioned(
          bottom: 2,
          right: 24,
          child: Icon(
            Icons.android,
            color: color,
            size: 40,
          ),
        ),
      ],
    );
  }
}