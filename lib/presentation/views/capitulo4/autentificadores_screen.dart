import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutentificadoresScreen extends StatelessWidget {
  static final name = 'autentificadores';
  const AutentificadoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Autentificadores',
      content: AutentificadoresContent(),
    );
  }
}

class AutentificadoresContent extends StatefulWidget {
  const AutentificadoresContent({super.key});

  @override
  State<AutentificadoresContent> createState() =>
      _AutentificadoresContentState();
}

class _AutentificadoresContentState extends State<AutentificadoresContent> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  int activeIndex = 0;
  final CarouselSliderController carouselSliderControllerImportancia =
      CarouselSliderController();
  int activeIndexImportancia = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColorAllContainer(
            color: Colors.greenAccent,
            title: '¿Qué son?',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Un '),
                      TextSpan(
                        text: 'autenticador',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' es un mecanismo o sistema encargado de ',
                      ),
                      TextSpan(
                        text: 'verificar la identidad',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' de un usuario o dispositivo antes de conceder acceso a ',
                      ),
                      TextSpan(
                        text: 'recursos protegidos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '. En términos simples, responde a la pregunta: ¿Eres realmente tú quien intenta entrar?',
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
                      TextSpan(text: 'Existen tres factores principales de '),
                      TextSpan(
                        text: 'autenticación',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' que pueden combinarse de distintas formas:\n\n',
                      ),
                      TextSpan(
                        text: '• Algo que el usuario sabe: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'una contraseña, PIN o patrón.\n'),
                      TextSpan(
                        text: '• Algo que el usuario tiene: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'un token, dispositivo o llave física.\n'),
                      TextSpan(
                        text: '• Algo que el usuario es: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'sus rasgos biométricos (huella, rostro, iris, voz, etc.).\n',
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
                      TextSpan(text: 'La elección del '),
                      TextSpan(
                        text: 'autenticador',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' depende del '),
                      TextSpan(
                        text: 'nivel de seguridad requerido',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', la '),
                      TextSpan(
                        text: 'comodidad del usuario',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' y la '),
                      TextSpan(
                        text: 'capacidad del dispositivo',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '.'),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ColorAllContainer(
            color: Colors.blueAccent,
            title: 'Tipos de autentificadores en Android?',
            content: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: carouselSliderController,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 730,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                      ),
                      items: [
                        // 1. Contraseña, PIN o patrón
                        CarouselItem(
                          height: 730,
                          backgroundColor: Colors.transparent,
                          title: '1. Contraseña, PIN o patrón',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Este es el método de autenticación más ',
                                  ),
                                  TextSpan(
                                    text: 'tradicional',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' y ampliamente soportado. El usuario introduce una clave secreta que solo él conoce para desbloquear su dispositivo o ingresar a una aplicación.\n\nEn Android, se gestiona mediante el componente ',
                                  ),
                                  TextSpan(
                                    text: 'Gatekeeper',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ', que valida intentos de autenticación y controla bloqueos por fallos repetidos.\n\nVentajas:\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '• Compatible con todos los dispositivos Android.\n',
                                  ),
                                  TextSpan(
                                    text: '• No requiere hardware adicional.\n',
                                  ),
                                  TextSpan(text: 'Desventajas:\n'),
                                  TextSpan(
                                    text:
                                        '• Más vulnerable a ataques de fuerza bruta o ingeniería social.\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '• Menos conveniente para el usuario moderno.\n',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 2. Autenticación biométrica
                        CarouselItem(
                          height: 730,
                          backgroundColor: Colors.transparent,
                          title: '2. Autenticación biométrica',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Se basa en características físicas o de comportamiento del usuario, como ',
                                  ),
                                  TextSpan(
                                    text:
                                        'huellas dactilares, reconocimiento facial o escaneo de iris',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '. Android clasifica los biométricos en tres niveles:\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '• BIOMETRIC_STRONG (Clase 3): Reconocimiento facial avanzado y huellas con hardware seguro.\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '• BIOMETRIC_WEAK (Clase 2): Seguridad aceptable, menos estricta.\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '• BIOMETRIC_CONVENIENCE (Clase 1): Prioriza comodidad sobre seguridad.\n\n',
                                  ),
                                  TextSpan(
                                    text:
                                        'Ventajas:\n• Rápida y cómoda para el usuario.\n• Difícil de falsificar con hardware de calidad.\nDesventajas:\n• Requiere sensores compatibles.\n• No todos los usuarios pueden o quieren registrar biometría.\n',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 3. Autenticadores basados en dispositivo o token
                        CarouselItem(
                          height: 730,
                          backgroundColor: Colors.transparent,
                          title:
                              '3. Autenticadores basados en dispositivo o token',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Se basan en algo que el usuario posee, como una ',
                                  ),
                                  TextSpan(
                                    text:
                                        'llave de seguridad física, token o app generadora de códigos temporales (TOTP)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '. Ejemplos:\n'),
                                  TextSpan(
                                    text:
                                        '• Google Authenticator o Microsoft Authenticator: Generan contraseñas de un solo uso.\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '• Llaves FIDO2 o YubiKey: Conectadas por USB o NFC.\n',
                                  ),
                                  TextSpan(
                                    text:
                                        '• Passkeys: Reemplazan contraseñas usando criptografía de clave pública.\n\n',
                                  ),
                                  TextSpan(
                                    text:
                                        'Ventajas:\n• Altísima seguridad si se usa correctamente.\n• Evita riesgos de phishing o robo de contraseñas.\nDesventajas:\n• Puede ser más complejo de implementar.\n• El usuario puede perder el token o dispositivo.\n',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 4. Autenticación multifactor o híbrida
                        CarouselItem(
                          height: 730,
                          backgroundColor: Colors.transparent,
                          title: '4. Autenticación multifactor o híbrida',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'Combina dos o más factores de autenticación. Ejemplos:\n',
                                  ),
                                  TextSpan(
                                    text: '• Contraseña + huella digital\n',
                                  ),
                                  TextSpan(
                                    text: '• Token + reconocimiento facial\n',
                                  ),
                                  TextSpan(
                                    text: '• PIN + código de un solo uso\n\n',
                                  ),
                                  TextSpan(
                                    text:
                                        'En Android se usa especialmente en apps bancarias, gubernamentales o corporativas.\n\n',
                                  ),
                                  TextSpan(
                                    text:
                                        'Ventajas:\n• Incrementa significativamente la seguridad.\n• Reduce el riesgo de acceso no autorizado aunque un factor sea comprometido.\nDesventajas:\n• Puede hacer el inicio de sesión más lento o complejo.\n• Requiere coordinación entre diferentes sistemas o APIs.\n',
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
                  ],
                ),
              ),
            ],
          ),
          ColorAllContainer(
            color: Color.fromARGB(233, 179, 136, 255),
            title: 'Integración en Android',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(
                        text: 'El sistema Android implementa un flujo de ',
                      ),
                      TextSpan(
                        text: 'autenticación',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' bien estructurado:\n\n'),
                      TextSpan(
                        text: '1. El usuario presenta su ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'credencial (PIN, patrón, biometría, etc.)\n',
                      ),
                      TextSpan(
                        text: '2. Hardware Abstraction Layer (HAL): ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'procesa y valida la información, conectando el hardware (sensor, teclado, cámara) con el sistema.\n',
                      ),
                      TextSpan(
                        text: '3. AuthToken: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'Si la verificación es exitosa, el sistema genera un token de autenticación que autoriza el acceso o la operación solicitada.\n',
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
                            'Para los desarrolladores, Android ofrece herramientas como:\n\n',
                      ),
                      TextSpan(
                        text: '• BiometricPrompt API: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'simplifica el uso de autenticación biométrica sin depender del tipo de sensor.\n',
                      ),
                      TextSpan(
                        text: '• Android Keystore System: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'permite almacenar claves criptográficas de manera segura.\n',
                      ),
                      TextSpan(
                        text: '• AccountManager y Authenticator Framework: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'facilitan la gestión de cuentas y tokens de acceso para aplicaciones.\n',
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
                      TextSpan(text: 'Las buenas prácticas incluyen '),
                      TextSpan(
                        text: 'no almacenar contraseñas en texto plano',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', usar '),
                      TextSpan(
                        text: 'cifrado AES o RSA',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' para datos sensibles, y '),
                      TextSpan(
                        text: 'verificar la integridad del dispositivo',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' antes de autorizar operaciones críticas.',
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
            title: 'Importancia',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Entender los '),
                      TextSpan(
                        text: 'tipos de autenticación en Android',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' no solo es una cuestión técnica, sino también ',
                      ),
                      TextSpan(
                        text: 'estratégica',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '. Los motivos principales son:'),
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
                      carouselController: carouselSliderControllerImportancia,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        height: 280,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndexImportancia= index;
                          });
                        },
                      ),
                      items: [
                        // 1. Elección adecuada
                        CarouselItem(
                          height: 280,
                          backgroundColor: Colors.transparent,
                          title: '1. Elección adecuada según el público',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: 'No todos los usuarios disponen de ',
                                  ),
                                  TextSpan(
                                    text: 'sensores biométricos o tokens',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ', por lo que la app debe ofrecer ',
                                  ),
                                  TextSpan(
                                    text: 'alternativas universales',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' como contraseñas o PIN.\n'),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 2. Equilibrio entre seguridad y UX
                        CarouselItem(
                          height: 280,
                          backgroundColor: Colors.transparent,
                          title:
                              '2. Equilibrio entre seguridad y experiencia de usuario',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Un sistema demasiado '),
                                  TextSpan(
                                    text: 'estricto',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' puede frustrar al usuario; uno demasiado ',
                                  ),
                                  TextSpan(
                                    text: 'laxo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' puede poner en riesgo sus datos. El equilibrio es clave.\n',
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 3. Cumplimiento de políticas
                        CarouselItem(
                          height: 280,
                          backgroundColor: Colors.transparent,
                          title: '3. Cumplimiento de políticas y normativas',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text:
                                        'En entornos empresariales o financieros, se exige cumplir con estándares como ',
                                  ),
                                  TextSpan(
                                    text: 'FIDO2, ISO/IEC 30107',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' o regulaciones de '),
                                  TextSpan(
                                    text: 'autenticación fuerte (SCA)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n'),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),

                        // 4. Protección de la información
                        CarouselItem(
                          height: 280,
                          backgroundColor: Colors.transparent,
                          title: '4. Protección de la información',
                          content: [
                            Text.rich(
                              TextSpan(
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: [
                                  TextSpan(text: 'Una '),
                                  TextSpan(
                                    text: 'autenticación mal implementada',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' puede abrir la puerta a vulnerabilidades graves, como ',
                                  ),
                                  TextSpan(
                                    text:
                                        'robo de sesiones, phishing o suplantación de identidad',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: '.\n'),
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
                        borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndexImportancia,
                        count: 4,
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
