import 'package:flutter/material.dart';

class ClearContainer extends StatelessWidget {
  const ClearContainer({
    super.key,
    required this.content,
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric( horizontal: 22),
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1), // sombra suave
            blurRadius: 6, // qué tanto se difumina
            offset: const Offset(0, 3), // desplazamiento vertical
          ),
        ],
      ),
      child: content,
    ),
              );
  }
}