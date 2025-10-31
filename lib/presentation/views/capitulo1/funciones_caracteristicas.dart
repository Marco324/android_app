import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FunCaractScreen extends StatelessWidget {
  static const String name = 'funciones_caract';
  const FunCaractScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Funciones y Características',
      content: _FunCaractContent(),
    );
  }
}

class _FunCaractContent extends StatelessWidget {
  const _FunCaractContent();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            FuncionesContent(textTheme: textTheme, screenWidth: screenWidth),

            SizedBox(height: 40),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Características', style: textTheme.headlineSmall),
                SizedBox(height: 24),

                SizedBox(
                  width: screenWidth,
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: Color(0x99FFD5C2),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Personalización y libertad',
                                style: textTheme.titleMedium,
                              ),
                              Text(
                                'Android permite personalizar la interfaz (widgets, temas, launchers), y posibilita la instalación de aplicaciones desde fuentes externas, lo cual en otros sistemas está restringido. ',
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 12),

                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 240,
                              decoration: BoxDecoration(
                                color: Color(0x99C8C4E0),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.2),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Multitarea real',
                                      style: textTheme.titleMedium,
                                    ),
                                    Text(
                                      'Los usuarios pueden mantener abiertas varias aplicaciones y cambiar entre ellas con fluidez. Por ejemplo, reproducir música mientras se navega en la web o chatea.',
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 240,
                              decoration: BoxDecoration(
                                color: Color(0x99C8C4E0),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.2),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    Text(
                                      'Notificaciones interactivas',
                                      style: textTheme.titleMedium,
                                    ),
                                    Text(
                                      'Las notificaciones permiten respuestas rápidas sin abrir la aplicación, interacción desde la barra de notificaciones, acciones directas.',
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),

                      Container(
                        height: 116,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(219, 255, 249, 196),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Integración con servicios de Google',
                                style: textTheme.titleMedium,
                              ),
                              Text(
                                'Android trae muchos servicios integrados como Google Maps, Gmail, Drive, Play Store, asistente de voz, sincronización en la nube.',
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 12),

                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 226,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(173, 128, 227, 255),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.2),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    Text(
                                      'Actualizaciones frecuentes de seguridad',
                                      style: textTheme.titleMedium,
                                    ),
                                    Text(
                                      'Google y fabricantes liberan parches para vulnerabilidades, mejorando la seguridad del sistema.',
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 226,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(173, 128, 227, 255),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.2),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    Text(
                                      'Ecosistema amplio de apps',
                                      style: textTheme.titleMedium,
                                    ),
                                    Text(
                                      'Gracias a su popularidad, existe una vasta oferta de aplicaciones móviles que aprovechan las capacidades del sistema.',
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),

                      Container(
                        height: 140,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(138, 211, 237, 117),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Eficiencia energética',
                                style: textTheme.titleMedium,
                              ),
                              Text(
                                'Android gestiona el uso de energía, suspende procesos cuando no se usan, controla actividades en segundo plano para prolongar la batería.',
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}

class FuncionesContent extends StatelessWidget {
  const FuncionesContent({
    super.key,
    required this.textTheme,
    required this.screenWidth,
  });

  final TextTheme textTheme;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Funciones', style: textTheme.headlineSmall),
        SizedBox(height: 12),
        Text(
          'Algunas de las funciones principales que Android debe cumplir para operar correctamente más relevantes:',
          style: textTheme.bodyLarge,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 24),

        SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              Container(
                height: 180,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Color.fromARGB(173, 128, 227, 255),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Control de entrada/salida (I/O)',
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        'Gestiona la comunicación entre las aplicaciones y los dispositivos físicos (almacenamiento, pantalla, sensores) traduciendo las peticiones de software a instrucciones de hardware a través del kernel y el HAL (Hardware Abstraction Layer).',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),

              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 364,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(138, 211, 237, 117),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Administración de hardware / controladores',
                              style: textTheme.titleMedium,
                            ),
                            Text(
                              'Maneja todos los componentes físicos del dispositivo (cámara, red, GPS, etc.) mediante controladores (drivers) y el kernel. El HAL permite que los fabricantes desarrollen hardware compatible sin modificar el sistema operativo central.',
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 364,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(138, 211, 237, 117),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Comunicaciones y servicios de red',
                              style: textTheme.titleMedium,
                            ),
                            Text(
                              'Facilita que las apps envíen y reciban datos utilizando las conexiones de red disponibles (WiFi, datos móviles, Bluetooth). Incluye la gestión de protocolos, conexiones y la optimización del uso de datos/energía.',
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              Container(
                height: 180,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Color(0x99FFD5C2),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Interfaz de usuario / gestión de ventanas / gráficos',
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        'Suministra los elementos visuales (widgets) y los mecanismos necesarios para que las apps dibujen y se muestren en la pantalla. Administra los eventos táctiles, las animaciones, transiciones y la orientación de la interfaz.',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 12),

              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 464,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(219, 255, 249, 196),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Seguridad y control de permisos',
                              style: textTheme.titleMedium,
                            ),
                            Text(
                              'Aísla las aplicaciones en entornos (sandboxes) para evitar el acceso no autorizado a datos o recursos. Requiere que las apps soliciten permisos para funciones sensibles y usa mecanismos como el arranque verificado y el cifrado de datos para proteger el sistema.',
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 464,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(219, 255, 249, 196),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.2),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Servicios del sistema y APIs comunes',
                              style: textTheme.titleMedium,
                            ),
                            Text(
                              'Proporciona un conjunto de servicios esenciales integrados (ubicación, notificaciones, sensores, temporizadores) y un marco (framework) de APIs que los desarrolladores utilizan para acceder a dichas funcionalidades sin interactuar directamente con el hardware.',
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              Container(
                height: 180,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Color(0x99C8C4E0),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Actualizaciones del sistema y mantenimiento',
                        style: textTheme.titleMedium,
                      ),
                      Text(
                        'Se encarga de la instalación y administración de parches de seguridad, nuevas versiones del sistema operativo y la migración de datos. También realiza el mantenimiento interno, limpieza de recursos y la optimización continua.',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
