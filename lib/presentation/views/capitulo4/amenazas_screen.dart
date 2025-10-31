import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AmenazasScreen extends StatelessWidget {
  static final name = 'amenazas';
  const AmenazasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Amenazas', content: AmenazasContent());
  }
}

class AmenazasContent extends StatefulWidget {
  const AmenazasContent({super.key});

  @override
  State<AmenazasContent> createState() => _AmenazasContentState();
}

class _AmenazasContentState extends State<AmenazasContent> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;

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
                style: textTheme.bodyLarge,
                children: [
                  TextSpan(text: 'Los '),
                  TextSpan(
                    text: 'dispositivos electrónicos',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ' forman parte de nuestra vida diaria: computadoras, teléfonos móviles, dispositivos de Internet de las Cosas. Interactuamos con ellos la mayor parte del día, siendo un ',
                  ),
                  TextSpan(
                    text: 'medio de comunicación esencial',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '.\n\nNos enfocaremos en '),
                  TextSpan(
                    text: 'dispositivos móviles con sistema operativo Android',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        '.\n\nNuestros teléfonos móviles conocen todo sobre nosotros: ',
                  ),
                  TextSpan(
                    text:
                        'contactos, aplicaciones usadas, lugares favoritos, páginas web visitadas, credenciales, fotos y vídeos',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ', lo que nos hace vulnerables ante riesgos como el ',
                  ),
                  TextSpan(
                    text: 'robo de información por terceros',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          ImageContainer(image: Image.asset('assets/amenazas.png')),

          SizedBox(height: 24),

          Container(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(height: 24),
                ClearContainer(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('¿Qué es una amenaza?', style: textTheme.titleLarge),
                      SizedBox(height: 8),
                      Text.rich(
                        TextSpan(
                          style: textTheme.bodyLarge,
                          children: [
                            TextSpan(text: 'En el contexto de '),
                            TextSpan(
                              text: 'sistemas operativos',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ', una '),
                            TextSpan(
                              text: 'amenaza',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  ' es cualquier peligro que busca comprometer la ',
                            ),
                            TextSpan(
                              text:
                                  'confidencialidad, integridad o disponibilidad',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  ' del dispositivo del usuario, sus datos o la ',
                            ),
                            TextSpan(
                              text: 'red a la que está conectado',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: '.'),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),

          SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Tipos de amenazas en Android',
              style: textTheme.titleLarge,
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
                    height: 580,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  ),
                  items: [
                    // 1. Malware
                    CarouselItem(
                      height: 580,
                      backgroundColor: const Color.fromARGB(233, 200, 230, 210),
                      title: '1. Amenazas de Software Malicioso (Malware)',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(text: 'El '),
                              TextSpan(
                                text: 'malware',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ' es un programa que se ejecuta sin el conocimiento del usuario y realiza funciones perjudiciales. Sus principales objetivos son:\n• ',
                              ),
                              TextSpan(
                                text:
                                    'Robar información\n• Secuestrar equipo o datos\n• Reclutar dispositivos para botnets',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    '\n\nFormas de infección en Android incluyen:\n• Descarga de archivos o enlaces sospechosos\n• Apps o actualizaciones poco confiables\n• Visitas a sitios web sospechosos',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),

                    // 2. Amenazas de Red y Comunicación
                    CarouselItem(
                      height: 580,
                      backgroundColor: const Color.fromARGB(233, 200, 230, 210),
                      title: '2. Amenazas de Red y Comunicación',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text:
                                    'Los dispositivos Android envían y reciben información constantemente a través de redes como ',
                              ),
                              TextSpan(
                                text: 'Wi-Fi, móvil o Bluetooth',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ', lo que los expone a ataques.\n\nUn ejemplo es el ',
                              ),
                              TextSpan(
                                text: 'Ataque de Man-in-the-Middle',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ', donde un tercero se interpone para espiar, capturar o modificar datos.\n\nRecomendación: desactivar conexiones inalámbricas cuando no se usan y evitar conectarse automáticamente a redes comprometidas.',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),

                    // 3. Explotación de vulnerabilidades del sistema
                    CarouselItem(
                      height: 580,
                      backgroundColor: const Color.fromARGB(233, 200, 230, 210),
                      title: '3. Explotación de Vulnerabilidades del Sistema',
                      content: [
                        Text.rich(
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text: 'Los atacantes pueden aprovechar ',
                              ),
                              TextSpan(
                                text: 'fallos, errores de diseño o debilidades',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: ' en Android mediante '),
                              TextSpan(
                                text: 'exploits',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '. Los tipos más comunes incluyen:\n• ',
                              ),
                              TextSpan(
                                text: 'Ejecución Remota de Código',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': ejecutar código en el dispositivo sin autorización.\n• ',
                              ),
                              TextSpan(
                                text: 'Escalada de Privilegios',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': obtener permisos de alto nivel desde una app de bajo privilegio.\n• ',
                              ),
                              TextSpan(
                                text: 'Vulnerabilidades de Día Cero',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ': fallas explotadas antes de un parche.\n\nSolución: mantener sistema operativo y apps siempre actualizados.',
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

                AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: 3,
                  effect: const SwapEffect(
                    type: SwapType.yRotation,
                    activeDotColor: Color.fromARGB(244, 140, 230, 200),
                  ),
                ),

                const SizedBox(height: 12),
              ],
            ),
          ),

          SizedBox(height: 24),

          ImageContainer(image: Image.asset('assets/tiposAmenazas.png')),

          SizedBox(height: 24),
        ],
      ),
    );
  }
}
