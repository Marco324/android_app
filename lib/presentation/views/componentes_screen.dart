import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ComponentesScreen extends StatelessWidget {
  static const String name = 'componentes';
  const ComponentesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Componentes', 
      content: _ComponentesScreen());
  }
}

class _ComponentesScreen extends StatelessWidget {
  const _ComponentesScreen();

  @override
  Widget build(BuildContext context) {
    return Text('Componentes');
  }
}