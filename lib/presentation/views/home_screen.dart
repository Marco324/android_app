import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Android', content: HomeScreenView());
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      strokeAlign: BorderSide.strokeAlignInside,
                      color: Color.fromARGB(153, 61, 220, 133),
                      width: 14,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                      right: 18,
                      top: 12,
                      bottom: 20,
                    ),
                    child: Text.rich(
                      style: textTheme.bodyLarge,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Introducción\n\n',
                            style: textTheme.titleLarge,
                          ),
                          TextSpan(
                            text:
                                'Este proyecto tiene como finalidad el desarrollo de una aplicación móvil haciendo uso del sistema operativo ',
                          ),
                          TextSpan(
                            text: 'Android',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ', esta aplicación busca no solo mostrar el funcionamiento práctico de una aplicación sino también profundizar e indagar en los principios técnicos que hacen posible la operación del sistema.\n\n',
                          ),
                          TextSpan(text: 'Como tal, '),
                          TextSpan(
                            text: 'Android',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ' es actualmente uno de los sistemas operativos más utilizados en el mundo, por las grandes ventajas que nos ofrece como su versatilidad, código abierto y compatibilidad con una amplia gama de dispositivos móviles. Detrás de la interfaz amigable que tiene ',
                          ),
                          TextSpan(
                            text: 'Android',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ' se encuentra una compleja estructura que se basa en ',
                          ),
                          TextSpan(
                            text: 'Linux',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ', donde intervienen diversos elementos como el ',
                          ),
                          TextSpan(
                            text: 'kernel',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ', la gestión de memoria RAM, los procesos concurrentes y mecanismos de seguridad que protegen al usuario frente a amenazas como virus o malware.\n\n',
                          ),
                          TextSpan(
                            text: 'Android',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' destaca por implementar un modelo de ',
                          ),
                          TextSpan(
                            text: 'arquitectura por capas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ', donde cada nivel cumple una función específica. En la base se encuentra el ',
                          ),
                          TextSpan(
                            text: 'kernel de Linux',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ', encargado de administrar los recursos fundamentales del dispositivo, como la CPU, la memoria y los controladores de hardware.\n\n',
                          ),
                          TextSpan(
                            text:
                                'A través de esta aplicación buscamos integrar los conocimientos teóricos adquiridos sobre ',
                          ),
                          TextSpan(
                            text: 'sistemas operativos',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ', '),
                          TextSpan(
                            text: 'arquitectura de software',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ', '),
                          TextSpan(
                            text: 'seguridad informática',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' y '),
                          TextSpan(
                            text: 'programación concurrente',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ', aplicándolos en un entorno real y actual.',
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 24,
                  child: Icon(
                    Icons.android,
                    color: Color.fromARGB(153, 61, 220, 133),
                    size: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            SizedBox(
              width: screenWidth,
              child: Text(
                'Datos Interesantes',
                style: textTheme.titleLarge,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 20),
            PillModificado(
              screenWidth: screenWidth,
              color: const Color.fromARGB(86, 61, 220, 133),
              height: 200,
              width: screenWidth * 0.7,
              alignment: MainAxisAlignment.start,
              leftPillPadding: 16,
              rightPillPadding: 40,
              pillContent: Text(
                'Android fue creado en 2003 por Andy Rubin, Rich Miner, Nick Sears y Chris White en California. Originalmente estaba pensado para cámaras digitales, pero luego se enfocaron en teléfonos móviles.',
                style: textTheme.labelLarge,
              ),
              imagen: Image(image: AssetImage('assets/robot.png')),
              rightImagen: -30,
            ),

            SizedBox(height: 12),

            PillModificado(
              screenWidth: screenWidth,
              color: const Color.fromARGB(86, 61, 220, 133),
              height: 200,
              width: screenWidth * 0.7,
              alignment: MainAxisAlignment.end,
              leftPillPadding: 40,
              rightPillPadding: 16,
              pillContent: Text(
                'En 2005, Google compró Android Inc., lo que permitió el desarrollo de un sistema operativo móvil más potente y abierto.',
                style: textTheme.labelLarge,
                textAlign: TextAlign.end,
              ),
              imagen: Image(
                image: AssetImage('assets/googleLogo.png'),
                width: 130,
              ),
              leftImagen: 10,
            ),

            SizedBox(height: 12),

            PillModificado(
              screenWidth: screenWidth,
              color: const Color.fromARGB(86, 61, 220, 133),
              height: 200,
              width: screenWidth * 0.7,
              alignment: MainAxisAlignment.start,
              leftPillPadding: 16,
              rightPillPadding: 40,
              pillContent: Text(
                'Android está construido sobre el kernel de Linux, lo que le permite gestionar recursos del dispositivo de manera eficiente y ofrecer seguridad y estabilidad.',
                style: textTheme.labelLarge,
              ),
              imagen: Image(image: AssetImage('assets/linuxLogo.png')),
              rightImagen: -12,
            ),

            SizedBox(height: 12),

            PillModificado(
              screenWidth: screenWidth,
              color: const Color.fromARGB(86, 61, 220, 133),
              height: 200,
              width: screenWidth * 0.7,
              alignment: MainAxisAlignment.end,
              leftPillPadding: 30,
              rightPillPadding: 16,
              pillContent: Text(
                'Android es principalmente de código abierto (AOSP, Android Open Source Project), lo que permite a fabricantes y desarrolladores personalizarlo para distintos dispositivos.',
                style: textTheme.labelLarge,
                textAlign: TextAlign.end,
              ),
              imagen: Image(
                image: AssetImage('assets/openSourceAndroid.png'),
                width: 185,
              ),
              leftImagen: -18,
            ),

            SizedBox(height: 12),

            PillModificado(
              screenWidth: screenWidth,
              color: const Color.fromARGB(86, 61, 220, 133),
              height: 200,
              width: screenWidth * 0.7,
              alignment: MainAxisAlignment.start,
              leftPillPadding: 16,
              rightPillPadding: 60,
              pillContent: Text(
                'Android prioriza la memoria y recursos mediante un sistema de lifecycle de aplicaciones, matando procesos en segundo plano si es necesario.',
                style: textTheme.labelLarge,
              ),
              imagen: Image(image: AssetImage('assets/ram.png')),
              rightImagen: -10,
            ),

            SizedBox(height: 12),

            PillModificado(
              screenWidth: screenWidth,
              color: const Color.fromARGB(86, 61, 220, 133),
              height: 200,
              width: screenWidth * 0.7,
              alignment: MainAxisAlignment.end,
              leftPillPadding: 30,
              rightPillPadding: 16,
              pillContent: Text(
                'Android puede correr en dispositivos con ARM, ARM64, x86 y MIPS, gracias a su capa de abstracción de hardware (HAL, Hardware Abstraction Layer).',
                style: textTheme.labelLarge,
                textAlign: TextAlign.end,
              ),
              imagen: Image(image: AssetImage('assets/cpu2.png'), width: 120),
              leftImagen: -3,
            ),

            SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
