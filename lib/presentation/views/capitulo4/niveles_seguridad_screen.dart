import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NivelesSeguridadScreen extends StatelessWidget {
  static final name = 'nivelesSeguridad';
  const NivelesSeguridadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Niveles De Seguridad',
      content: NivelesSeguridadContent(),
    );
  }
}

class NivelesSeguridadContent extends StatefulWidget {
  const NivelesSeguridadContent({super.key});

  @override
  State<NivelesSeguridadContent> createState() => _NivelesSeguridadContentState();
}

class _NivelesSeguridadContentState extends State<NivelesSeguridadContent> {
  final Map<int, bool> _expandedTiles = {};

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColorAllContainer(
            color: Colors.transparent,
            title: '1. Nivel de usuario',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'El objetivo es '),
                      TextSpan(
                        text: 'proteger la información personal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' y el '),
                      TextSpan(
                        text: 'entorno local',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '.\n\nMecanismos principales:\n'),
                      TextSpan(
                        text: '• Autenticación: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'contraseñas, PIN, biometría, tokens o autenticación de dos factores.\n',
                      ),
                      TextSpan(
                        text: '• Autorización: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'control de acceso basado en roles (ACL, listas de permisos).\n',
                      ),
                      TextSpan(
                        text: '• Cifrado de archivos: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'protege datos almacenados en disco (por ejemplo, BitLocker, EFS).\n',
                      ),
                      TextSpan(
                        text: '• Gestión de sesiones: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'bloqueo automático, control de privilegios.\n',
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
                      TextSpan(text: 'Ejemplo: un usuario puede '),
                      TextSpan(
                        text: 'configurar permisos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' para que solo ciertos programas ('),
                      TextSpan(
                        text: 'firmados o de sitios confiables',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ') accedan a '),
                      TextSpan(
                        text: 'archivos personales',
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
            title: '2. Nivel de red',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Enfocado en '),
                      TextSpan(
                        text: 'proteger la comunicación entre sistemas',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' y evitar '),
                      TextSpan(
                        text: 'ataques externos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '.\n\nMecanismos clave:\n'),
                      TextSpan(
                        text: '• Firewalls y routers de seguridad: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'filtran tráfico no autorizado.\n'),
                      TextSpan(
                        text: '• Cifrado de red: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'protocolos como HTTPS, SSL/TLS, VPN para proteger datos en tránsito.\n',
                      ),
                      TextSpan(
                        text: '• Control de puertos: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'restringe conexiones a direcciones o rangos específicos.\n',
                      ),
                      TextSpan(
                        text: '• Sistemas de detección de intrusos (IDS/IPS): ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: 'monitorean tráfico sospechoso.\n'),
                      TextSpan(
                        text: '• Filtrado por IP o DNS: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'restringe comunicación a hosts autorizados.\n',
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
                      TextSpan(text: 'Ejemplo: una '),
                      TextSpan(
                        text: 'red corporativa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' puede limitar las conexiones entrantes solo a ',
                      ),
                      TextSpan(
                        text: 'IPs internas',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', usando '),
                      TextSpan(
                        text: 'autenticación de red segura',
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
            color: Colors.transparent,
            title: '3. Nivel empresarial',
            content: [
              ClearContainer(
                content: Text.rich(
                  TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'La seguridad se maneja de manera '),
                      TextSpan(
                        text: 'integral',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            ' para toda la organización.\n\nMedidas comunes:\n',
                      ),
                      TextSpan(
                        text: '• Políticas de seguridad corporativas: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'definen estándares de acceso, respaldo y privacidad.\n',
                      ),
                      TextSpan(
                        text: '• Gestión centralizada de usuarios: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'control de privilegios mediante Active Directory o LDAP.\n',
                      ),
                      TextSpan(
                        text:
                            '• Copias de seguridad y recuperación ante desastres.\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '• Auditorías y monitoreo: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'registros de actividad y análisis de vulnerabilidades.\n',
                      ),
                      TextSpan(
                        text: '• Seguridad física: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            'control de acceso a centros de datos y servidores.\n',
                      ),
                      TextSpan(
                        text: '• Cifrado de extremo a extremo: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'protege datos durante todo su ciclo de vida.\n',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          ColorAllContainer(
            color: Colors.greenAccent,
            title: 'Resumen de niveles de seguridad',
            content: [
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: nivelesItems.length,
                itemBuilder: (BuildContext context, int index) {
                  final termino = nivelesItems[index];
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
                          termino.nivel,
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
                                  'Objetivo principal:',
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
                                  'Ejemplos de medidas:',
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
        ],
      ),
    );
  }
}

final List<NivelItem> nivelesItems = [
  NivelItem(
    nivel: 'Usuario',
    funcPrincipal:
        'Protección de información personal y autenticación.',
    caractClave: 'Contraseñas, cifrado de archivos, permisos.',
  ),
  NivelItem(
    nivel: 'Red',
    funcPrincipal:
        'Evitar accesos y ataques externos.',
    caractClave:
        'Firewall, VPN, TLS, control de puertos.',
  ),
  NivelItem(
    nivel: 'Empresa',
    funcPrincipal:
        'Seguridad integral y cumplimiento normativo.',
    caractClave: 'Políticas globales, auditorías, backups, control de acceso físico.',
  ),
];

class NivelItem {
  final String nivel;
  final String funcPrincipal;
  final String caractClave;

  NivelItem({
    required this.nivel,
    required this.funcPrincipal,
    required this.caractClave,
  });
}