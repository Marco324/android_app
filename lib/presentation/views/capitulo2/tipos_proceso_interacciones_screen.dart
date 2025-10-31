import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TiposProcesoInteraccionesScreen extends StatelessWidget {
  static final name = 'tipos';
  const TiposProcesoInteraccionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Procesos E Interacciones',
      content: TiposProcesoInteraccionesContent(),
    );
  }
}

class TiposProcesoInteraccionesContent extends StatefulWidget {
  const TiposProcesoInteraccionesContent({super.key});

  @override
  State<TiposProcesoInteraccionesContent> createState() =>
      _TiposProcesoInteraccionesContentState();
}

class _TiposProcesoInteraccionesContentState
    extends State<TiposProcesoInteraccionesContent> {
  final Map<int, bool> _expandedTiles = {};
  final CarouselSliderController carouselSliderControllerTiposProcesos =
      CarouselSliderController();
  int activeIndexTiposProcesos = 0;
  final CarouselSliderController carouselSliderControllerMecanismos =
      CarouselSliderController();
  int activeIndexMecanismos = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tipos de procesos concurrentes', style: textTheme.titleLarge),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  CarouselSlider(
                    carouselController: carouselSliderControllerTiposProcesos,
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      height: 380,
                      onPageChanged: (index, reason) => setState(() {
                        activeIndexTiposProcesos = index;
                      }),
                    ),
                    items: [
                      // 1. Procesos Independientes
                      CarouselItem(
                        height: 380,
                        backgroundColor: const Color.fromARGB(
                          233,
                          140,
                          230,
                          200,
                        ),
                        title: '1. Procesos Independientes',
                        content: [
                          Text.rich(
                            TextSpan(
                              style: textTheme.bodyLarge,
                              children: [
                                TextSpan(text: '• '),
                                TextSpan(
                                  text:
                                      'No tienen conocimiento de otros procesos.\n',
                                ),
                                TextSpan(
                                  text: '• No comparten datos ni recursos.\n',
                                ),
                                TextSpan(
                                  text:
                                      '• Su ejecución no afecta el resultado de otros procesos.\n',
                                ),
                                TextSpan(text: '• '),
                                TextSpan(
                                  text: 'Ejemplo: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'programas de usuarios diferentes en un sistema multiprogramado.',
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),

                      // 2. Procesos Cooperantes
                      CarouselItem(
                        height: 380,
                        backgroundColor: const Color.fromARGB(
                          233,
                          140,
                          230,
                          200,
                        ),
                        title: '2. Procesos Cooperantes',
                        content: [
                          Text.rich(
                            TextSpan(
                              style: textTheme.bodyLarge,
                              children: [
                                TextSpan(
                                  text: '• Comparten datos o recursos.\n',
                                ),
                                TextSpan(
                                  text:
                                      '• Su ejecución puede afectar a otros procesos.\n',
                                ),
                                TextSpan(text: '• Requieren mecanismos de '),
                                TextSpan(
                                  text: 'sincronización ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'o '),
                                TextSpan(
                                  text: 'comunicación. ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: '\n• '),
                                TextSpan(
                                  text: 'Ejemplo: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'procesos cliente-servidor o productor-consumidor.',
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Indicadores
                  AnimatedSmoothIndicator(
                    activeIndex: activeIndexTiposProcesos,
                    count: 2,
                    effect: const SwapEffect(
                      type: SwapType.yRotation,
                      activeDotColor: Color.fromARGB(244, 140, 230, 200),
                    ),
                  ),

                  const SizedBox(height: 12),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Text('Tipos de interacciones', style: textTheme.titleLarge),
            const SizedBox(height: 12),
            ClearContainer(
              content: Text(
                'De acuerdo con Stallings, las interacciones se clasifican según el grado de conocimiento o relación entre procesos.',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: interaccionesItems.length,
                itemBuilder: (BuildContext context, int index) {
                  final termino = interaccionesItems[index];
                  final isExpanded = _expandedTiles[index] ?? false;

                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        tilePadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 4,
                        ),
                        title: Text(
                          termino.interaccion,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        trailing: Icon(
                          isExpanded
                              ? Icons.minimize_rounded
                              : Icons.add_circle_outline_rounded,
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Características:',
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  termino.funcPrincipal,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                                Text(
                                  'Problemas comunes:',
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  termino.caractClave,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() {
                            _expandedTiles[index] = expanded;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 24),

            Text('Mecanismos de interacción', style: textTheme.titleLarge),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  CarouselSlider(
                    carouselController: carouselSliderControllerMecanismos,
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      height: 380,
                      onPageChanged: (index, reason) => setState(() {
                        activeIndexMecanismos = index;
                      }),
                    ),
                    items: [
                      // 1. Exclusión mutua
                      CarouselItem(
                        height: 380,
                        backgroundColor: const Color.fromARGB(
                          233,
                          180,
                          210,
                          250,
                        ),
                        title: '1. Exclusión mutua',
                        content: [
                          Text.rich(
                            TextSpan(
                              style: Theme.of(context).textTheme.bodyLarge,
                              children: [
                                TextSpan(text: '• '),
                                TextSpan(
                                  text:
                                      'Garantiza que solo un proceso acceda a un recurso compartido en un momento dado.\n',
                                ),
                                TextSpan(text: '• Métodos: '),
                                TextSpan(
                                  text:
                                      'semáforos, monitores, algoritmos de software (Dekker, Peterson), instrucciones de hardware.',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),

                      // 2. Sincronización
                      CarouselItem(
                        height: 380,
                        backgroundColor: const Color.fromARGB(
                          233,
                          180,
                          210,
                          250,
                        ),
                        title: '2. Sincronización',
                        content: [
                          Text.rich(
                            TextSpan(
                              style: Theme.of(context).textTheme.bodyLarge,
                              children: [
                                TextSpan(
                                  text:
                                      'Controla el orden de ejecución entre procesos que dependen unos de otros.\n',
                                ),
                                TextSpan(text: 'Ejemplo: '),
                                TextSpan(
                                  text:
                                      'un consumidor no puede extraer datos si el productor no los ha generado.',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),

                      // 3. Comunicación
                      CarouselItem(
                        height: 380,
                        backgroundColor: const Color.fromARGB(
                          233,
                          180,
                          210,
                          250,
                        ),
                        title: '3. Comunicación',
                        content: [
                          Text.rich(
                            TextSpan(
                              style: Theme.of(context).textTheme.bodyLarge,
                              children: [
                                TextSpan(
                                  text:
                                      'Se logra por memoria compartida o paso de mensajes.\n',
                                ),
                                TextSpan(text: 'Detalles: '),
                                TextSpan(
                                  text:
                                      'En el paso de mensajes se usan primitivas send y receive. Puede ser direccionamiento directo o indirecto (a través de buzones o mailboxes).',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  AnimatedSmoothIndicator(
                    activeIndex: activeIndexMecanismos,
                    count: 3,
                    effect: const SwapEffect(
                      type: SwapType.yRotation,
                      activeDotColor: Color.fromARGB(244, 140, 230, 200),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<InteraccionesItem> interaccionesItems = [
  InteraccionesItem(
    interaccion: 'Competencia',
    funcPrincipal:
        'Procesos independientes que compiten por recursos compartidos (CPU, memoria, E/S).',
    caractClave: 'Exclusión mutua, interbloqueo (deadlock), inanición.',
  ),
  InteraccionesItem(
    interaccion: 'Cooperación por compartición',
    funcPrincipal:
        'Procesos que comparten variables, archivos o datos comunes para realizar tareas relacionadas.',
    caractClave:
        'Necesitan control de secciones críticas para mantener la integridad de datos.',
  ),
  InteraccionesItem(
    interaccion: 'Cooperación por comunicación',
    funcPrincipal:
        'Procesos que intercambian información mediante mensajes o mecanismos IPC (inter-process communication).',
    caractClave: 'Problemas de sincronización y bloqueo mutuo.',
  ),
];

class InteraccionesItem {
  final String interaccion;
  final String funcPrincipal;
  final String caractClave;

  InteraccionesItem({
    required this.interaccion,
    required this.funcPrincipal,
    required this.caractClave,
  });
}
