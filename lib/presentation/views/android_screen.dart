import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AndroidScreen extends StatelessWidget {
  static const String name = 'android';
  const AndroidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Android SO', 
      content: _AndroidContent());
  }
}

class _AndroidContent extends StatelessWidget {
  const _AndroidContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text('Android SO'),
    );
  }
}