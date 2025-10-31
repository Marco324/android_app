import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MultiprocesamientoScreen extends StatelessWidget {
  static final name = 'multiprocesamiento';
  const MultiprocesamientoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Multiprocesamiento',
      content: MultiprocesamientoContent(),
    );
  }
}

class MultiprocesamientoContent extends StatefulWidget {
  const MultiprocesamientoContent({super.key});

  @override
  State<MultiprocesamientoContent> createState() =>
      _MultiprocesamientoContentState();
}

class _MultiprocesamientoContentState extends State<MultiprocesamientoContent> {
  final CarouselSliderController carouselSliderControllerCapas =
      CarouselSliderController();
  int activeIndexCapas = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          ColorAllContainer(
            color: Color.fromARGB(210, 231, 245, 122),
            title:
                'Introducción al Multiprocesamiento Simétrico (SMP) en Android',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'El modelo '),
                      TextSpan(
                        text: 'SMP ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'del '),
                      TextSpan(
                        text: 'kernel de Linux, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'que subyace en Android, permite que el sistema operativo aproveche varios ',
                      ),
                      TextSpan(
                        text: 'núcleos de procesador idénticos ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'que comparten la misma '),
                      TextSpan(
                        text: 'memoria principal. ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Un '),
                      TextSpan(
                        text: 'planificador (scheduler) ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'central asigna '),
                      TextSpan(
                        text: 'hilos del kernel ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'y '),
                      TextSpan(
                        text: 'procesos de usuario ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'a cualquier núcleo disponible.'),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'En un sistema '),
                      TextSpan(
                        text: 'SMP, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'todos los procesadores realizan las mismas funciones y comparten la carga de trabajo. ',
                      ),
                      TextSpan(
                        text: 'En Android, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'el '),
                      TextSpan(
                        text: 'planificador CFS (Completely Fair Scheduler) ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'junto con '),
                      TextSpan(
                        text: 'EAS (Energy Aware Scheduling), ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'distribuye las tareas y servicios del sistema entre los núcleos, optimizando el ',
                      ),
                      TextSpan(
                        text: 'rendimiento ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'y la '),
                      TextSpan(
                        text: 'eficiencia energética. ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Esto resulta esencial en arquitecturas como ',
                      ),
                      TextSpan(
                        text: 'big.LITTLE ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'o '),
                      TextSpan(
                        text: 'DynamIQ, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'donde los núcleos tienen diferentes niveles de potencia y rendimiento.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),

          ColorAllContainer(
            color: Color.fromARGB(233, 179, 136, 255),
            title: 'Arquitectura Basada en Micronúcleos (Modificada)',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Aunque '),
                      TextSpan(
                        text: 'Linux ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'es un '),
                      TextSpan(
                        text: 'kernel monolítico, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Android adopta principios de diseño de '),
                      TextSpan(
                        text: 'micronúcleos ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'para algunos servicios clave. Un micronúcleo busca minimizar el código que se ejecuta en el ',
                      ),
                      TextSpan(
                        text: 'espacio del kernel ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'y delegar la funcionalidad a servicios en el ',
                      ),
                      TextSpan(
                        text: 'espacio de usuario, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'los cuales se comunican mediante mecanismos de ',
                      ),
                      TextSpan(
                        text: 'IPC (Comunicación entre Procesos) ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'robustos y seguros.'),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Un '),
                      TextSpan(
                        text: 'micronúcleo ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'es aquel que '),
                      TextSpan(
                        text: 'implementa solo unas pocas funciones básicas ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'y coloca el resto de la funcionalidad del sistema operativo en ',
                      ),
                      TextSpan(
                        text: 'procesos de servidor ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'que se ejecutan en '),
                      TextSpan(
                        text: 'modo usuario.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(
                        text: 'Android ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'implementa este principio mediante el '),
                      TextSpan(
                        text: 'driver Binder, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'un mecanismo de '),
                      TextSpan(
                        text: 'IPC de alto rendimiento ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'que permite la comunicación entre procesos, por ejemplo, entre una aplicación y el servidor de actividad ',
                      ),
                      TextSpan(
                        text: 'system_server. ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Servicios críticos como la '),
                      TextSpan(
                        text: 'Gestión de Actividades, Gestión de Ventanas ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'y los '),
                      TextSpan(
                        text: 'Proveedores de Contenido ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'se ejecutan como procesos de usuario separados, aislados entre sí y del ',
                      ),
                      TextSpan(
                        text: 'kernel, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'lo que mejora la '),
                      TextSpan(
                        text: 'estabilidad ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'y la '),
                      TextSpan(
                        text: 'seguridad del sistema.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),

          ColorAllContainer(
            color: Colors.blueAccent,
            title: 'Gestión de Hilos y Concurrencia en Android',
            content: [
              ClearContainer(
                content: Text(
                  'Android proporciona un modelo de concurrencia en capas, que va desde los hilos del kernel de Linux hasta los mecanismos de alto nivel del Framework de Android.',
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.justify,
                ),
              ),
              ClearContainer(
                content: Text(
                  'Capas de Concurrencia:',
                  style: textTheme.titleMedium,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: carouselSliderControllerCapas,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 360,
                        onPageChanged: (index, reason) => setState(() {
                          activeIndexCapas = index;
                        }),
                      ),
                      items: [
                        // 1. Hilos del Kernel
                        CarouselItem(
                          height: 360,
                          backgroundColor: Colors.transparent,
                          title: '1. Hilos del Kernel (Kernel Threads)',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Gestionados por el '),
                                  TextSpan(
                                    text: 'planificador de Linux, ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'son la base de toda la ejecución del sistema.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 2. Procesos y Hilos Nativos
                        CarouselItem(
                          height: 360,
                          backgroundColor: Colors.transparent,
                          title: '2. Procesos y Hilos Nativos (Pthreads)',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'A través de la '),
                                  TextSpan(
                                    text: 'NDK (Native Development Kit), ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'los desarrolladores pueden usar la ',
                                  ),
                                  TextSpan(
                                    text: 'API POSIX Threads ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'para crear y gestionar hilos a nivel nativo.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 3. Framework de Android
                        CarouselItem(
                          height: 360,
                          backgroundColor: Colors.transparent,
                          title: '3. Framework de Android',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: '• Clase '),
                                  TextSpan(
                                    text: '`Thread` ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'de Java: La abstracción más básica.\n\n',
                                  ),
                                  TextSpan(
                                    text: '• `AsyncTask` (ahora deprecado): ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Para operaciones cortas en segundo plano.\n\n',
                                  ),
                                  TextSpan(
                                    text: '• `HandlerThread` y `Looper`: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Mecanismos para manejar una cola de mensajes asociada a un hilo.\n\n',
                                  ),
                                  TextSpan(
                                    text: '• `ExecutorService`: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Para gestionar pools de hilos.\n\n',
                                  ),
                                  TextSpan(
                                    text: '• Kotlin Coroutines: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'La solución moderna y preferida para la concurrencia asíncrona, más ligera que los hilos tradicionales.',
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
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndexCapas,
                        count: 3,
                        effect: const SwapEffect(
                          type: SwapType.yRotation,
                          activeDotColor: Color.fromARGB(244, 61, 220, 133),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),

              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'La '),
                      TextSpan(
                        text: 'programación con hilos ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'se centra principalmente en la gestión del acceso al ',
                      ),
                      TextSpan(
                        text: 'estado compartido y mutable. ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'Este principio es fundamental en '),
                      TextSpan(
                        text: 'Android, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'donde la '),
                      TextSpan(
                        text: 'interfaz de usuario (UI) ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'solo puede actualizarse desde el '),
                      TextSpan(
                        text: 'hilo principal ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '(Main Thread o UI Thread), ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'por lo que es esencial un uso correcto de la ',
                      ),
                      TextSpan(
                        text: 'concurrencia ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'para evitar el '),
                      TextSpan(
                        text: 'bloqueo de la interfaz de usuario.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),

          ColorAllContainer(
            color: Color.fromARGB(255, 61, 220, 133),
            title: 'La Interacción entre SMP, el Kernel y la Gestión de Hilos',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'El verdadero poder de los '),
                      TextSpan(
                        text: 'dispositivos Android modernos multicore ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'surge de la interacción entre estos conceptos. El ',
                      ),
                      TextSpan(
                        text: 'planificador del kernel (SMP) ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'asigna dinámicamente los '),
                      TextSpan(
                        text: 'hilos de las aplicaciones ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '(gestionados por el '),
                      TextSpan(
                        text: 'Framework de Android ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'y el '),
                      TextSpan(
                        text: 'Runtime) ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'a los diferentes núcleos de la CPU. La arquitectura tipo ',
                      ),
                      TextSpan(
                        text: 'micronúcleo, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'con servicios aislados que se comunican mediante ',
                      ),
                      TextSpan(
                        text: 'Binder, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'crea un entorno donde el '),
                      TextSpan(
                        text: 'planificador SMP ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'puede distribuir la carga de trabajo de manera eficiente entre los núcleos, mejorando el ',
                      ),
                      TextSpan(
                        text: 'paralelismo real.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
