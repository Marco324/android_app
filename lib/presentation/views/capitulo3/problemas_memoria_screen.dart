import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProblemasMemoriaScreen extends StatelessWidget {
  static final name = 'problemasMemoria';
  const ProblemasMemoriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Problemas Admin. De Memoria',
      content: ProblemasMemoriaContent(),
    );
  }
}

class ProblemasMemoriaContent extends StatelessWidget {
  const ProblemasMemoriaContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              '¿Qué problemas son los mas frecuentes en la administración de memoria en Android?',
              style: textTheme.titleLarge,
            ),
          ),
          ClearContainer(
            content: Text.rich(
              TextSpan(
                style: textTheme.bodyLarge,
                children: [
                  TextSpan(
                    text: 'El problema más frecuente y crítico en Android es la ',
                  ),
                  TextSpan(
                    text: 'Fuga de Memoria (Memory Leak)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ', que ocurre cuando una app retiene referencias a objetos que ya no necesita, impidiendo que el sistema libere esa memoria.\n\nEsto se relaciona con la ',
                  ),
                  TextSpan(
                    text: 'arquitectura de gestión de memoria',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' de Android: el sistema usa '),
                  TextSpan(
                    text: 'paginación y mapeo de memoria (mmap)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        '. Cuando la app modifica una página de memoria, esta queda bloqueada en RAM y no puede paginarse. La única manera de liberarla es que la app ',
                  ),
                  TextSpan(
                    text: 'libere explícitamente las referencias',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ', permitiendo que el '),
                  TextSpan(
                    text: 'Garbage Collector (GC)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' recupere la memoria.'),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          ImageContainer(image: Image(image: AssetImage('assets/memoryleaks.png'))),
      
          SizedBox(height: 24),
      
          Container(
            color: Colors.blueAccent,
            child: Column(
              children: [
                SizedBox(height: 24),
                ClearContainer(
                  content: Text(
                    'Además de las fugas de memoria, otros problemas frecuentes incluyen:',
                    style: textTheme.bodyLarge,
                  ),
                ),                
                ClearContainer(
                  content: Text.rich(
                    TextSpan(
                      style: textTheme.bodyLarge,
                      children: [
                        TextSpan(
                          text: 'Uso excesivo de memoria para imágenes',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ': algunas apps cargan imágenes grandes en RAM aunque solo se muestren versiones pequeñas, desperdiciando memoria y provocando lentitud o cierres inesperados.\n\n',
                        ),
                        TextSpan(
                          text: 'Uso de estructuras de datos ineficientes',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ': elegir listas o mapas generales en lugar de estructuras optimizadas puede consumir más memoria y forzar al ',
                        ),
                        TextSpan(
                          text: 'Garbage Collector (GC)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ' a trabajar más. Se recomienda usar estructuras diseñadas específicamente para Android, más ligeras y eficientes.',
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                ImageContainer(image: Image(image: AssetImage('assets/problemaMemoria.png'))),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
