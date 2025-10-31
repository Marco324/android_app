import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ArquitecturaScreen extends StatelessWidget {
  static const String name = 'arquitectura';
  const ArquitecturaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Arquitectura', content: _ArquitecturaContent());
  }
}

class _ArquitecturaContent extends StatefulWidget {
  const _ArquitecturaContent();

  @override
  State<_ArquitecturaContent> createState() => _ArquitecturaContentState();
}

class _ArquitecturaContentState extends State<_ArquitecturaContent> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Text(
              'Para entender cómo Android lleva a cabo sus funciones principales, conviene observar su arquitectura en capas.',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 10),

            ImageContainer(image: Image.network('https://keepcoding.io/wp-content/uploads/2025/02/Arquitectura-Android-que-es.jpg'), horizontalPadding: 0,),
            const SizedBox(height: 10),

            Text(
              'A grandes rasgos, Android se organiza en las siguientes capas (de más bajo a más alto):',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 24),

            Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderController,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 512,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndex = index;
                    }),
                  ),
                  items: [
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 512,
                        backgroundColor: Color(0x993F51B5),
                        title: '1. Kernel De Linux',
                        content: [
                          Text(
                            'La capa base del sistema Android es un kernel Linux adaptado. Este kernel se encarga de funciones vitales como:',
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),

                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Gestión de procesos y planificación de CPU ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'decidir qué tarea se ejecuta y cuándo).',
                                      ),
                                    ],
                                  ),
                                ),

                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Gestión de memoria ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '(asignar y liberar memoria a procesos).',
                                      ),
                                    ],
                                  ),
                                ),

                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Controladores de dispositivos ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '(para hardware como pantalla, cámara, sensores, red).',
                                      ),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Seguridad básica',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            ', como manejos de permisos a nivel del kernel, aislamiento entre procesos, protección del hardware.',
                                      ),
                                    ],
                                  ),
                                ),

                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Operaciones de entrada/salida y sistema de archivos ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '(leer/escribir almacenamiento).',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //2. CAPA DE ABSTRACCIÓN DE HARDWARE (HAL)
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 512,
                        backgroundColor: Color(0x99B8A38E),
                        title: '2. Capa De Abstracción De Hardware (HAL)',
                        content: [
                          Text(
                            'Por encima del kernel se sitúa la capa HAL, que provee interfaces estándares para que el software superior interactúe con el hardware específico sin depender del modelo concreto del dispositivo. Es decir, los fabricantes implementan “módulos HAL” que traducen llamadas genéricas a acciones del hardware real.',
                            textAlign: TextAlign.justify,
                          ),

                          SizedBox(height: 12),

                          Text(
                            'Por ejemplo, si una aplicación quiere acceder a la cámara, la petición pasa del framework al HAL correspondiente, que se encarga de hacer las llamadas específicas al driver de cámara en el kernel.',
                            textAlign: TextAlign.justify,
                          ),

                          SizedBox(height: 12),
                        ],
                      ),
                    ),

                    //3. BIBLIOTECAS NATIVAS + ANDROID RUNTIME (ART)
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 512,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: '3. Bibliotecas Nativas + Android Runtime (ART)',
                        content: [
                          Text('Esta capa combina dos elementos importantes:'),
                          SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Bibliotecas nativas: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Son colecciones de librerías en C/C++ que ofrecen funcionalidades de bajo nivel esenciales, como el manejo de gráficos (OpenGL ES), multimedia, bases de datos (SQLite) y tareas de compresión y cifrado.',
                                      ),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•  Android Runtime (ART): : ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Es la máquina virtual moderna de Android que ejecuta las aplicaciones. ART reemplazó a la antigua Dalvik y usa técnicas como compilación ',
                                      ),
                                      TextSpan(
                                        text: 'Ahead-Of-Time (AOT) ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: 'y compilación '),
                                      TextSpan(
                                        text: 'Just-In-Time (JIT) ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'para optimizar el rendimiento del código de las aplicaciones.',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(height: 6),
                          // Text(
                          //   'Cada aplicación corre en su propio proceso con su propia instancia de ART, lo que ayuda al aislamiento y a la seguridad.',
                          // ),
                        ],
                      ),
                    ),

                    //4. FRAMEWORK DE APLICACIÓN
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 512,
                        backgroundColor: Color.fromARGB(214, 238, 209, 121),
                        title: '4. Framework de Aplicación',
                        content: const [
                          Text(
                            'Esta capa es lo que utilizan los desarrolladores cuando crean apps para Android. Contiene APIs de alto nivel, servicios del sistema, gestores de ventanas, gestores de actividad, servicios de ubicación, comunicaciones, interfaz de usuario, etc.',
                            textAlign: TextAlign.justify,
                          ),

                          SizedBox(height: 12),

                          Text(
                            'Por ejemplo, la capa de framework permite que una app solicite una alerta de notificación, acceso a la base de datos interna, geolocalización, servicios de fondo, entre otros.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),

                    //5. CAPA DE APLICACIONES
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 512,
                        backgroundColor: Color(0x9948D1CC),
                        title: '5. Capa De Aplicaciones',
                        content: const [
                          Text(
                            'Finalmente, la capa superior corresponde a las aplicaciones que el usuario ve: desde las aplicaciones del sistema (como llamada, mensajes, navegador) hasta las apps instaladas por el usuario (redes sociales, juegos, utilidades).',
                            textAlign: TextAlign.justify,
                          ),

                          SizedBox(height: 12),

                          Text(
                            'Estas aplicaciones funcionan usando las APIs del framework, sin acceso directo al kernel ni a hardware, salvo mediante permisos controlados.',
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
                  count: 5,
                  effect: SwapEffect(
                    type: SwapType.yRotation,

                    activeDotColor: Color.fromARGB(244, 61, 220, 133),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
