import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ColorAllContainer extends StatelessWidget {
  const ColorAllContainer({
    super.key,
    required this.color,
    required this.title,
    required this.content,
  });

  final Color color;
  final String title;
  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              ClearContainer(
                  content: Text(
                    title,
                    style: textTheme.titleLarge,
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content,
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}