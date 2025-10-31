import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdministracionMemoriaScreen extends StatelessWidget {
  static final name = 'administacionMemoria';
  const AdministracionMemoriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Administración De Memoria',
      content: AdministracionMemoriaContent(),
    );
  }
}

class AdministracionMemoriaContent extends StatefulWidget {
  const AdministracionMemoriaContent({super.key});

  @override
  State<AdministracionMemoriaContent> createState() =>
      _AdministracionMemoriaContentState();
}

class _AdministracionMemoriaContentState
    extends State<AdministracionMemoriaContent> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;
  final CarouselSliderController carouselSliderControllerImportancia =
      CarouselSliderController();
  int activeIndexImportancia = 0;
  final CarouselSliderController carouselSliderControllerRecomendaciones =
      CarouselSliderController();
  int activeIndexRecomendaciones = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Color(0x99CFAEDC),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                ClearContainer(
                  content: Text.rich(
                    TextSpan(
                      style: textTheme.bodyLarge,
                      children: [
                        TextSpan(text: 'El sistema operativo '),
                        TextSpan(
                          text: 'Android',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' gestiona la memoria de forma '),
                        TextSpan(
                          text: 'dinámica y adaptativa',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ', aplicando diversas estrategias para optimizar el ',
                        ),
                        TextSpan(
                          text: 'rendimiento general del dispositivo',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '. Entre las más importantes se encuentran:',
                        ),
                      ],
                    ),
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
                          height: 460,
                          onPageChanged: (index, reason) => setState(() {
                            activeIndex = index;
                          }),
                        ),
                        items: [
                          // 1. Android Runtime (ART) y Dalvik
                          CarouselItem(
                            height: 460,
                            backgroundColor: Colors.transparent,
                            title: '1. Android Runtime (ART) y Dalvik',
                            content: [
                              Text.rich(
                                TextSpan(
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  children: [
                                    TextSpan(text: 'Android utiliza una '),
                                    TextSpan(
                                      text: 'máquina virtual (actualmente ART)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ' que ejecuta código Java en formato .dex. Administra la memoria mediante un ',
                                    ),
                                    TextSpan(
                                      text: 'heap',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ', donde se almacenan los objetos.\n\n• ',
                                    ),
                                    TextSpan(
                                      text:
                                          'ART realiza compilación anticipada (AOT)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' para mejorar la eficiencia.\n• ',
                                    ),
                                    TextSpan(
                                      text:
                                          'Gestiona la memoria con garbage collection (GC)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ', liberando objetos que ya no se usan.',
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),

                          // 2. Paging y Memory Mapping (mmap)
                          CarouselItem(
                            height: 460,
                            backgroundColor: Colors.transparent,
                            title: '2. Paging y Memory Mapping (mmap)',
                            content: [
                              Text.rich(
                                TextSpan(
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  children: [
                                    TextSpan(
                                      text:
                                          'Android aprovecha funciones del kernel Linux como:\n\n• ',
                                    ),
                                    TextSpan(
                                      text: 'Paging',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ': divide la memoria en páginas pequeñas para optimizar el acceso y habilitar la memoria virtual.\n• ',
                                    ),
                                    TextSpan(
                                      text: 'Memory Mapping (mmap)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ': permite cargar archivos o recursos directamente en memoria, reduciendo el consumo y acelerando la carga.',
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),

                          // 3. Low Memory Killer
                          CarouselItem(
                            height: 460,
                            backgroundColor: Colors.transparent,
                            title: '3. Low Memory Killer (LMK)',
                            content: [
                              Text.rich(
                                TextSpan(
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  children: [
                                    TextSpan(
                                      text:
                                          'Cuando la RAM es insuficiente, el sistema activa el ',
                                    ),
                                    TextSpan(
                                      text: 'Low Memory Killer (LMK)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ', que finaliza procesos en segundo plano o con baja prioridad para liberar espacio.\n\nCada proceso tiene una ',
                                    ),
                                    TextSpan(
                                      text: 'prioridad asignada',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ' (foreground, visible, background, empty), eliminando primero los menos esenciales.',
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),

                          // 4. Garbage Collector (GC)
                          CarouselItem(
                            height: 460,
                            backgroundColor: Colors.transparent,
                            title: '4. Garbage Collector (GC)',
                            content: [
                              Text.rich(
                                TextSpan(
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  children: [
                                    TextSpan(text: 'El '),
                                    TextSpan(
                                      text: 'Garbage Collector (GC)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ' libera objetos no referenciados automáticamente.\n\nSin embargo, su ejecución provoca ',
                                    ),
                                    TextSpan(
                                      text: 'pausas (GC pauses)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(text: ', que pueden causar '),
                                    TextSpan(
                                      text: 'lag o cierres inesperados',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ' si la memoria no se administra correctamente.',
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex,
                          count: 4,
                          effect: const SwapEffect(
                            type: SwapType.yRotation,
                            activeDotColor: Color.fromARGB(244, 140, 230, 200),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),
                    ],
                  ),
                ),

                SizedBox(height: 24),
              ],
            ),
          ),

          ColorAllContainer(
            color: Color.fromARGB(233, 210, 255, 230),
            title: 'Importancia de la administración de memoria',
            content: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: carouselSliderControllerImportancia,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 520,
                        onPageChanged: (index, reason) => setState(() {
                          activeIndexImportancia = index;
                        }),
                      ),
                      items: [
                        // 1. Dispositivos con recursos limitados
                        CarouselItem(
                          height: 520,
                          backgroundColor: const Color.fromARGB(
                            233,
                            210,
                            255,
                            230,
                          ),
                          title: '1. Dispositivos con recursos limitados',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'El ecosistema Android es muy diverso: hay dispositivos de ',
                                  ),
                                  TextSpan(
                                    text: 'gama baja, media y alta',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' con distintas capacidades de memoria (desde 2 GB hasta más de 16 GB).\n\n',
                                  ),
                                  TextSpan(
                                    text:
                                        'Una app que funciona bien en equipos potentes puede fallar en los de menos recursos',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' si no se optimiza su consumo de memoria.\n\nLos desarrolladores deben diseñar apps que funcionen de forma eficiente en todo rango de hardware.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 2. Rendimiento y experiencia de usuario
                        CarouselItem(
                          height: 520,
                          backgroundColor: const Color.fromARGB(
                            233,
                            210,
                            255,
                            230,
                          ),
                          title: '2. Rendimiento y experiencia de usuario',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'El mal uso de la memoria provoca:\n\n• ',
                                  ),
                                  TextSpan(
                                    text:
                                        'Lentitud en la interfaz.\n• Retrasos al cargar datos o pantallas.\n• Cierres inesperados (crashes).',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\n\nEstas fallas afectan la ',
                                  ),
                                  TextSpan(
                                    text: 'confianza del usuario',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' y pueden llevar a la desinstalación de la app, perjudicando su éxito.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 3. Consumo de batería y recursos
                        CarouselItem(
                          height: 520,
                          backgroundColor: const Color.fromARGB(
                            233,
                            210,
                            255,
                            230,
                          ),
                          title: '3. Consumo de batería y recursos',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: 'Cada vez que el sistema realiza ',
                                  ),
                                  TextSpan(
                                    text:
                                        'recolección de basura o mueve datos en memoria',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ', usa CPU, aumentando el consumo energético.\n\nUna mala gestión implica:\n• Más ciclos de CPU.\n• Más operaciones de E/S.\n• Menor duración de la batería.\n\nUna app eficiente ',
                                  ),
                                  TextSpan(
                                    text:
                                        'reduce la carga del procesador y mejora la autonomía del dispositivo.',
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

                        // 4. Estabilidad del sistema
                        CarouselItem(
                          height: 520,
                          backgroundColor: const Color.fromARGB(
                            233,
                            210,
                            255,
                            230,
                          ),
                          title: '4. Estabilidad del sistema',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Android prioriza mantener el sistema fluido, por lo que puede cerrar apps que consumen demasiada memoria.\n\nCuando existen ',
                                  ),
                                  TextSpan(
                                    text: 'fugas de memoria (memory leaks)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' o '),
                                  TextSpan(
                                    text: 'uso excesivo de RAM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ', el sistema finaliza la app para proteger otros procesos.\n\nEsto puede hacer que el usuario ',
                                  ),
                                  TextSpan(
                                    text: 'pierda el estado actual',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ', como formularios o chats abiertos.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 5. Multitarea y coexistencia de procesos
                        CarouselItem(
                          height: 520,
                          backgroundColor: const Color.fromARGB(
                            233,
                            210,
                            255,
                            230,
                          ),
                          title: '5. Multitarea y coexistencia de procesos',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Android puede ejecutar múltiples apps simultáneamente gracias a su ',
                                  ),
                                  TextSpan(
                                    text: 'gestión multitarea',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '.\n\nSi cada aplicación administra bien su memoria, el sistema puede mantener más procesos activos sin reiniciarlos.\n\nPor el contrario, una app que ',
                                  ),
                                  TextSpan(
                                    text: 'consume demasiada memoria',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' obliga al sistema a cerrar las demás, afectando la experiencia global del usuario.',
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndexImportancia,
                        count: 5,
                        effect: const SwapEffect(
                          type: SwapType.yRotation,
                          activeDotColor: Color.fromARGB(244, 140, 230, 200),
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
            color: Color.fromARGB(233, 255, 245, 210),
            title:
                'Recomendaciones para una buena gestión de memoria en Android',
            content: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController:
                          carouselSliderControllerRecomendaciones,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 510,
                        onPageChanged: (index, reason) => setState(() {
                          activeIndexRecomendaciones = index;
                        }),
                      ),
                      items: [
                        // 1. Monitorización constante
                        CarouselItem(
                          height: 510,
                          backgroundColor: const Color.fromARGB(233, 255, 245, 210),
                          title: '1. Monitorización constante',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Usar herramientas que permitan observar el uso de memoria en tiempo real:\n\n• ',
                                  ),
                                  TextSpan(
                                    text: 'Android Studio Profiler',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ': muestra el uso de memoria.\n• ',
                                  ),
                                  TextSpan(
                                    text: 'LeakCanary',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ': detecta fugas de memoria durante el desarrollo.\n• ',
                                  ),
                                  TextSpan(
                                    text: 'ADB shell dumpsys meminfo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ': analiza el consumo detallado.\n\nEstas herramientas ayudan a identificar objetos o procesos que consumen memoria innecesariamente.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 2. Liberar recursos no usados
                        CarouselItem(
                          height: 510,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            245,
                            210,
                          ),
                          title: '2. Liberar recursos no usados',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Para evitar consumo innecesario de memoria:\n\n• Cancelar tareas en segundo plano cuando la ',
                                  ),
                                  TextSpan(
                                    text: 'Activity o Fragment se destruye',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '.\n• Cerrar conexiones, listeners o streams tras su uso.\n• Desasignar ',
                                  ),
                                  TextSpan(
                                    text: 'objetos grandes (imágenes, buffers)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' cuando ya no se muestran.'),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 3. Evitar fugas de memoria
                        CarouselItem(
                          height: 510,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            245,
                            210,
                          ),
                          title: '3. Evitar fugas de memoria',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: 'Las fugas ocurren cuando una ',
                                  ),
                                  TextSpan(
                                    text:
                                        'Activity mantiene referencias estáticas a su contexto o vistas',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '.\n\nPara prevenirlas:\n• Evitar variables estáticas que apunten a Activities.\n• Usar el ',
                                  ),
                                  TextSpan(
                                    text:
                                        'contexto de aplicación (getApplicationContext())',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' si se necesita mantenerlo vivo más tiempo.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 4. Optimizar imágenes y cachés
                        CarouselItem(
                          height: 510,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            245,
                            210,
                          ),
                          title: '4. Optimizar imágenes y cachés',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Las imágenes son de los mayores consumidores de memoria.\n\nPara manejarlas correctamente:\n• Reducir su tamaño con ',
                                  ),
                                  TextSpan(
                                    text: 'BitmapFactory.Options.inSampleSize',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n• Usar librerías como '),
                                  TextSpan(
                                    text: 'Glide, Picasso o Coil',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n• Implementar '),
                                  TextSpan(
                                    text: 'cachés inteligentes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' para evitar recargas innecesarias.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 5. Respetar los límites de memoria
                        CarouselItem(
                          height: 510,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            245,
                            210,
                          ),
                          title: '5. Respetar los límites de memoria',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: 'Cada app tiene un límite de ',
                                  ),
                                  TextSpan(
                                    text: 'heap (memoria asignable)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' que varía según el dispositivo y versión de Android.\n\nSuperar ese límite genera un ',
                                  ),
                                  TextSpan(
                                    text: 'OutOfMemoryError',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '.\n\nPor eso, los desarrolladores deben ',
                                  ),
                                  TextSpan(
                                    text:
                                        'diseñar sus apps considerando este margen',
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

                        // 6. Diseño y arquitectura consciente
                        CarouselItem(
                          height: 510,
                          backgroundColor: const Color.fromARGB(
                            233,
                            255,
                            245,
                            210,
                          ),
                          title: '6. Diseño y arquitectura consciente',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'En servicios o apps que permanecen en segundo plano (como música, GPS o chat), se recomienda:\n\n• ',
                                  ),
                                  TextSpan(
                                    text:
                                        'Minimizar la cantidad de datos cargados en memoria',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n• '),
                                  TextSpan(
                                    text:
                                        'Usar bases de datos locales o almacenamiento temporal',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' para liberar RAM.\n• Manejar correctamente los estados del ciclo de vida: ',
                                  ),
                                  TextSpan(
                                    text: 'onPause(), onStop() y onDestroy()',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ', asegurando que los recursos se liberen cuando la app no esté activa.',
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
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndexRecomendaciones,
                        count: 6,
                        effect: const SwapEffect(
                          type: SwapType.yRotation,
                          activeDotColor: Color.fromARGB(244, 140, 230, 200),
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
