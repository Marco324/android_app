import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ClasificacionScreen extends StatelessWidget {
  static const String name = 'clasificacion';
  const ClasificacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Clasificación', 
      content: _ClasificacionScreen());
  }
}

class _ClasificacionScreen extends StatelessWidget {
  const _ClasificacionScreen();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text('Clasificación'),
    );
  }
}