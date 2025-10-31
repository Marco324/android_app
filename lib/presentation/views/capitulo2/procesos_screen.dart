import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProcesosScreen extends StatelessWidget {
  static final name = 'procesos';
  const ProcesosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Procesos', content: ProcesosContent());
  }
}

class ProcesosContent extends StatefulWidget {
  const ProcesosContent({super.key});

  @override
  State<ProcesosContent> createState() => _ProcesosContentState();
}

class _ProcesosContentState extends State<ProcesosContent> {
  final CarouselSliderController carouselSliderControllerProcesos =
      CarouselSliderController();
  int activeIndexProcesos = 0;
  final CarouselSliderController carouselSliderControllerCaracteristicas =
      CarouselSliderController();
  int activeIndexCaracteristicas = 0;
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
                Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Por definición, podemos afirmar que un '),
                      TextSpan(
                        text: 'proceso ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'es cualquier '),
                      TextSpan(
                        text: 'programa en ejecución. ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Todos los sistemas operativos trabajan en base a procesos, los cuales cambian de estados y poseen un ',
                      ),
                      TextSpan(
                        text: 'ciclo de vida. ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Sin embargo, la forma de gestionarlos puede variar. En el caso de ',
                      ),
                      TextSpan(
                        text: 'Android OS, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'este administra los procesos de manera particular, ya que es un ',
                      ),
                      TextSpan(
                        text:
                            'sistema operativo orientado a dispositivos móviles, ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'optimizando el uso de recursos y la respuesta del sistema.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),

          SizedBox(height: 24),

          Container(
            color: Colors.blueAccent,
            child: Column(
              children: [
                SizedBox(height: 24),
                ClearContainer(
                  content: Text.rich(
                    TextSpan(
                      style: textTheme.bodyLarge,
                      children: [
                        TextSpan(text: 'Una '),
                        TextSpan(
                          text: 'aplicación ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'es un programa informático diseñado para realizar ',
                        ),
                        TextSpan(
                          text: 'tareas específicas ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: 'para el usuario. En '),
                        TextSpan(
                          text: 'Android, ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: 'cada aplicación ejecuta su propio '),
                        TextSpan(
                          text: 'proceso, ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: 'y todos los '),
                        TextSpan(
                          text: 'componentes ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'de la aplicación se ejecutan dentro de este mismo proceso.',
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

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
            child: Column(
              children: [
                ContainerWithIcon(
                  color: Colors.greenAccent,
                  content: [
                    Text('Creación de procesos', style: textTheme.titleLarge),
                    Text.rich(
                      TextSpan(
                        style: textTheme.bodyLarge,
                        children: [
                          TextSpan(text: 'Los '),
                          TextSpan(
                            text: 'procesos ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'de las aplicaciones se crean cuando es necesario ejecutar una parte de su código, por ejemplo, al ',
                          ),
                          TextSpan(
                            text: 'iniciarla. ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'El proceso seguirá existiendo mientras el código continúe en ejecución, hasta que el sistema necesite ',
                          ),
                          TextSpan(
                            text: 'liberar memoria ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'para otras aplicaciones y ya no sea necesario mantenerlo activo.',
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),

                SizedBox(height: 18),

                ContainerWithIcon(
                  color: Colors.redAccent,
                  content: [
                    Text(
                      'Eliminación de procesos ',
                      style: textTheme.titleLarge,
                    ),
                    Text.rich(
                      TextSpan(
                        style: textTheme.bodyLarge,
                        children: [
                          TextSpan(text: 'Es necesario '),
                          TextSpan(
                            text: 'finalizar procesos ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: 'para liberar '),
                          TextSpan(
                            text: 'memoria, ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: 'ya que la '),
                          TextSpan(
                            text: 'RAM ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'es un recurso físico limitado. Tener demasiados procesos en ejecución, incluso los ',
                          ),
                          TextSpan(
                            text: 'innecesarios, ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: 'puede '),
                          TextSpan(
                            text: 'ralentizar significativamente ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                'el dispositivo. Por ello, los procesos se finalizan siguiendo una ',
                          ),
                          TextSpan(
                            text: 'jerarquía de importancia ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: 'definida por el sistema.'),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ],
            ),
          ),

          ColorAllContainer(
            color: Color.fromARGB(233, 179, 136, 255),
            title: 'Jerarquía de procesos',
            content: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    ImageContainer(
                      image: Image(image: AssetImage('assets/jerarquia.png')),
                    ),
                    CarouselSlider(
                      carouselController: carouselSliderControllerProcesos,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 580,
                        onPageChanged: (index, reason) => setState(() {
                          activeIndexProcesos = index;
                        }),
                      ),
                      items: [
                        // NIVEL 1 – Proceso en primer plano
                        CarouselItem(
                          height: 580,
                          backgroundColor: Colors.transparent,
                          title: 'NIVEL 1 - Proceso en primer plano',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Corresponden a lo que el usuario está haciendo actualmente. ',
                                  ),
                                  TextSpan(
                                    text:
                                        'Solo se eliminan como último recurso ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'si la memoria es tan baja que ni siquiera estos puedan seguir en ejecución.\n\nPara que un proceso sea considerado de este tipo debe cumplir una de estas condiciones:\n\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '• El usuario tiene la aplicación abierta y la está usando activamente.\n'
                                        '• La aplicación está reaccionando a una alerta o evento del sistema.\n'
                                        '• La aplicación está en una transición importante, como su creación, inicio o cierre.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // NIVEL 2 – Proceso visible
                        CarouselItem(
                          height: 580,
                          backgroundColor: Colors.transparent,
                          title: 'NIVEL 2 - Proceso visible',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Estos procesos son '),
                                  TextSpan(
                                    text: 'visibles para el usuario ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'y el usuario es consciente de su ejecución, aunque no necesariamente estén en primer plano.\n\nPor ejemplo: escuchar música en ',
                                  ),
                                  TextSpan(
                                    text: 'Spotify ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: 'mientras se navega en '),
                                  TextSpan(
                                    text: 'Facebook.\n\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Un proceso visible cumple una o más de estas condiciones:\n\n'
                                        '• La app está parcialmente cubierta por otra ventana, pero sigue visible.\n'
                                        '• Está ejecutando un trabajo activo con notificación visible o control del usuario.\n'
                                        '• Es un componente crucial del sistema, como un ',
                                  ),
                                  TextSpan(
                                    text: 'Live Wallpaper.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // NIVEL 3 – Proceso de servicio
                        CarouselItem(
                          height: 580,
                          backgroundColor: Colors.transparent,
                          title: 'NIVEL 3 - Proceso de servicio',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Estos procesos trabajan en segundo plano sin una interfaz visible, realizando acciones importantes como ',
                                  ),
                                  TextSpan(
                                    text: 'descargar datos ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'o mantener sincronizaciones.\n\n'
                                        'Con el tiempo, el sistema puede cerrarlos si necesitan liberar memoria (tras unos 30 minutos).\n\n'
                                        'Para evitarlo se recomienda:\n'
                                        '• Usar ',
                                  ),
                                  TextSpan(
                                    text: 'startForeground(), ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'para hacerlo visible al usuario.\n'
                                        '• O programar su trabajo con ',
                                  ),
                                  TextSpan(
                                    text: 'WorkManager.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // NIVEL 4 – Proceso almacenado en caché
                        CarouselItem(
                          height: 580,
                          backgroundColor: Colors.transparent,
                          title: 'NIVEL 4 - Proceso almacenado en caché',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Representan aplicaciones que no están en uso activo ni ejecutando tareas urgentes. ',
                                  ),
                                  TextSpan(
                                    text: 'Son los primeros en eliminarse ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'para liberar memoria.\n\n'
                                        'Estos procesos permanecen en ',
                                  ),
                                  TextSpan(
                                    text: 'memoria caché ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'para que al volver a abrir la aplicación, esta se cargue casi instantáneamente, mejorando la ',
                                  ),
                                  TextSpan(
                                    text: 'eficiencia y la velocidad ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: 'de alternancia entre apps.'),
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
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndexProcesos,
                        count: 4,
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

          ColorAllContainer(
            color: Color.fromARGB(233, 255, 210, 160),
            title: 'Características de los procesos en Android',
            content: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController:
                          carouselSliderControllerCaracteristicas,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 400,
                        onPageChanged: (index, reason) => setState(() {
                          activeIndexCaracteristicas = index;
                        }),
                      ),
                      items: [
                        // 1. Proceso por aplicación
                        CarouselItem(
                          height: 400,
                          backgroundColor: const Color.fromARGB(233, 255, 210, 160),
                          title: '1. Proceso por aplicación',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: 'Cada aplicación ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'se ejecuta, por defecto, en su propio ',
                                  ),
                                  TextSpan(
                                    text: 'proceso de Linux. ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Esto asegura independencia y estabilidad entre aplicaciones.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 2. Creación del proceso
                        CarouselItem(
                          height: 400,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            210,
                            160,
                          ),
                          title: '2. Creación del proceso',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'El proceso se inicia automáticamente cuando algún componente como una ',
                                  ),
                                  TextSpan(
                                    text: 'Activity, Service ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: 'o '),
                                  TextSpan(
                                    text: 'BroadcastReceiver ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: 'necesita ejecutarse.'),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 3. Finalización automática
                        CarouselItem(
                          height: 400,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            210,
                            160,
                          ),
                          title: '3. Finalización automática',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Cuando el usuario sale de la aplicación o el sistema necesita liberar memoria, el proceso puede ser ',
                                  ),
                                  TextSpan(
                                    text:
                                        'detenido y eliminado automáticamente ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'para optimizar los recursos.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 4. Aislamiento de memoria
                        CarouselItem(
                          height: 400,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            210,
                            160,
                          ),
                          title: '4. Aislamiento de memoria (Sandbox)',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: 'Cada proceso tiene su propio ',
                                  ),
                                  TextSpan(
                                    text: 'espacio de memoria aislado. ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Esto evita que una aplicación acceda directamente a los datos de otra, garantizando la ',
                                  ),
                                  TextSpan(
                                    text: 'seguridad del sistema.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 5. Gestión del sistema
                        CarouselItem(
                          height: 400,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            210,
                            160,
                          ),
                          title: '5. Gestión del sistema',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'La gestión de los procesos está a cargo del ',
                                  ),
                                  TextSpan(
                                    text: 'Activity Manager Service ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'del sistema operativo, que supervisa su creación, prioridad y finalización.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 6. Comunicación entre procesos
                        CarouselItem(
                          height: 400,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            210,
                            160,
                          ),
                          title: '6. Comunicación entre procesos',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Los procesos pueden '),
                                  TextSpan(
                                    text: 'compartir datos ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: 'usando mecanismos de '),
                                  TextSpan(
                                    text: 'IPC (Inter-Process Communication), ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: 'como '),
                                  TextSpan(
                                    text: 'Binder, Intents ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: 'o '),
                                  TextSpan(
                                    text: 'Content Providers.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
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
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndexCaracteristicas,
                        count: 6,
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
