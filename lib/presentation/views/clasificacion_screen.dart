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
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
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
                    child: _CarouselItem(
                      backgroundColor: Color(0x993F51B5),
                      title: '1. Sistema Operativo de Mayor Uso a Nivel Mundial',
                      content: [
                        Text.rich(
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
                    child: _CarouselItem(
                      backgroundColor: Color(0x99B8A38E),
                      title: '2. Clasificación por Regiones',
                      content: [
                        Text(
                          'El dominio de Android no es igual en todas partes, por lo que su presencia puede clasificarse también por regiones:',
                        ),
                        SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '•	América Latina, Asia y África: ',
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
                    child: _CarouselItem(
                      backgroundColor: Color.fromARGB(255, 255, 192, 203),
                      title: '3. Clasificación por Tipos de Dispositivos',
                      content: [
                        Text(
                          'Android también se clasifica según los tipos de equipos que utilizan su sistema:',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          '•	Teléfonos inteligentes: ',
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
                                      text: 'Android TV, Wear OS y Android Auto',
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
                    child: _CarouselItem(
                      backgroundColor: Color.fromARGB(214, 238, 209, 121),
                      title: '4. Clasificación por Fabricantes',
                      content: [
                        Text(
                          'Android está presente en dispositivos de múltiples fabricantes, lo que amplía aún más su base de usuarios:',
                        ),
                        Padding(
                          padding: EdgeInsetsGeometry.only(left: 12),
                          child: Column(
                            children: [
                              Text.rich(
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

                  activeDotColor: Color.fromARGB(244, 61, 220, 133),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CarouselItem extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget> content;
  const _CarouselItem({
    required this.title,
    required this.backgroundColor,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 420,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: textTheme.titleMedium),
                SizedBox(height: 14),
                Column(children: content),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
