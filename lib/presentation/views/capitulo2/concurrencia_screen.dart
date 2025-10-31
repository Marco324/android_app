import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ConcurrenciaScreen extends StatelessWidget {
  static final name = 'concurrencia';
  const ConcurrenciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Concurrencia', content: ConcurrenciaContent());
  }
}

class ConcurrenciaContent extends StatefulWidget {
  const ConcurrenciaContent({super.key});

  @override
  State<ConcurrenciaContent> createState() => _ConcurrenciaContentState();
}

class _ConcurrenciaContentState extends State<ConcurrenciaContent> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;
  final CarouselSliderController carouselSliderControllerEstados =
      CarouselSliderController();
  int activeIndexEstados = 0;
  final CarouselSliderController carouselSliderControllerVentajas =
      CarouselSliderController();
  int activeIndexVentajas = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClearContainer(
            content: Column(
              children: [
                Text(
                  'En Android, la concurrencia es la capacidad de ejecutar varias tareas al mismo tiempo para optimizar los recursos y el rendimiento. ',
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                Text(
                  'El sistema es multitarea y multiflujo, permitiendo ejecutar varios procesos y hilos de forma paralela.',
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),

          ImageContainer(
            image: Image(image: AssetImage('assets/concurrencia1.jpg')),
          ),

          SizedBox(height: 12),

          Container(
            color: const Color.fromARGB(255, 61, 220, 133),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 24),
                  ClearContainer(
                    content: Column(
                      children: [
                        Text(
                          'El objetivo principal de la concurrencia es lograr que las aplicaciones trabajen de manera más eficiente, evitando que una sola tarea bloquee el funcionamiento del sistema o afecte la experiencia del usuario.',
                          style: textTheme.bodyLarge,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Para lograrlo, los procesos se ejecutan de forma independiente, mientras que los hilos comparten datos y necesitan sincronización para acceder de manera segura a los recursos.',
                          style: textTheme.bodyLarge,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),

          SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Tipos de concurrencia en Android',
              style: textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 12),

          ClearContainer(
            content: Text(
              'La plataforma Android y el lenguaje Java ofrecen diferentes herramientas para implementar la ejecución simultánea de tareas. Entre las más comunes se encuentran: ',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderController,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 440,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndex = index;
                    }),
                  ),
                  items: [
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 440,
                        backgroundColor: Color.fromARGB(233, 107, 222, 245),
                        title: 'Hilos (Threads)',
                        content: [
                          Text.rich(
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                            TextSpan(
                              text: '',
                              children: [
                                TextSpan(
                                  text: 'Un hilo ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'es una unidad de ejecución que permite realizar tareas en paralelo dentro de una aplicación. ',
                                ),
                                TextSpan(
                                  text: 'El hilo principal ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'o '),
                                TextSpan(
                                  text: 'UI Thread ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'controla la interfaz y responde a las acciones del usuario. ',
                                ),
                                TextSpan(
                                  text: 'Si se ejecutan tareas pesadas en él, ',
                                ),
                                TextSpan(
                                  text:
                                      'la app puede volverse lenta o no responder. ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'Por eso, las '),
                                TextSpan(
                                  text: 'operaciones complejas ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'deben hacerse en '),
                                TextSpan(
                                  text: 'hilos secundarios ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'para mantener una interfaz fluida.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //2.
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 440,
                        backgroundColor: Color.fromARGB(233, 107, 222, 245),
                        title: 'Tareas asíncronas (AsyncTask)',
                        content: [
                          Text.rich(
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                            TextSpan(
                              text: '',
                              children: [
                                TextSpan(text: 'La clase '),
                                TextSpan(
                                  text: 'AsyncTask ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'permite ejecutar tareas en segundo plano sin bloquear el ',
                                ),
                                TextSpan(
                                  text: 'hilo principal. ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'Facilita el trabajo del desarrollador al gestionar automáticamente las fases del proceso: ',
                                ),
                                TextSpan(
                                  text: 'preparación, ejecución, progreso ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'y '),
                                TextSpan(
                                  text: 'finalización. ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'Es ideal para tareas que requieren tiempo, como ',
                                ),
                                TextSpan(
                                  text: 'descargas ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'o '),
                                TextSpan(
                                  text: 'consultas a bases de datos.',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //3.
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 440,
                        backgroundColor: Color.fromARGB(233, 107, 222, 245),
                        title: 'Servicios (Services)',
                        content: [
                          Text.rich(
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                            TextSpan(
                              text: '',
                              children: [
                                TextSpan(text: 'Los '),
                                TextSpan(
                                  text: 'servicios ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'son componentes que operan en segundo plano sin mostrar una ',
                                ),
                                TextSpan(
                                  text: 'interfaz visual. ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'Se usan para tareas que deben continuar ejecutándose incluso cuando la aplicación está cerrada, como ',
                                ),
                                TextSpan(
                                  text: 'reproducir música ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'o '),
                                TextSpan(
                                  text: 'sincronizar datos. ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'Si una tarea es extensa, el servicio puede crear su propio ',
                                ),
                                TextSpan(
                                  text: 'hilo ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'para trabajar en paralelo y evitar el bloqueo del sistema.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //4.
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 440,
                        backgroundColor: Color.fromARGB(233, 107, 222, 245),
                        title: 'Receptores de eventos (Broadcast Receivers)',
                        content: [
                          Text.rich(
                            TextSpan(
                              style: textTheme.bodyLarge,
                              children: [
                                TextSpan(
                                  text:
                                      'Estos componentes responden a notificaciones o mensajes enviados por el sistema o por otras aplicaciones, como ',
                                ),
                                TextSpan(
                                  text: 'alertas de batería baja ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: 'o la llegada de un '),
                                TextSpan(
                                  text: 'mensaje. ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'Su ejecución es breve y debe evitar demoras; si la tarea requiere más tiempo, se recomienda delegarla a un ',
                                ),
                                TextSpan(
                                  text: 'servicio.',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: 4,
                  effect: SwapEffect(
                    type: SwapType.yRotation,
                
                    activeDotColor: Color.fromARGB(244, 61, 220, 133),
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),

          SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Fases de concurrencia en Android',
              style: textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 12),

          ClearContainer(
            content: Text(
              'La concurrencia en Android se desarrolla en varias fases, que representan los estados por los que pasa un proceso durante su ejecución: ',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderControllerEstados,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 264,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndexEstados = index;
                    }),
                  ),
                  items: [
                    // 1. Creación (New)
                    CarouselItem(
                      height: 264,
                      backgroundColor: const Color.fromARGB(233, 253, 147, 166),
                      title: '1. Creación (New)',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(text: 'Es el proceso o hilo '),
                              TextSpan(
                                text: 'creado por el sistema operativo ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ', pero aún no se ejecuta. No puede ser interrumpido y ocurre, por ejemplo, al abrir una ',
                              ),
                              TextSpan(
                                text: 'Activity ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'o iniciar un hilo.'),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),

                    // 2. Listo (Ready)
                    CarouselItem(
                      height: 264,
                      backgroundColor: const Color.fromARGB(233, 253, 147, 166),
                      title: '2. Listo (Ready)',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text:
                                    'El proceso está preparado para ejecutarse, pero espera que el sistema le asigne la ',
                              ),
                              TextSpan(
                                text: 'CPU. ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'En este estado entra en una '),
                              TextSpan(
                                text: 'cola de procesos listos ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'para ser atendidos.'),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),

                    // 3. Ejecución (Running)
                    CarouselItem(
                      height: 264,
                      backgroundColor: const Color.fromARGB(233, 253, 147, 166),
                      title: '3. Ejecución (Running)',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text:
                                    'El proceso está siendo ejecutado por el ',
                              ),
                              TextSpan(
                                text: 'procesador. ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'En este estado realiza sus instrucciones, como ',
                              ),
                              TextSpan(
                                text: 'descargar datos ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'o '),
                              TextSpan(
                                text: 'actualizar la interfaz.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),

                    // 4. Bloqueado o en espera
                    CarouselItem(
                      height: 264,
                      backgroundColor: const Color.fromARGB(233, 253, 147, 166),
                      title: '4. Bloqueado o en espera',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text:
                                    'El proceso se detiene temporalmente porque espera que ocurra algo, como la ',
                              ),
                              TextSpan(
                                text: 'respuesta de una red ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'o la '),
                              TextSpan(
                                text: 'lectura de un archivo.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),

                    // 5. Terminado
                    CarouselItem(
                      height: 264,
                      backgroundColor: const Color.fromARGB(233, 253, 147, 166),
                      title: '5. Terminado',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(text: 'El proceso '),
                              TextSpan(
                                text: 'finaliza su ejecución ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'y '),
                              TextSpan(
                                text: 'libera los recursos ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'que utilizaba, permitiendo que el sistema los asigne a otros procesos.',
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
                  activeIndex: activeIndexEstados,
                  count: 5,
                  effect: const SwapEffect(
                    type: SwapType.yRotation,
                    activeDotColor: Color.fromARGB(244, 61, 220, 133),
                  ),
                ),

                const SizedBox(height: 12),
              ],
            ),
          ),

          SizedBox(height: 12),

          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Modelo de programación concurrente',
              style: textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 12),

          ClearContainer(
            content: Column(
              children: [
                Text(
                  'Para coordinar la ejecución simultánea de los hilos y evitar conflictos al acceder a recursos compartidos, Android utiliza el patrón de diseño “Monitor Object” (u Objeto Monitor).',
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 8),
                Text(
                  'Este modelo garantiza que solo un hilo a la vez pueda ejecutar ciertas partes del código dentro de un mismo objeto, evitando interferencias o errores.',
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),

          SizedBox(height: 12),

          Container(
            color: Color.fromARGB(233, 255, 215, 136),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  SizedBox(height: 24),
                  ClearContainer(
                    content: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                text:
                                    'En Java y Android, los mecanismos principales para aplicar este patrón son:\n',
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '• synchronized: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'restringe el acceso simultáneo de varios hilos a un mismo bloque de código.\n',
                                  ),
                                  TextSpan(
                                    text: '• wait(): ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'permite que un hilo se detenga temporalmente hasta que se cumpla una condición.\n',
                                  ),
                                  TextSpan(
                                    text: '• notify() / notifyAll(): ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'reanudan la ejecución de uno o varios hilos que estaban esperando.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),

          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Ventajas de la concurrencia en Android',
              style: textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderControllerVentajas,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 300,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndexVentajas = index;
                    }),
                  ),
                  items: [
                    CarouselItem(
                      height: 300,
                      backgroundColor: Color.fromARGB(233, 179, 136, 255),
                      title: 'Evita bloqueos del sistema (ANR)',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text:
                                    'Al mantener las tareas pesadas fuera del ',
                              ),
                              TextSpan(
                                text: 'hilo principal, ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'se evita que la aplicación deje de responder, previniendo errores del tipo ',
                              ),
                              TextSpan(
                                text: 'Application Not Responding (ANR).',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                    CarouselItem(
                      height: 300,
                      backgroundColor: Color.fromARGB(233, 179, 136, 255),
                      title: 'Mejora la experiencia del usuario',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(text: 'La '),
                              TextSpan(
                                text: 'interfaz ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'se mantiene fluida y activa, incluso mientras se ejecutan procesos complejos en segundo plano.',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                    CarouselItem(
                      height: 300,
                      backgroundColor: Color.fromARGB(233, 179, 136, 255),
                      title: 'Optimiza el uso de recursos',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(text: 'Los '),
                              TextSpan(
                                text: 'hilos ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'consumen menos recursos que los procesos independientes, favoreciendo una gestión más eficiente del ',
                              ),
                              TextSpan(
                                text: 'CPU ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'y la memoria.'),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                    CarouselItem(
                      height: 300,
                      backgroundColor: Color.fromARGB(233, 179, 136, 255),
                      title: 'Favorece la modularidad y reutilización',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text: 'Gracias al uso de componentes como los ',
                              ),
                              TextSpan(
                                text: 'intents, ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    'las aplicaciones pueden comunicarse y compartir recursos de forma ordenada y flexible, fomentando un diseño más limpio y escalable.',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AnimatedSmoothIndicator(
                  activeIndex: activeIndexVentajas,
                  count: 4,
                  effect: SwapEffect(
                    type: SwapType.yRotation,
                    activeDotColor: Color.fromARGB(244, 61, 220, 133),
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
