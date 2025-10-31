import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GestionMemoriaScreen extends StatelessWidget {
  static final name = 'gestionMemoria';
  const GestionMemoriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Gestión De Memoria',
      content: GestionMemoriaContent(),
    );
  }
}

class GestionMemoriaContent extends StatefulWidget {
  const GestionMemoriaContent({super.key});

  @override
  State<GestionMemoriaContent> createState() => _GestionMemoriaContentState();
}

class _GestionMemoriaContentState extends State<GestionMemoriaContent> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClearContainer(
            content: Text.rich(
              TextSpan(
                style: textTheme.bodyLarge,
                children: [
                  TextSpan(text: 'Para administrar los '),
                  TextSpan(
                    text: 'espacios ocupados y disponibles en la memoria',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ', el sistema operativo '),
                  TextSpan(
                    text: 'Android',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ' realiza diversas tareas esenciales que se apoyan en su base: el ',
                  ),
                  TextSpan(
                    text: 'núcleo de Linux',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),
      
          SizedBox(height: 24),
      
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderController,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 700,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  ),
                  items: [
                    // 1. Fundamento en el Núcleo de Linux y Asignación de Recursos
                    CarouselItem(
                      height: 700,
                      backgroundColor: Colors.greenAccent,
                      title: '1. Núcleo de Linux y Asignación de Recursos',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(text: 'Android utiliza el '),
                              TextSpan(
                                text: 'núcleo de Linux',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ' como base, encargado de manejar los procesos y la memoria del sistema.\n\n• ',
                              ),
                              TextSpan(
                                text:
                                    'Gestión de memoria compartida mediante ashmem',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    '.\n• Cada aplicación se ejecuta en su propio ',
                              ),
                              TextSpan(
                                text: 'proceso de Linux aislado',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    '.\n• Cada proceso contiene una instancia de ',
                              ),
                              TextSpan(
                                text: 'Dalvik o ART',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ', que delega la administración de memoria y procesos al sistema.',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
      
                    // 2. Mecanismos de Administración y Liberación de Memoria
                    CarouselItem(
                      height: 700,
                      backgroundColor: Colors.greenAccent,
                      title: '2. Administración y Liberación de Memoria',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text:
                                    'Dado que los dispositivos móviles tienen recursos limitados, Android libera memoria de forma eficiente:\n\n• ',
                              ),
                              TextSpan(
                                text: 'Eliminación de procesos',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': cierra procesos completos cuando la memoria es insuficiente.\n• ',
                              ),
                              TextSpan(
                                text: 'Ciclo de vida de las actividades',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': las apps en segundo plano pueden suspenderse y liberar memoria.\n• ',
                              ),
                              TextSpan(
                                text: 'Prioridad en la eliminación',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ':\n  1. Procesos vacíos.\n  2. Segundo plano.\n  3. Visibles.\n  4. Primer plano (último recurso).\n• ',
                              ),
                              TextSpan(
                                text: 'Decisión de cierre',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': basada en carga del procesador y disponibilidad de memoria.\n• ',
                              ),
                              TextSpan(
                                text: 'Notificación previa',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': métodos como onPause(), onStop() y onSaveInstanceState() permiten guardar información antes del cierre.',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
      
                    // 3. Herramientas de Monitoreo
                    CarouselItem(
                      height: 700,
                      backgroundColor: Colors.greenAccent,
                      title: '3. Herramientas de Monitoreo',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text:
                                    'Android ofrece herramientas integradas para optimizar el uso de memoria:\n\n• ',
                              ),
                              TextSpan(
                                text: 'DDMS (Dalvik Debug Monitor Server)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': visualiza la memoria en tiempo real.\n• ',
                              ),
                              TextSpan(
                                text: 'Vista Heap',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': muestra tamaño total, memoria usada, libre, número de objetos y proporción de uso.\n• ',
                              ),
                              TextSpan(
                                text: 'Garbage Collector (GC)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': se puede ejecutar manualmente con Cause GC.\n• ',
                              ),
                              TextSpan(
                                text: 'Archivo HPROF',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': genera imagen de la memoria para analizar fugas o errores.\n• ',
                              ),
                              TextSpan(
                                text: 'Allocation Tracker',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': registra los elementos creados en memoria durante la sesión.',
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
                  activeIndex: activeIndex,
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
    );
  }
}
