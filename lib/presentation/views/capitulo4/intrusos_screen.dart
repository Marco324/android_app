import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IntrusosScreen extends StatelessWidget {
  static final name = 'intrusos';
  const IntrusosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Intrusos', content: IntrusosContent());
  }
}

class IntrusosContent extends StatelessWidget {
  const IntrusosContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColorAllContainer(
            color: Color.fromARGB(210, 231, 245, 122),
            title: 'Intrusos',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Un '),
                      TextSpan(
                        text: 'intruso',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' es toda persona que obtiene '),
                      TextSpan(
                        text: 'acceso no autorizado',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' a información o programas dentro de un sistema.',
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
                      TextSpan(text: 'Existen distintos perfiles de '),
                      TextSpan(
                        text: 'intrusos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ', entre los más comunes se encuentran:\n\n',
                      ),
                      TextSpan(
                        text: '• Cracker: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'individuo que vulnera la seguridad de sistemas con fines ilícitos.\n',
                      ),
                      TextSpan(
                        text: '• Defacer: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'se dedica a modificar o alterar sitios web.\n',
                      ),
                      TextSpan(
                        text: '• Script kiddie o script boy: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'usuarios con conocimientos limitados que emplean herramientas creadas por otros para atacar sistemas.\n',
                      ),
                      TextSpan(
                        text: '• Viruxer: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'persona que crea o propaga virus informáticos.\n',
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
                      TextSpan(text: 'Los '),
                      TextSpan(
                        text: 'atacantes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' suelen emplear técnicas de '),
                      TextSpan(
                        text: 'ingeniería social',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', es decir, estrategias de '),
                      TextSpan(
                        text: 'engaño',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' para convencer a los usuarios de instalar ',
                      ),
                      TextSpan(
                        text: 'aplicaciones maliciosas',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' o conceder '),
                      TextSpan(
                        text: 'permisos indebidos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' en sus dispositivos Android.'),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ColorAllContainer(
            color: Colors.blueAccent,
            title: 'Programas Maliciosos',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Se denominan '),
                      TextSpan(
                        text: 'programas maliciosos (malware)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' a los programas diseñados para '),
                      TextSpan(
                        text: 'dañar, alterar o aprovecharse indebidamente',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' de los recursos de un sistema. Su propósito puede ir desde ',
                      ),
                      TextSpan(
                        text: 'robar información',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' hasta abrir el acceso a '),
                      TextSpan(
                        text: 'intrusos',
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
                        text: 'Entre los principales tipos se encuentran:\n\n',
                      ),
                      TextSpan(
                        text: '• Virus informático: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'se propaga insertándose en otros programas.\n',
                      ),
                      TextSpan(
                        text: '• Gusano informático: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'se replica por sí mismo a través de redes.\n',
                      ),
                      TextSpan(
                        text: '• Troyano: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'aparenta ser un programa útil, pero ejecuta acciones ocultas y dañinas.\n',
                      ),
                      TextSpan(
                        text: '• Bomba lógica: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'se activa al cumplirse una condición específica, como una fecha.\n',
                      ),
                      TextSpan(
                        text: '• Programa espía (Spyware): ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'recopila información del usuario sin su consentimiento.\n',
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
                      TextSpan(text: 'En los últimos años, la '),
                      TextSpan(
                        text: 'ciberdelincuencia',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' ha evolucionado hacia ataques más elaborados, que ya no se limitan al uso de ',
                      ),
                      TextSpan(
                        text: 'troyanos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', sino que buscan manipular la '),
                      TextSpan(
                        text: 'información y los datos de los usuarios',
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
            color: Colors.greenAccent,
            title: 'Amenazas Específicas en la Plataforma Android',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(
                        text:
                            'Dentro del ecosistema Android se han identificado múltiples variantes de malware y aplicaciones maliciosas, entre las cuales destacan:\n\n',
                      ),
                      TextSpan(
                        text: '• Trojan-SMS.AndroidOS.FakePlayer.a: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'el primer troyano detectado en Android. Se hacía pasar por una aplicación de medios, pero enviaba mensajes SMS a números de pago sin que el usuario lo supiera.\n',
                      ),
                      TextSpan(
                        text: '• Geinimi: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'considerado uno de los malware más sofisticados. Roba datos personales y puede controlar el dispositivo infectado, integrándolo a una red de equipos comprometidos (botnet).\n',
                      ),
                      TextSpan(
                        text: '• DroidDream: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'llevó a Google a eliminar más de 50 aplicaciones de su tienda oficial. Convierte el dispositivo en un “zombi” y aprovecha fallos de seguridad para obtener privilegios de administrador.\n',
                      ),
                      TextSpan(
                        text: '• DroidDream Light: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'versión más avanzada de DroidDream. Puede ejecutarse automáticamente sin la intervención del usuario, activándose con eventos comunes como llamadas o mensajes.\n',
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
                      TextSpan(text: 'Android está diseñado para '),
                      TextSpan(
                        text: 'reducir los daños',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' causados por aplicaciones de terceros y limitar el alcance de los ataques, aun cuando los usuarios sean engañados para instalar ',
                      ),
                      TextSpan(
                        text: 'software malicioso',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '.\n\nPor último, las aplicaciones que obtienen ',
                      ),
                      TextSpan(
                        text: 'acceso de superusuario (root)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' representan un riesgo mayor, ya que pueden acceder a todos los datos y programas del sistema, incrementando las posibilidades de ataques o fallos de seguridad.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
