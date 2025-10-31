import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HilosScreen extends StatelessWidget {
  static final name = 'hilos';
  const HilosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Hilos', content: HilosContent());
  }
}

class HilosContent extends StatelessWidget {
  const HilosContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.greenAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                ClearContainer(
                  content: Text.rich(
                    TextSpan(
                      style: textTheme.bodyLarge,
                      children: [
                        TextSpan(
                          text:
                              'En Java/Android, un hilo puede encontrarse en varios estados: ',
                        ),
                        TextSpan(
                          text: 'NEW',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' (nuevo), '),
                        TextSpan(
                          text: 'RUNNABLE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ', '),
                        TextSpan(
                          text: 'BLOCKED',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' (esperando monitor/lock), '),
                        TextSpan(
                          text: 'WAITING',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ', '),
                        TextSpan(
                          text: 'TIMED_WAITING',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' y '),
                        TextSpan(
                          text: 'TERMINATED',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              '. Por ejemplo, al crear un hilo se encuentra en estado NEW. Al llamar a ',
                        ),
                        TextSpan(
                          text: 'start()',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ', pasa a RUNNABLE y puede ejecutarse o esperar su turno. Si se llama a ',
                        ),
                        TextSpan(
                          text: 'sleep()',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ', pasa a TIMED_WAITING. Si espera un bloqueo de objeto, entra en BLOCKED. Al finalizar su tarea, llega a TERMINATED.',
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
                          text:
                              'En Android, también puedes monitorear los hilos mediante el ',
                        ),
                        TextSpan(
                          text: 'perfil de CPU',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ', identificar '),
                        TextSpan(
                          text: 'bloqueos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' y analizar '),
                        TextSpan(
                          text: '“dumps” de hilos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ' para entender cuándo están esperando y cómo interactúan con otros hilos.',
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),

          ColorAllContainer(
            color: Color(0x99CFAEDC),
            title: 'Gestión de hilos',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'El manejo correcto de '),
                      TextSpan(
                        text: 'hilos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' es vital para mantener la '),
                      TextSpan(
                        text: 'fluidez de la interfaz',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' y un '),
                      TextSpan(
                        text: 'bajo consumo energético',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '.'),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              ClearContainer(
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Buenas practicas:', style: textTheme.titleLarge),
                    Text.rich(
                      TextSpan(
                        style: textTheme.bodyLarge,
                        children: [
                          TextSpan(
                            text: '1. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'Nunca ejecutar tareas pesadas en el ',
                          ),
                          TextSpan(
                            text: 'hilo principal',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '.\n'),

                          TextSpan(
                            text: '2. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: 'Utilizar '),
                          TextSpan(
                            text: 'ExecutorService',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' o '),
                          TextSpan(
                            text: 'ThreadPoolExecutor',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' para manejar múltiples hilos.\n'),

                          TextSpan(
                            text: '3. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: 'Usar '),
                          TextSpan(
                            text: 'synchronization',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' o '),
                          TextSpan(
                            text: 'locks',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' con cuidado para evitar '),
                          TextSpan(
                            text: 'deadlocks',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' (dos hilos esperando recursos entre sí).\n',
                          ),

                          TextSpan(
                            text: '4. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'Cancelar o detener hilos cuando ya no se necesiten.\n',
                          ),

                          TextSpan(
                            text: '5. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: 'Usar herramientas modernas como:\n'),
                          TextSpan(text: '   • '),
                          TextSpan(
                            text: 'Coroutines (Kotlin)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' para asincronía estructurada.\n'),
                          TextSpan(text: '   • '),
                          TextSpan(
                            text: 'WorkManager',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' para tareas diferidas o periódicas.\n',
                          ),
                          TextSpan(text: '   • '),
                          TextSpan(
                            text: 'Handler y Looper',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' para comunicación entre hilos.'),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 8),
                    ImageContainer(image: Image(image: AssetImage('assets/hilos.png')))
                  ],
                ),
              ),
            ],
          ),
          ColorAllContainer(
            color: Color.fromARGB(210, 231, 245, 122),
            title: 'Importancia del control y gestión ',
            content: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: CarouselSliderController(),
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 380,
                      ),
                      items: [
                        // Slide 1: Impacto
                        CarouselItem(
                          height: 380,
                          backgroundColor: Colors.transparent,
                          title: 'Impacto del correcto manejo de hilos',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'El correcto manejo de '),
                                  TextSpan(
                                    text: 'procesos e hilos',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' impacta directamente en:\n\n',
                                  ),
                                  TextSpan(text: '• '),
                                  TextSpan(
                                    text: 'Rendimiento de la aplicación',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n• '),
                                  TextSpan(
                                    text: 'Consumo de batería y memoria',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n• '),
                                  TextSpan(
                                    text: 'Experiencia del usuario',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.'),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // Slide 2: Errores comunes
                        CarouselItem(
                          height: 380,
                          backgroundColor: Colors.transparent,
                          title: 'Errores comunes por mala gestión',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: 'Errores frecuentes incluyen:\n\n',
                                  ),
                                  TextSpan(text: '• '),
                                  TextSpan(
                                    text: 'Bloqueos (ANR)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ': la app no responde por ejecutar tareas largas en el hilo UI.\n• ',
                                  ),
                                  TextSpan(
                                    text: 'Fugas de memoria (Memory Leaks)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ': hilos o procesos que no se cierran correctamente.\n• ',
                                  ),
                                  TextSpan(
                                    text: 'Consumo excesivo de CPU o batería',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ': procesos en bucle infinito o servicios innecesarios activos.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // Slide 3: Buenas prácticas
                        CarouselItem(
                          height: 380,
                          backgroundColor: Colors.transparent,
                          title: 'Buenas prácticas',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Una app bien diseñada:\n\n'),
                                  TextSpan(text: '• '),
                                  TextSpan(
                                    text:
                                        'Se adapta al ciclo de vida del sistema',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n• '),
                                  TextSpan(
                                    text: 'Usa eficientemente los recursos',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n• '),
                                  TextSpan(
                                    text:
                                        'Mantiene la interfaz fluida y receptiva',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n• '),
                                  TextSpan(
                                    text:
                                        'Evita crear más hilos o procesos de los necesarios',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.'),
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
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
            ],
          ),
        ],
      ),
    );
  }
}
