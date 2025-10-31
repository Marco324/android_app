import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ManejoRecursosScreen extends StatelessWidget {
  static const String name = 'manejo-recursos';
  const ManejoRecursosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Manejo De Recursos',
      content: _ConcurrenciaContent(),
    );
  }
}

class _ConcurrenciaContent extends StatefulWidget {
  const _ConcurrenciaContent();

  @override
  State<_ConcurrenciaContent> createState() => _ConcurrenciaContentState();
}

class _ConcurrenciaContentState extends State<_ConcurrenciaContent> {
  final Map<int, bool> _expandedTiles = {};
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          // ClearContainer(
          //   content: Text(
          //     'La plataforma Android fue creada con el propósito de aprovechar al máximo los recursos del sistema. Su estructura está organizada en capas y módulos que garantizan estabilidad, eficiencia energética y la posibilidad de reutilizar código, facilitando el desarrollo de aplicaciones seguras y funcionales.',
          //     style: textTheme.bodyLarge,
          //   ),
          // ),
          SizedBox(height: 12),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0x99CFAEDC)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                ClearContainer(
                  content: Text(
                    'I. Estructura y Núcleo del Sistema',
                    style: textTheme.titleLarge,
                  ),
                ),
                ClearContainer(
                  content: Text(
                    'Android se apoya en el núcleo de Linux (versión 2.6), lo que le brinda solidez y la capacidad de manejar las funciones esenciales del sistema operativo.',
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.justify,
                  ),
                ),
                ClearContainer(
                  content: Column(
                    children: [
                      Text(
                        'Entre sus principales responsabilidades se encuentran:',
                        style: textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: [
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Seguridad: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Protege los procesos y recursos del sistema.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Gestión de memoria y procesos: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Asigna y controla el uso de la memoria y la ejecución de tareas.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•  Conectividad: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Administra las funciones de red y comunicación.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Controladores de hardware: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Permite la interacción con los dispositivos físicos como la pantalla, cámara o memoria.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Vacíos: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Es una forma rápida de inicialización: por ejemplo, un proceso que intenta ser lanzado pero el liberador de memoria está ocupado haciéndole hueco.',
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
                ClearContainer(
                  content: Column(
                    children: [
                      Text(
                        'Además, Android incorpora herramientas propias que complementan las funciones del núcleo de Linux:',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: [
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Binder: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Permite la comunicación entre aplicaciones.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•  Ashmem: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Maneja la memoria compartida de forma eficiente.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Wakelocks: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Controla el uso de energía para optimizar el rendimiento del dispositivo.',
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
                SizedBox(height: 12),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 61, 220, 133),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                ClearContainer(
                  content: Text(
                    'II. Manejo de Aplicaciones y Concurrencia',
                    style: textTheme.titleLarge,
                  ),
                ),
                ClearContainer(
                  content: Text(
                    'Android gestiona cuidadosamente la ejecución de aplicaciones para equilibrar el uso del procesador y la memoria.',
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.justify,
                  ),
                ),
                ClearContainer(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Máquina Virtual Dalvik',
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        'Cada aplicación funciona dentro de su propio entorno, llamado máquina virtual Dalvik, que se encarga de ejecutar los archivos de la app sin afectar a las demás. Gracias a esto, Android puede ejecutar varias aplicaciones al mismo tiempo, manteniendo la seguridad y estabilidad del sistema.',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                ClearContainer(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ciclo de Vida de las Aplicaciones',
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        'El sistema organiza las actividades (pantallas o tareas) en una pila, donde la más reciente queda al frente.',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),

                      SizedBox(height: 8),

                      Text(
                        'Cuando el sistema necesita liberar memoria:',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: [
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Cierra primero las actividades que han estado inactivas por más tiempo.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•  ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Puede eliminar procesos completos si no están en uso.',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'Los estados principales de una actividad son:',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: [
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Activa: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'En Funcionamiento y visible.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•  Pausada: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Aún visible, pero sin control directo.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Detenida: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'No visivle y puede ser cerrada para liberar espacio.',
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

                ClearContainer(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Concurrencia con Hilos',
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        'Para que las aplicaciones no se bloqueen al ejecutar tareas pesadas, Android usa hilos en segundo plano.',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'La clase AsyncTask permite ejecutar procesos largos (como descargas o cálculos) sin afectar la respuesta de la interfaz del usuario.',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 12),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(210, 231, 245, 122),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClearContainer(
                  content: Text(
                    'III. Componentes del Framework',
                    style: textTheme.titleLarge,
                  ),
                ),
                ClearContainer(
                  content: Text(
                    'El framework de Android ofrece una base organizada que permite a los desarrolladores acceder a los distintos recursos del sistema mediante componentes específicos:',
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: componenteItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      final termino = componenteItems[index];
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
                              termino.componente,
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
                                      'Función Principal:',
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
                                      'Características Clave:',
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
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(233, 107, 222, 245),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12),
                ClearContainer(
                  content: Text(
                    'IV. Administración de Recursos Específicos',
                    style: textTheme.titleLarge,
                  ),
                ),

                Column(
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
                            backgroundColor: Colors.transparent,
                            title: '1. Almacenamiento de Datos',
                            content: [
                              Text.rich(
                                textAlign: TextAlign.justify,
                                style: textTheme.bodyLarge,
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Android ofrece varios métodos para guardar información:',
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      textAlign: TextAlign.justify,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                '•	Preferencias compartidas: ',
                                            style: textTheme.bodyLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          TextSpan(
                                            text:
                                                'Guardan configuraciones simples como idioma o volumen.',
                                            style: textTheme.bodyLarge,
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
                                            style: textTheme.bodyLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          TextSpan(
                                            text:
                                                'Almacenan datos propios de la aplicación.',
                                            style: textTheme.bodyLarge,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text.rich(
                                      textAlign: TextAlign.justify,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '•	Bases de datos SQLite: ',
                                            style: textTheme.bodyLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          TextSpan(
                                            text:
                                                'Permiten guardar información estructurada en tablas.',
                                            style: textTheme.bodyLarge,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text.rich(
                                      textAlign: TextAlign.justify,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '•	Content Providers: ',
                                            style: textTheme.bodyLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          TextSpan(
                                            text:
                                                'Facilitan el intercambio de datos entre distintas aplicaciones.',
                                            style: textTheme.bodyLarge,
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

                        //2. Según su modelo de distribución: Sistema operativo de código abierto
                        SingleChildScrollView(
                          child: CarouselItem(
                            height: 440,
                            backgroundColor: Colors.transparent,
                            title: '2. Uso del Hardware',
                            content: [
                              Text.rich(
                                style: textTheme.bodyLarge,
                                textAlign: TextAlign.justify,
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Android cuenta con soporte para los distintos sensores y funciones del dispositivo (como cámara, GPS o acelerómetro).',
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 8),

                              Text.rich(
                                TextSpan(
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  children: const [
                                    TextSpan(
                                      text:
                                          'Los recursos de hardware deben declararse en el archivo ',
                                    ),
                                    TextSpan(
                                      text: 'AndroidManifest.xml',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ', lo cual también determina si una aplicación es compatible con cierto modelo de teléfono o tableta. Además, Android ofrece clases como ',
                                    ),
                                    TextSpan(
                                      text: 'MediaPlayer',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(text: ' y '),
                                    TextSpan(
                                      text: 'MediaRecorder',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ' para manejar audio y video, tanto locales como en línea.',
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),

                        //3. Según la interfaz de usuario: Sistema operativo multitáctil y orientado a la interacción visual
                        SingleChildScrollView(
                          child: CarouselItem(
                            height: 440,
                            backgroundColor: Colors.transparent,
                            title: '3. Reutilización y Permisos',
                            content: [
                              Text(
                                'Una ventaja del sistema Android es que varias aplicaciones pueden compartir componentes, reduciendo el consumo de memoria y almacenamiento.',
                                style: textTheme.bodyLarge,
                                textAlign: TextAlign.justify,
                              ),

                              Text.rich(
                                TextSpan(
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  children: const [
                                    TextSpan(
                                      text:
                                          'Todos los permisos —como el acceso a la cámara, ubicación o Internet— se definen en el ',
                                    ),
                                    TextSpan(
                                      text: 'AndroidManifest.xml',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ', garantizando que el usuario mantenga el control sobre los recursos del dispositivo.',
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
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndex,
                        count: 3,
                        effect: SwapEffect(
                          type: SwapType.yRotation,

                          activeDotColor: Color.fromARGB(244, 61, 220, 133),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<ComponenteItem> componenteItems = [
  ComponenteItem(
    componente: 'Activities',
    funcPrincipal:
        'Muestran la interfaz gráfica y permiten la interacción con el usuario.',
    caractClave: 'Representan cada pantalla de la aplicación.',
  ),
  ComponenteItem(
    componente: 'Services',
    funcPrincipal: 'Ejecutan tareas en segundo plano.',
    caractClave: 'Funcionan incluso si la app no está abierta.',
  ),
  ComponenteItem(
    componente: 'Content Providers',
    funcPrincipal:
        'Facilitan el acceso y compartición segura de datos entre aplicaciones.',
    caractClave: 'Usan una URI para identificar los datos.',
  ),
  ComponenteItem(
    componente: 'Intents',
    funcPrincipal: 'Inician componentes o envían mensajes entre ellos.',
    caractClave: 'Pueden ser explícitos o implícitos.',
  ),
  ComponenteItem(
    componente: 'Broadcast Receivers',
    funcPrincipal: 'Reaccionan a eventos del sistema o de otras apps.',
    caractClave: 'Funcionan brevemente, sin mostrar interfaz.',
  ),
];

class ComponenteItem {
  final String componente;
  final String funcPrincipal;
  final String caractClave;

  ComponenteItem({
    required this.componente,
    required this.funcPrincipal,
    required this.caractClave,
  });
}
