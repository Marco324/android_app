import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ConclusionesScreen extends StatelessWidget {
  static String name = 'conclusiones';
  const ConclusionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Conclusiones', content: ConclusionesContent());
  }
}

class ConclusionesContent extends StatelessWidget {
  const ConclusionesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NombresContainer(text: 'Conclusión general',),
            ImageZoom(imageAsset: 'assets/conclusiones/conclusionGeneral.jpeg'),
            SizedBox(height: 30),

            NombresContainer(text: 'Alvarado Cantú Lesly Elizabeth'),
            ImageZoom(imageAsset: 'assets/conclusiones/conclusionLesly.jpeg'),
            SizedBox(height: 30),

            NombresContainer(text: 'Ávila Ignacio Jesús Emiliano'),
            ImageZoom(
              imageAsset: 'assets/conclusiones/ConclusionEmiliano.jpeg',
            ),
            SizedBox(height: 30),

            NombresContainer(text: 'Balderas García Ana Victoria'),
            ImageZoom(imageAsset: 'assets/conclusiones/conclusionAna.jpeg'),
            SizedBox(height: 30),

            NombresContainer(text: 'Garza Cruz Santiago'),
            ImageZoom(imageAsset: 'assets/conclusiones/conclusionSantiago.jpeg'),
            SizedBox(height: 30),

            NombresContainer(text: 'Méndez Sánchez Marco Antonio'),
            ImageZoom(imageAsset: 'assets/conclusiones/conclusionMarco.jpeg'),
            SizedBox(height: 30),

            NombresContainer(text: 'Pérez Rodríguez Jazmín'),
            ImageZoom(imageAsset: 'assets/conclusiones/ConclusionJazmin.jpeg'),
            SizedBox(height: 30),

            NombresContainer(text: 'Ramón López Anthony Joel'),
            ImageZoom(imageAsset: 'assets/conclusiones/conclusionAnthony.jpeg'),
            SizedBox(height: 30),

            NombresContainer(text: 'Valdez Silva Ángel Karim'),
            ImageZoom(imageAsset: 'assets/conclusiones/conclusionAngel.jpeg'),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class NombresContainer extends StatelessWidget {
  final String text;
  const NombresContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: Container(
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
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(text, style: textTheme.headlineSmall),
      ),
    );
  }
}
