import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AndroidScreen extends StatelessWidget {
  static const String name = 'android';
  const AndroidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Android SO', content: _AndroidContent());
  }
}

class _AndroidContent extends StatelessWidget {
  const _AndroidContent();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
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
              child: Text(
                'El sistema operativo es un elemento esencial en una computadora. Este conecta y coordina las acciones del usuario con los elementos del hardware, en otras palabras, hace posible una comunicación amigable entre el usuario y el hardware. ',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
            ),
          ),

          SizedBox(height: 24),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 61, 220, 133),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(
                        alpha: 0.1,
                      ), // sombra suave
                      blurRadius: 6, // qué tanto se difumina
                      offset: const Offset(0, 3), // desplazamiento vertical
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Android es un sistema operativo móvil basado en una versión modificada del kernel de Linux y software de código abierto, diseñado principalmente para teléfonos móviles y tabletas, pero su versatilidad ha llevado su uso a una amplia gama de dispositivos como televisiones inteligentes (Android TV), sistemas de infoentretenimiento en coches (Android Auto) y relojes inteligentes (Wear OS).',
                        style: textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                    SizedBox(height: 12),

                    ImageContainer(
                      image: Image.network(
                        'https://imagenes.20minutos.es/files/image_990_556/uploads/imagenes/2023/09/07/nuevo-logotipo-de-android.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 28),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
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
              child: Text(
                'La base de Android se construyó a principios de los 2000, enfocada en dispositivos móviles con poca capacidad (memoria y procesador). Aunque los móviles actuales son mucho más potentes y ya no tienen esas limitaciones, la arquitectura de Android basada en la escasez sigue siendo ideal para nuevos dispositivos inteligentes (como electrodomésticos, sistemas de coches, etc.) que sí presentan restricciones de recursos similares a los teléfonos antiguos.',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
            ),
          ),

          SizedBox(height: 24),

          ImageContainer(
            image: Image.network(
              'https://lh5.googleusercontent.com/b1MKHzyNxgoq87m-vzfLOP-D3LHEN0b5MljheVwWtkOun5UVdSuk0sjo5UrlqPdj03QT2G4ryIjWixK6ya59mt-UhzxtyfYgsFIbO1MN5ZLIClVivEJEY3kY2Pr3GAiSP2yS5CBKRFYLS2i2BCr5EqlfwkmoEppI0GGy4Lfr_mEcaZEeRnD5QDtLl-r8Hw',
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(height: 28),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 61, 220, 133),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(
                        alpha: 0.1,
                      ), // sombra suave
                      blurRadius: 6, // qué tanto se difumina
                      offset: const Offset(0, 3), // desplazamiento vertical
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Debido a que Android es de código abierto, cualquier desarrollador puede crear nuevas aplicaciones, widgets o incluso modificar el propio sistema operativo. Históricamente, el lenguaje principal fue Java, pero en la actualidad Kotlin es el lenguaje oficial y preferido por Google para crear aplicaciones modernas y seguras.',
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 24),

          // SizedBox(height: 40),
        ],
      ),
    );
  }
}


