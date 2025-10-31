import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class VirusScreen extends StatelessWidget {
  static final name = 'virus';
  const VirusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Malware', content: VirusContent());
  }
}

class VirusContent extends StatefulWidget {
  const VirusContent({super.key});

  @override
  State<VirusContent> createState() => _VirusContentState();
}

class _VirusContentState extends State<VirusContent> {
  final Map<int, bool> _expandedTiles = {};

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título general
          Text.rich(
            TextSpan(
              style: textTheme.bodyLarge,
              children: [
                TextSpan(text: 'El panorama moderno del '),
                TextSpan(
                  text: 'malware',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ' ha evolucionado desde simples experimentos hasta operaciones criminales sofisticadas que emplean técnicas de ',
                ),
                TextSpan(
                  text: 'evasión y persistencia',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      ', representando una amenaza crítica para la seguridad informática global.',
                ),
              ],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 24),

          // ExpansionTiles de malware
          ...malwareTiles(context),
        ],
      ),
    );
  }

  List<Widget> malwareTiles(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final List<Map<String, dynamic>> malwareData = [
      {
        'title': 'Virus Informáticos',
        'content': TextSpan(
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text: 'Los virus representan la forma más tradicional de ',
            ),
            TextSpan(
              text: 'malware',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ', caracterizándose por su capacidad de '),
            TextSpan(
              text: 'auto-replicación',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  ' al infectar archivos ejecutables. Un virus de computadora se adjunta a programas legítimos para modificar su comportamiento o dañar el sistema.\n\n',
            ),
            TextSpan(
              text: 'Mecanismos de Operación:\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  '• Infección por archivos: Archivos ejecutables (.exe, .com, .dll)\n• Virus de boot sector: Infectan el sector de arranque del sistema\n• Virus macro: Se propagan a través de documentos con macros\n• Técnicas de polimorfismo y metamorfismo: Cambian su código para evadir detección\n',
            ),
          ],
        ),
      },
      {
        'title': 'Gusanos Informáticos (Worms)',
        'content': TextSpan(
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text:
                  'Los gusanos se propagan automáticamente a través de redes sin necesidad de infectar archivos anfitriones, explotando ',
            ),
            TextSpan(
              text: 'vulnerabilidades de software',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text:
                  '.\nVectores de propagación:\n• Correo electrónico\n• Redes\n• Dispositivos extraíbles (USB)\n• Mensajería instantánea\n• Redes sociales\n',
            ),
          ],
        ),
      },
      {
        'title': 'Troyanos (Trojans)',
        'content': TextSpan(
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text:
                  'Se ocultan como aplicaciones útiles mientras ejecutan funciones maliciosas en segundo plano. No se replican por sí mismos, dependen del ',
            ),
            TextSpan(
              text: 'engaño',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: ' para distribuirse.\n\nCategorías:\n'),
            TextSpan(
              text:
                  '• Troyanos de acceso remoto (RAT): Control completo del sistema\n• Troyanos bancarios: Roban credenciales financieras\n• Troyanos de denegación de servicio: Convertir sistemas en zombies para DDoS\n• Troyanos destructivos: Borran o corrompen datos\n',
            ),
          ],
        ),
      },
      {
        'title': 'Spyware',
        'content': TextSpan(
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text:
                  'Monitorea y recopila información del usuario sin su consentimiento.\n\nFuncionalidades:\n',
            ),
            TextSpan(
              text:
                  '• Keyloggers: Capturan pulsaciones de teclado\n• Screen scrapers: Capturas de pantalla periódicas\n• Rastreo de navegación: Monitoreo de hábitos de internet\n• Robo de credenciales: Recupera contraseñas y cookies\n',
            ),
          ],
        ),
      },
      {
        'title': 'Adware',
        'content': TextSpan(
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text:
                  'Muestra publicidad intrusiva y no deseada, generando ingresos y a veces comportamientos invasivos.\n\nCaracterísticas:\n',
            ),
            TextSpan(
              text:
                  '• Injectores de anuncios: Publicidad en apps legítimas\n• Redireccionadores de navegador: Modifican resultados de búsqueda\n• Toolbars no solicitadas\n• Bundle de software: Se instalan junto con apps legítimas\n',
            ),
          ],
        ),
      },
      {
        'title': 'Ransomware',
        'content': TextSpan(
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text:
                  'Secuestra y cifra los archivos de la víctima, exigiendo rescate. Modelo criminal lucrativo.\n\nMecanismos:\n',
            ),
            TextSpan(
              text:
                  '• Cifrado fuerte: RSA-2048, AES-256\n• Técnicas de evasión: Ofuscación de ejecución\n• Propagación lateral: Redes corporativas\n• Doble extorsión: Robo de datos antes de cifrado\n',
            ),
          ],
        ),
      },
      {
        'title': 'Rootkits',
        'content': TextSpan(
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text:
                  'Modifican el sistema operativo para ocultar presencia y actividades maliciosas.\n\nNiveles:\n',
            ),
            TextSpan(
              text:
                  '• Modo usuario: Intercepta llamadas a API\n• Modo kernel: Modifica estructuras del kernel\n• Bootkit: Infecta el proceso de arranque\n• Firmware: Se almacena en hardware\n',
            ),
          ],
        ),
      },
      {
        'title': 'Otras Categorías de Malware',
        'content': TextSpan(
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text:
                  'Incluye amenazas adicionales como botnets, logic bombs y malware móvil.\n\nTipos:\n',
            ),
            TextSpan(
              text:
                  '• Botnets: DDoS, spam, minería de criptomonedas, robo de credenciales\n• Logic Bombs: Activación por condiciones específicas\n• Mobile Malware: SMS troyanos, spyware móvil\n',
            ),
          ],
        ),
      },
    ];

    return malwareData.asMap().entries.map((entry) {
      int index = entry.key;
      Map<String, dynamic> item = entry.value;
      bool isExpanded = _expandedTiles[index] ?? false;

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
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            title: Text(
              item['title'],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            trailing: Icon(
              isExpanded
                  ? Icons.minimize_rounded
                  : Icons.add_circle_outline_rounded,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: item['content'],
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
            onExpansionChanged: (expanded) {
              setState(() {
                _expandedTiles[index] = expanded;
              });
            },
          ),
        ),
      );
    }).toList();
  }
}
