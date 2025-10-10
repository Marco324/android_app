import 'package:android_app/presentation/views/screens.dart';
import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Android', content: PresentacionScreenView());
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
                      color: Color.fromARGB(153, 61, 220, 133),
                      width: 8,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18, top: 12, bottom: 20),
                    child: Text(
                      'El sistema operativo Android es el componente principal de cualquier dispositivo Android. Es el software que gestiona todas las funciones del dispositivo, desde la interfaz de usuario hasta la conectividad con las redes y el funcionamiento de las aplicaciones.',
                      style: textTheme.bodyLarge,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -2,
                  right: 24,
                  child: Icon(
                    Icons.android,
                    color: Color.fromARGB(153, 61, 220, 133),
                    size: 40,
                  )
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: screenWidth,
              child: Text('Datos Interesantes', style: textTheme.titleLarge, textAlign: TextAlign.start,)
            ),
            SizedBox(
              height: 20,
            ),
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
