import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ClasificacionScreen extends StatelessWidget {
  static const String name = 'clasificacion';
  const ClasificacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Clasificación',
      content: _ClasificacionScreen(),
    );
  }
}

class _ClasificacionScreen extends StatefulWidget {
  @override
  State<_ClasificacionScreen> createState() => _ClasificacionScreenState();
}

class _ClasificacionScreenState extends State<_ClasificacionScreen> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  final CarouselSliderController carouselSliderControllerImportancia =
      CarouselSliderController();
  final CarouselSliderController carouselSliderControllerOtras =
      CarouselSliderController();
  int activeIndex = 0;
  int activeIndexOtras = 0;
  int activeIndexImportancia = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              textAlign: TextAlign.justify,
              style: textTheme.bodyLarge,
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Android, al ser un sistema operativo de código abierto desarrollado por Google, se ha convertido en ',
                  ),
                  TextSpan(
                    text:
                        'el sistema más utilizado del mundo en dispositivos móviles',
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Su clasificación, con base en el número de usuarios, puede dividirse en distintos niveles según su presencia y adopción global:',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 40),

            Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderController,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 420,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndex = index;
                    }),
                  ),
                  items: [
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 420,
                        backgroundColor: Color(0x993F51B5),
                        title:
                            '1. Sistema Operativo de Mayor Uso a Nivel Mundial',
                        content: [
                          Text.rich(
                            textAlign: TextAlign.justify,
                            TextSpan(
                              children: [
                                TextSpan(text: 'Android ocupa el '),
                                TextSpan(
                                  text: 'primer lugar mundial',
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' en número de usuarios de sistemas operativos móviles.',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Text.rich(
                            textAlign: TextAlign.justify,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'De acuerdo con diversas fuentes y estadísticas de mercado, ',
                                ),
                                TextSpan(
                                  text:
                                      'más del 70 % de los dispositivos móviles activos ',
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'utilizan Android, superando ampliamente a otros sistemas como iOS. Esta amplia adopción se debe a su .',
                                ),
                                TextSpan(
                                  text:
                                      'compatibilidad con una gran variedad de marcas y modelos',
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ', desde teléfonos de gama baja hasta equipos de alta gama.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //2. Clasificación por Regiones
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 420,
                        backgroundColor: Color(0x993F51B5),
                        title: '2. Clasificación por Regiones',
                        content: [
                          Text(
                            'El dominio de Android no es igual en todas partes, por lo que su presencia puede clasificarse también por regiones:',
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
                                        text:
                                            '•	América Latina, Asia y África: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Android tiene una participación que supera el ',
                                      ),
                                      TextSpan(
                                        text: '80 % ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: 'de los usuarios.'),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '• Europa: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: 'Oscila entre el '),
                                      TextSpan(
                                        text: '65 % y 75 %',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: '.'),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Estados Unidos y Japón: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Aunque Android mantiene una base sólida, ',
                                      ),
                                      TextSpan(
                                        text: 'iOS tiene mayor presencia ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: 'en el segmento premium.'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //3. Clasificación por Tipos de Dispositivos
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 420,
                        backgroundColor: Color(0x993F51B5),
                        title: '3. Clasificación por Tipos de Dispositivos',
                        content: [
                          Text(
                            'Android también se clasifica según los tipos de equipos que utilizan su sistema:',
                            textAlign: TextAlign.justify,
                          ),
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
                                        text: '•	Teléfonos inteligentes: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: 'Representan el '),
                                      TextSpan(
                                        text: 'mayor número de usuarios',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: '.'),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Tabletas: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Segundo grupo en importancia, aunque con menor crecimiento.',
                                      ),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            '•	Televisores inteligentes, relojes, automóviles y dispositivos IoT: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Su presencia aumenta gracias a versiones específicas como ',
                                      ),
                                      TextSpan(
                                        text:
                                            'Android TV, Wear OS y Android Auto',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: '.'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 420,
                        backgroundColor: Color(0x993F51B5),
                        title: '4. Clasificación por Fabricantes',
                        content: [
                          Text(
                            'Android está presente en dispositivos de múltiples fabricantes, lo que amplía aún más su base de usuarios:',
                            textAlign: TextAlign.justify,
                          ),
                          Padding(
                            padding: EdgeInsetsGeometry.only(left: 12),
                            child: Column(
                              children: [
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Marcas líderes: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Samsung, Xiaomi, OPPO, Vivo, Motorola, Huawei (con versiones modificadas), entre otras.',
                                      ),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Sistemas derivados: ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'Existen variaciones del sistema base (como MIUI, One UI o ColorOS) que conservan la base Android, pero con personalizaciones visuales o funcionales.',
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
                  ],
                ),
                SizedBox(height: 10),
                AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: 4,
                  effect: SwapEffect(
                    type: SwapType.yRotation,

                    activeDotColor: const Color.fromARGB(244, 61, 220, 133),
                  ),
                ),
              ],
            ),

            SizedBox(height: 22),

            Text(
              'Clasifiación según su importancia',
              style: textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),

            Text.rich(
              textAlign: TextAlign.justify,
              style: textTheme.bodyLarge,
              TextSpan(
                children: [
                  TextSpan(text: 'Android se considera un '),
                  TextSpan(
                    text: 'sistema operativo de alta importancia global',
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        ', y puede clasificarse de varias formas dependiendo del ámbito que se analice:',
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderControllerImportancia,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 420,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndexImportancia = index;
                    }),
                  ),
                  items: [
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 420,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title:
                            '1. Según su relevancia para los desarrolladores',
                        content: [
                          Text.rich(
                            textAlign: TextAlign.justify,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Para los programadores y desarrolladores, Android se clasifica como un ',
                                ),
                                TextSpan(
                                  text: 'entorno de desarrollo prioritario',
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: '. Su '),
                                TextSpan(
                                  text: 'SDK (Software Development Kit)',
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: ', junto con el uso de '),
                                TextSpan(
                                  text: 'Java, Kotlin y XML',
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                TextSpan(
                                  text:
                                      ', permite crear aplicaciones fácilmente integradas al sistema.Además, su amplia base de usuarios hace que el mercado de apps Android sea uno de los más rentables y activos.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //2. Según su función en la vida cotidiana
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 420,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: '2. Según su función en la vida cotidiana',
                        content: [
                          Text.rich(
                            textAlign: TextAlign.justify,
                            TextSpan(
                              children: [
                                TextSpan(text: 'En la práctica, Android es '),
                                TextSpan(
                                  text:
                                      'uno de los sistemas operativos más influyentes en la vida diaria',
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '. A través de él, las personas se comunican, trabajan, estudian, compran, se entretienen, e incluso controlan sus hogares o vehículos.Su integración con servicios en la nube, asistentes virtuales (como Google Assistant) y dispositivos IoT (Internet of Things) lo convierten en un pilar del ecosistema digital moderno. ',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //3. Según su aporte a la innovación tecnológica
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 420,
                        backgroundColor: Color.fromARGB(255, 255, 192, 203),
                        title: '3. Según su aporte a la innovación tecnológica',
                        content: [
                          Text(
                            'Android también es un sistema operativo altamente innovador, gracias a su actualización constante y su capacidad para incorporar tecnologías emergentes:',
                            textAlign: TextAlign.justify,
                          ),
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
                                        text:
                                            '•	Inteligencia artificial y aprendizaje automático ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '(por ejemplo, reconocimiento facial o de voz).',
                                      ),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Realidad aumentada ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: '(con ARCore).'),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '•	Automatización inteligente',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: '.'),
                                    ],
                                  ),
                                ),
                                Text.rich(
                                  textAlign: TextAlign.justify,
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            '•	Integración con wearables y autos inteligentes ',
                                        style: textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '(Android Auto, Wear OS).',
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
                  ],
                ),
                SizedBox(height: 10),
                AnimatedSmoothIndicator(
                  activeIndex: activeIndexImportancia,
                  count: 3,
                  effect: SwapEffect(
                    type: SwapType.yRotation,

                    activeDotColor: Color.fromARGB(244, 61, 220, 133),
                  ),
                ),
              ],
            ),
            SizedBox(height: 22),

            Text('Otras categorías', style: textTheme.headlineSmall),
            const SizedBox(height: 12),

            Text.rich(
              textAlign: TextAlign.justify,
              style: textTheme.bodyLarge,
              TextSpan(
                children: [
                  TextSpan(text: 'Android se considera un '),
                  TextSpan(
                    text: 'sistema operativo de alta importancia global',
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        ', y puede clasificarse de varias formas dependiendo del ámbito que se analice:',
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Column(
              children: [
                CarouselSlider(
                  carouselController: carouselSliderControllerOtras,
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: 300,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndexOtras = index;
                    }),
                  ),
                  items: [
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 300,
                        backgroundColor: Color.fromARGB(214, 238, 209, 121),
                        title:
                            '1. Según su núcleo o estructura interna: Sistema operativo basado en Linux',
                        content: [
                          Text.rich(
                            textAlign: TextAlign.justify,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Android, basado en el núcleo Linux, ofrece estabilidad, seguridad y flexibilidad. Su código abierto permite a fabricantes y desarrolladores personalizarlo, dando lugar a variantes como One UI, MIUI y EMUI.',
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
                        height: 300,
                        backgroundColor: Color.fromARGB(214, 238, 209, 121),
                        title:
                            '2. Según su modelo de distribución: Sistema operativo de código abierto',
                        content: [
                          Text.rich(
                            textAlign: TextAlign.justify,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Android, sistema operativo de código abierto, permite a desarrolladores modificar su código fuente bajo la licencia Apache 2.0. Google mantiene control parcial a través de servicios integrados.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //3. Según la interfaz de usuario: Sistema operativo multitáctil y orientado a la interacción visual
                    SingleChildScrollView(
                      child: CarouselItem(
                        height: 300,
                        backgroundColor:Color.fromARGB(214, 238, 209, 121),
                        title:
                            '3. Según la interfaz de usuario: Sistema operativo multitáctil y orientado a la interacción visual',
                        content: [
                          Text(
                            'Otro aspecto que lo categoriza es su interfaz gráfica de usuario (GUI), basada en interacción multitáctil y visual. Android está pensado para ser intuitivo, colorido y centrado en gestos (deslizar, tocar, mantener presionado, etc.',
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AnimatedSmoothIndicator(
                  activeIndex: activeIndexOtras,
                  count: 3,
                  effect: SwapEffect(
                    type: SwapType.yRotation,

                    activeDotColor: Color.fromARGB(244, 61, 220, 133),
                  ),
                ),
              ],
            ),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
