import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AnalisisProblemasScreen extends StatelessWidget {
  static final name = 'analisisProblemas';
  const AnalisisProblemasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Analisis De Problemas',
      content: AnalisisProblemasContent(),
    );
  }
}

class AnalisisProblemasContent extends StatefulWidget {
  const AnalisisProblemasContent({super.key});

  @override
  State<AnalisisProblemasContent> createState() =>
      _AnalisisProblemasContentState();
}

class _AnalisisProblemasContentState extends State<AnalisisProblemasContent> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;
  final CarouselSliderController carouselSliderControllerSeguridad =
      CarouselSliderController();
  int activeIndexSeguridad = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColorAllContainer(
            color: Colors.greenAccent,
            title: 'Análisis de problemas',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(
                        text: 'Android',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ', como cualquier sistema operativo moderno, no está exento de ',
                      ),
                      TextSpan(
                        text: 'errores y fallos inesperados',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '. Desde una simple app que se cierra de golpe hasta el caos absoluto de un ',
                      ),
                      TextSpan(
                        text: 'kernel panic',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' que paraliza todo el sistema, los problemas pueden tener causas muy diversas.',
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
                            'En Android, los errores más comunes y críticos son ',
                      ),
                      TextSpan(
                        text: 'ANR (Application Not Responding), Crash',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' y '),
                      TextSpan(
                        text: 'Kernel Panic',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '. Cada uno presenta diferentes causas y síntomas, por lo que entenderlos es esencial para ',
                      ),
                      TextSpan(
                        text:
                            'reducir su impacto y mejorar la estabilidad del sistema',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '.'),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              // SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: carouselSliderController,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 440,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                      ),
                      items: [
                        // 1. Errores ANR
                        CarouselItem(
                          height: 440,
                          backgroundColor: Colors.transparent,
                          title: '1. Errores ANR (Application Not Responding)',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Los errores '),
                                  TextSpan(
                                    text: 'ANR',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' ocurren cuando una aplicación deja de responder y aparece el mensaje “',
                                  ),
                                  TextSpan(
                                    text: 'La aplicación no responde',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(text: '”. Esto sucede cuando el '),
                                  TextSpan(
                                    text: 'hilo principal (UI thread)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' permanece bloqueado demasiado tiempo, impidiendo que el sistema procese eventos o actualice la interfaz.\n',
                                  ),
                                  TextSpan(
                                    text:
                                        'Resultado: el usuario puede forzar el cierre o esperar que la app se recupere.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 2. Crash (caída de la aplicación)
                        CarouselItem(
                          height: 440,
                          backgroundColor: Colors.transparent,
                          title: '2. Crash (caída de la aplicación)',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Un '),
                                  TextSpan(
                                    text: 'crash',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' ocurre cuando una app se cierra de forma abrupta, mostrando un mensaje de error. Generalmente es causado por una ',
                                  ),
                                  TextSpan(
                                    text: 'excepción sin capturar',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' (por ejemplo, variables nulas o errores de programación).\n',
                                  ),
                                  TextSpan(
                                    text:
                                        'Consecuencia: interrumpe al usuario y puede provocar pérdida de datos o progreso.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 3. Kernel Panic
                        CarouselItem(
                          height: 440,
                          backgroundColor: Colors.transparent,
                          title: '3. Kernel Panic',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'El '),
                                  TextSpan(
                                    text: 'kernel panic',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' es uno de los fallos más graves, causado por errores internos del núcleo del sistema (',
                                  ),
                                  TextSpan(
                                    text: 'kernel',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '), como accesos inválidos a memoria o fallos de hardware. Cuando ocurre, el sistema se ',
                                  ),
                                  TextSpan(
                                    text:
                                        'paraliza y normalmente se reinicia automáticamente',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '.\nOrigen: proviene de sistemas UNIX y busca proteger la integridad del sistema. El usuario suele experimentar un reinicio inesperado.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndex,
                        count: 3,
                        effect: const SwapEffect(
                          type: SwapType.yRotation,
                          activeDotColor: Color.fromARGB(244, 140, 230, 200),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ColorAllContainer(
            color: Colors.blueAccent,
            title: 'Prevención de desastres',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'La '),
                      TextSpan(
                        text: 'prevención de desastres',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' se refiere a las medidas y prácticas que se aplican para evitar la ',
                      ),
                      TextSpan(
                        text: 'pérdida de datos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', '),
                      TextSpan(
                        text: 'fallos graves del sistema',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' o '),
                      TextSpan(
                        text: 'daños de seguridad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' que puedan afectar el funcionamiento del sistema operativo o de las aplicaciones.',
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
                      TextSpan(text: 'En cuanto a la '),
                      TextSpan(
                        text: 'seguridad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ', Android ha implementado varias capas de protección para salvaguardar los dispositivos y los datos contra ',
                      ),
                      TextSpan(
                        text: 'amenazas potenciales',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '. Una de las características más destacadas es ',
                      ),
                      TextSpan(
                        text: 'Google Play Protect',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ', un sistema integrado en la Play Store que analiza las aplicaciones en busca de ',
                      ),
                      TextSpan(
                        text: 'malware',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' y otro software malicioso antes de su instalación. Además, Android ofrece ',
                      ),
                      TextSpan(
                        text: 'actualizaciones regulares de seguridad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' para corregir vulnerabilidades conocidas y proteger los dispositivos contra posibles ataques.',
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
                            'Otra medida de seguridad importante en este sistema operativo es el ',
                      ),
                      TextSpan(
                        text: 'cifrado de datos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '. A partir de '),
                      TextSpan(
                        text: 'Android 6.0 Marshmallow',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ', el cifrado está habilitado de forma predeterminada en la mayoría de los dispositivos. Esto significa que los ',
                      ),
                      TextSpan(
                        text: 'datos almacenados',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' —como aplicaciones, archivos y configuraciones— se ',
                      ),
                      TextSpan(
                        text: 'cifran automáticamente',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' para protegerlos en caso de pérdida o robo del dispositivo.',
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
                        text: 'Adicionalmente, Android ofrece funciones de ',
                      ),
                      TextSpan(
                        text: 'bloqueo de pantalla',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', como contraseñas, patrones y '),
                      TextSpan(
                        text: 'reconocimiento facial',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ', para garantizar que solo el propietario del dispositivo pueda acceder a su contenido. También cuenta con funciones de ',
                      ),
                      TextSpan(
                        text: 'respaldo y restauración',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' que permiten proteger y recuperar los datos en caso de pérdida o cambio de dispositivo.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ColorAllContainer(
            color: Color.fromARGB(210, 231, 245, 122),
            title: 'Administración de riesgos',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'La '),
                      TextSpan(
                        text: 'popularidad arrolladora de Android',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' en el mercado global ha hecho que millones de usuarios gestionen ',
                      ),
                      TextSpan(
                        text: 'datos sensibles',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ', desde información bancaria y credenciales hasta ',
                      ),
                      TextSpan(
                        text: 'comunicaciones privadas',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ', a través de una simple aplicación instalada en su smartphone.',
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
                      TextSpan(text: 'La '),
                      TextSpan(
                        text: 'administración de riesgos en Android',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' consiste en identificar, evaluar y controlar los posibles riesgos que pueden afectar la ',
                      ),
                      TextSpan(
                        text: 'seguridad, el rendimiento o la estabilidad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' del sistema operativo y sus aplicaciones.\n',
                      ),
                      TextSpan(
                        text: 'Su objetivo',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' es prevenir daños, minimizar fallos y mantener la ',
                      ),
                      TextSpan(
                        text: 'integridad de los datos y del dispositivo',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '.'),
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
                            'Las amenazas en aplicaciones móviles, especialmente en ',
                      ),
                      TextSpan(
                        text: 'Android',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ', han evolucionado y exigen enfoques más rigurosos de ',
                      ),
                      TextSpan(
                        text: 'ciberseguridad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '. Auditar la seguridad ya no es una simple recomendación, sino una ',
                      ),
                      TextSpan(
                        text: 'necesidad esencial',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' que garantiza la confianza de los usuarios, el cumplimiento legal y la robustez de las aplicaciones.',
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
                            'Metodologías de referencia en auditorías de seguridad para Android:\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '• Definir objetivos y alcance: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Delimitar qué se va a auditar, qué recursos se usarán y los criterios de éxito.\n',
                      ),
                      TextSpan(
                        text: '• Recopilar información y análisis previo: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Obtener código fuente, bibliotecas y detalles arquitectónicos.\n',
                      ),
                      TextSpan(
                        text: '• Análisis estático: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Revisión del código sin ejecutar la app, buscando vulnerabilidades lógicas.\n',
                      ),
                      TextSpan(
                        text: '• Análisis dinámico: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Pruebas de la app en funcionamiento para observar su comportamiento frente a ataques.\n',
                      ),
                      TextSpan(
                        text: '• Pruebas de penetración controladas: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Simulación de ataques reales para validar la protección implementada.\n',
                      ),
                      TextSpan(
                        text: '• Informe de hallazgos y recomendaciones: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Documento final con vulnerabilidades, su gravedad y mejoras recomendadas.\n',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ColorAllContainer(
            color: Color(0x99CFAEDC),
            title: 'Seguridad',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'El propio '),
                      TextSpan(
                        text: 'Android',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' es consciente de la '),
                      TextSpan(
                        text: 'seguridad de sus usuarios',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '. Por ello, ha desarrollado diversas '),
                      TextSpan(
                        text: 'funciones',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' para brindar la '),
                      TextSpan(
                        text: 'máxima seguridad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' a los usuarios de Android.'),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: carouselSliderControllerSeguridad,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 400,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndexSeguridad = index;
                          });
                        },
                      ),
                      items: [
                        // 1. Google Play Protect
                        CarouselItem(
                          height: 400,
                          backgroundColor: Colors.transparent,
                          title: 'Google Play Protect',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Google Play Protect es una '),
                                  TextSpan(
                                    text: 'función de seguridad',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' integrada en '),
                                  TextSpan(
                                    text: 'Google Play Store',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' que analiza las aplicaciones en busca de ',
                                  ),
                                  TextSpan(
                                    text: 'malware y otras amenazas',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' antes de descargarlas. Solo permite instalar aplicaciones que sean ',
                                  ),
                                  TextSpan(
                                    text: 'seguras',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' y que sigan medidas de seguridad estándar.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 2. Cifrado de disco completo/basado en archivos
                        CarouselItem(
                          height: 400,
                          backgroundColor: Colors.transparent,
                          title: 'Cifrado de disco completo/basado en archivos',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Android incluye '),
                                  TextSpan(
                                    text: 'cifrado basado en archivos',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' y '),
                                  TextSpan(
                                    text: 'cifrado de disco completo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' como funciones de seguridad integradas. El cifrado basado en archivos protege archivos individuales, mientras que el cifrado de disco completo protege toda la ',
                                  ),
                                  TextSpan(
                                    text: 'partición del dispositivo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ', incluyendo el sistema operativo y los datos del usuario.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 3. Autenticación
                        CarouselItem(
                          height: 400,
                          backgroundColor: Colors.transparent,
                          title: 'Autenticación',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: 'Android ofrece varias opciones de ',
                                  ),
                                  TextSpan(
                                    text: 'autenticación',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ', como códigos '),
                                  TextSpan(
                                    text: 'PIN, patrones y contraseñas',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '. Las '),
                                  TextSpan(
                                    text:
                                        'cerraduras inteligentes, lugares, dispositivos confiables',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' y el '),
                                  TextSpan(
                                    text:
                                        'reconocimiento facial o de huellas dactilares',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' ayudan a mantener los dispositivos Android seguros frente a usuarios no autorizados.',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndexSeguridad,
                        count: 3,
                        effect: const SwapEffect(
                          type: SwapType.yRotation,
                          activeDotColor: Color.fromARGB(244, 140, 230, 200),
                        ),
                      ),
                    ),
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
