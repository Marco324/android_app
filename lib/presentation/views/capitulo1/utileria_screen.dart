import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UtileriaScreen extends StatelessWidget {
  static const String name = 'utileria';
  const UtileriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Utilería', content: _UtileriaScreen());
  }
}

class _UtileriaScreen extends StatefulWidget {
  const _UtileriaScreen();

  @override
  State<_UtileriaScreen> createState() => _UtileriaScreenState();
}

class _UtileriaScreenState extends State<_UtileriaScreen> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;
  final CarouselSliderController carouselSliderControllerUsuario =
      CarouselSliderController();
  int activeIndexUsuario = 0;
  final CarouselSliderController carouselSliderControllerDesarrollo =
      CarouselSliderController();
  int activeIndexDesarrollo = 0;

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
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(text: 'Android es un sistema operativo '),
                  TextSpan(
                    text: 'potente y flexible',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ' que ofrece un entorno eficiente para desarrolladores y usuarios. Su éxito se debe al buen uso de sus ',
                  ),
                  TextSpan(
                    text: 'componentes y utilerías',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ', que permiten crear aplicaciones seguras, sólidas y con buena interacción. Entender estos elementos es clave para comprender cómo ',
                  ),
                  TextSpan(
                    text:
                        'Android integra software, hardware y experiencia de usuario',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' en un mismo ecosistema.'),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 22),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              '1. Componentes fundamentales de las aplicaciones',
              style: textTheme.titleLarge,
            ),
          ),
          ClearContainer(
            content: Text(
              'Las aplicaciones de Android se construyen con componentes básicos que definen su funcionamiento y comunicación con el sistema:',
              style: textTheme.bodyLarge,
            ),
          ),

          SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderController,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 220,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndex = index;
                    }),
                  ),
                  items: [
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 220,
                        backgroundColor: Color(0x993F51B5),
                        title: 'Actividades (Activities)',
                        content: [
                          Text(
                            'Representan las pantallas y la interacción del usuario, gestionando estados como activo o pausado para optimizar recursos.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 220,
                        backgroundColor: Color(0x993F51B5),
                        title: 'Servicios (Services)',
                        content: [
                          Text(
                            'Operan en segundo plano para tareas continuas como reproducir música o descargar archivos.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 220,
                        backgroundColor: Color(0x993F51B5),
                        title: 'Receptores de difusión (Broadcast Receivers)',
                        content: [
                          Text(
                            'Responden a eventos del sistema, como batería baja o cambios de red.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 220,
                        backgroundColor: Color(0x993F51B5),
                        title: 'Proveedores de contenido (Content Providers)',
                        content: [
                          Text(
                            'Permiten compartir datos entre apps de forma segura mediante identificadores URI.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 220,
                        backgroundColor: Color(0x993F51B5),
                        title: 'Intenciones (Intents)',
                        content: [
                          Text(
                            'Actúan como mensajes que conectan componentes o aplicaciones, haciendo el sistema modular y flexible.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
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
          ),

          SizedBox(height: 22),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              '2. Utilerías para la interfaz e interacción con el usuario',
              style: textTheme.titleLarge,
            ),
          ),

          ClearContainer(
            content: Text(
              'El diseño visual y la interacción táctil son el corazón de la experiencia Android. Para lograr una interfaz intuitiva, el sistema ofrece un conjunto de utilerías gráficas que permiten construir, organizar y adaptar las pantallas de las aplicaciones.',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 12,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderControllerUsuario,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 300,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndexUsuario = index;
                    }),
                  ),
                  items: [
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 300,
                        backgroundColor: Color.fromARGB(214, 238, 209, 121),
                        title: 'Vistas (Views)',
                        content: [
                          Text(
                            'Son la base de la interfaz; de ellas derivan los widgets como botones, cuadros de texto o imágenes.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 300,
                        backgroundColor: Color.fromARGB(214, 238, 209, 121),
                        title: 'Layouts',
                        content: [
                          Text(
                            'Organizan las vistas en pantalla.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),

                          SizedBox(height: 12),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	LinearLayout: ',
                                        style: textTheme.bodyLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Dispone los elementos de forma secuencial (vertical u horizontal).',
                                            style: textTheme.bodyLarge
                                      ),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	RelativeLayout: ',
                                        style: textTheme.bodyLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Posiciona los elementos según su relación con otros o con el contenedor.',
                                            style: textTheme.bodyLarge
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 300,
                        backgroundColor: Color.fromARGB(214, 238, 209, 121),
                        title: 'App Widgets',
                        content: [
                          Text(
                            'Pequeños elementos que se colocan en la pantalla de inicio para mostrar información o ejecutar funciones rápidas (como reloj o clima). Se gestionan mediante la clase AppWidgetProvider.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 300,
                        backgroundColor: Color.fromARGB(214, 238, 209, 121),
                        title: 'Fragmentos (Fragments)',
                        content: [
                          Text(
                            'Dividen la interfaz en secciones independientes con su propio diseño y lógica, permitiendo crear interfaces adaptables a diferentes tamaños de pantalla.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AnimatedSmoothIndicator(
                  activeIndex: activeIndexUsuario,
                  count: 4,
                  effect: SwapEffect(
                    type: SwapType.yRotation,

                    activeDotColor: Color.fromARGB(244, 61, 220, 133),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 22),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              '3. Utilerías de sistema y herramientas de desarrollo',
              style: textTheme.titleLarge,
            ),
          ),

          ClearContainer(
            content: Text(
              'Además de los componentes visuales, Android cuenta con una serie de utilerías de sistema que garantizan el rendimiento, la estabilidad y la seguridad de las aplicaciones.',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 12,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderControllerDesarrollo,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 380,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndexDesarrollo = index;
                    }),
                  ),
                  items: [
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 380,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: 'Persistencia de datos',
                        content: [
                          Text(
                            'Permite almacenar información de forma duradera mediante distintas opciones:',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	SharedPreferences: ',
                                        style: textTheme.bodyLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Para configuraciones simples.',
                                            style: textTheme.bodyLarge
                                      ),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Archivos locales: ',
                                        style: textTheme.bodyLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Para datos propios de la app.',
                                            style: textTheme.bodyLarge
                                      ),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	SQLite: ',
                                        style: textTheme.bodyLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Para estructuras de datos más complejas y organizadas.',
                                            style: textTheme.bodyLarge
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 380,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: 'Programación concurrente',
                        content: [
                          Text(
                            'Uiliza hilos (threads) para evitar bloqueos al ejecutar tareas pesadas. Clases como AsyncTask o Handler permiten ejecutar procesos en segundo plano sin afectar la interfaz.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),

                          SizedBox(height: 12),

                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 380,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: 'Geolocalización y sensores',
                        content: [
                          Text(
                            'Con SensorManager y LocationManager, las apps pueden acceder a sensores de movimiento, luz, orientación y GPS, adaptándose al entorno del usuario.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 380,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: 'Notificaciones',
                        content: [
                          Text(
                            'Incluyen desde mensajes breves (Toast) hasta alertas en la barra de estado, informando al usuario sin interrumpirlo.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 380,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: 'Seguridad',
                        content: [
                          Text(
                            'Android usa un sistema de permisos declarados en el AndroidManifest.xml, donde el usuario decide qué autorizar. Además, cuenta con ProGuard (protección del código) y la Librería de Verificación de Licencia (LVL) para garantizar la autenticidad de las apps.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 380,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: 'NDK (Native Development Kit)',
                        content: [
                          Text(
                            'Permite programar en C o C++ para mejorar el rendimiento en tareas exigentes como videojuegos o aplicaciones gráficas.',
                            style: textTheme.bodyLarge,
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AnimatedSmoothIndicator(
                  activeIndex: activeIndexDesarrollo,
                  count: 4,
                  effect: SwapEffect(
                    type: SwapType.yRotation,

                    activeDotColor: Color.fromARGB(244, 61, 220, 133),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40,)
        ],
      ),
    );
  }
}
