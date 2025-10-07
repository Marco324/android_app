import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class GlosarioScreen extends StatelessWidget {
  static const String name = 'glosario';
  const GlosarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Glosario', 
      content: _GlosarioScreen());
  }
}

class _GlosarioScreen extends StatelessWidget {
  const _GlosarioScreen();

  @override
  Widget build(BuildContext context) {
    return Text('Glosario');
  }
}