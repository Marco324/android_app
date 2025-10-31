import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class GlosarioScreen extends StatelessWidget {
  static const String name = 'glosario';
  const GlosarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Glosario', content: _GlosarioScreen());
  }
}

class _GlosarioScreen extends StatefulWidget {
  const _GlosarioScreen();

  @override
  State<_GlosarioScreen> createState() => _GlosarioScreenState();
}

class _GlosarioScreenState extends State<_GlosarioScreen> {
  final Map<int, bool> _expandedTiles = {};

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Terminología básica de Android', style: textTheme.titleLarge),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: glosarioItems.length,
              itemBuilder: (BuildContext context, int index) {
                final termino = glosarioItems[index];
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
                        termino.termino,
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
                          child: Text(
                            termino.definicion,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(fontSize: 15, height: 1.5),
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
          ],
        ),
      ),
    );
  }
}

final List<GlosarioItem> glosarioItems = [
  GlosarioItem(
    termino: 'Android',
    definicion:
        'Sistema operativo móvil desarrollado por Google, basado en el kernel de Linux. Está diseñado principalmente para dispositivos móviles como teléfonos inteligentes, tabletas y televisores inteligentes.',
  ),
  GlosarioItem(
    termino: 'Kernel de Linux',
    definicion:
        'Núcleo central del sistema operativo que gestiona la interacción entre el hardware (CPU, memoria, dispositivos) y el software. Android utiliza una versión modificada del kernel Linux.',
  ),
  GlosarioItem(
    termino: 'Dalvik VM (DVM)',
    definicion:
        'Máquina virtual usada en versiones anteriores de Android (hasta 4.4) para ejecutar aplicaciones Java en formato .dex (Dalvik Executable). Permite que las apps corran en entornos con recursos limitados.',
  ),
  GlosarioItem(
    termino: 'ART (Android Runtime)',
    definicion:
        'Sustituto de Dalvik a partir de Android 5.0. Compila las apps de forma anticipada (AOT) mejorando el rendimiento y reduciendo el consumo de batería.',
  ),
  GlosarioItem(
    termino: 'Zygote',
    definicion:
        'Proceso inicial que crea copias de sí mismo para iniciar nuevas apps más rápido. Ayuda a reducir el tiempo de carga de las aplicaciones.',
  ),
  GlosarioItem(
    termino: 'Proceso',
    definicion:
        'Cada aplicación en Android se ejecuta en su propio proceso, aislado del resto por razones de seguridad y estabilidad.',
  ),
  GlosarioItem(
    termino: 'Hilo (Thread)',
    definicion:
        'Unidad mínima de ejecución dentro de un proceso. Android utiliza hilos para realizar tareas en segundo plano sin bloquear la interfaz de usuario (por ejemplo, AsyncTask o HandlerThread).',
  ),
  GlosarioItem(
    termino: 'Actividad (Activity)',
    definicion:
        'Componente central de una aplicación Android que representa una pantalla con la que el usuario puede interactuar.',
  ),
  GlosarioItem(
    termino: 'Servicio (Service)',
    definicion:
        'Componente que realiza tareas en segundo plano sin interfaz gráfica, por ejemplo reproducir música o sincronizar datos.',
  ),
  GlosarioItem(
    termino: 'Intents',
    definicion:
        'Mecanismo de comunicación entre componentes de Android. Permiten iniciar actividades, servicios o enviar mensajes entre apps.',
  ),
  GlosarioItem(
    termino: 'Content Provider',
    definicion:
        'Componente que gestiona el acceso estructurado a datos compartidos entre aplicaciones, como contactos, multimedia o bases de datos.',
  ),
  GlosarioItem(
    termino: 'Broadcast Receiver',
    definicion:
        'Componente que responde a mensajes globales del sistema o de otras apps (por ejemplo, “batería baja” o “conexión Wi-Fi establecida”).',
  ),
  GlosarioItem(
    termino: 'Binder',
    definicion:
        'Mecanismo de Inter-Process Communication (IPC) que permite que diferentes procesos se comuniquen entre sí de forma segura y eficiente. Es clave en la arquitectura de Android.',
  ),
  GlosarioItem(
    termino: 'Permisos',
    definicion:
        'Mecanismo de seguridad que controla qué recursos o datos puede usar una aplicación (cámara, ubicación, contactos, etc.).',
  ),
  GlosarioItem(
    termino: 'API de Android',
    definicion:
        'Conjunto de herramientas y librerías que permiten a los desarrolladores interactuar con el sistema operativo y sus componentes.',
  ),
  GlosarioItem(
    termino: 'Sandboaxing',
    definicion:
        'Técnica de seguridad que aísla cada aplicación en su propio entorno de ejecución para evitar accesos no autorizados a recursos del sistema o de otras apps.',
  ),
  GlosarioItem(
    termino: 'Gestor de Actividades (Activity Manager)',
    definicion:
        'Componente del sistema que controla el ciclo de vida de las aplicaciones y la administración de la memoria.',
  ),
  GlosarioItem(
    termino: 'Gestor de Paquetes (Package Manager)',
    definicion:
        'Sistema encargado de instalar, actualizar y administrar las apps en el dispositivo.',
  ),
  GlosarioItem(
    termino: 'Memoria Virtual',
    definicion:
        'Mecanismo que permite a Android gestionar de forma eficiente la memoria RAM, cerrando procesos en segundo plano cuando es necesario para liberar recursos.',
  ),
  GlosarioItem(
    termino: 'Multitarea',
    definicion:
        'Capacidad de ejecutar múltiples apps al mismo tiempo, gestionando procesos activos y en espera según prioridad y uso.',
  ),
  GlosarioItem(
    termino: 'Notificaciones',
    definicion:
        'Sistema que permite informar al usuario sobre eventos de apps o del sistema mediante íconos, sonidos y banners.',
  ),
  GlosarioItem(
    termino: 'Root / Superusuario',
    definicion:
        'Acceso privilegiado al sistema Android que permite modificar configuraciones y archivos protegidos. No está disponible por defecto para seguridad.',
  ),
  GlosarioItem(
    termino: 'Recovery',
    definicion:
        'Modo especial de arranque en Android que permite restaurar el sistema, aplicar actualizaciones o realizar copias de seguridad.',
  ),
  GlosarioItem(
    termino: 'Bootloader',
    definicion:
        'Programa que se ejecuta al encender el dispositivo y que inicia el kernel y el sistema operativo Android.',
  ),
  GlosarioItem(
    termino: 'Play Services / Framework de Google',
    definicion:
        'Conjunto de servicios en segundo plano que ofrecen funciones como autenticación, ubicación y sincronización de datos entre apps.',
  ),
  GlosarioItem(
    termino: 'OTA (Over The Air)',
    definicion:
        'Método de actualización del sistema operativo Android a través de internet sin necesidad de conexión por cable.',
  ),
  GlosarioItem(
    termino: 'ADB (Android Debug Bridge)',
    definicion:
        'Herramienta de línea de comandos que permite a los desarrolladores comunicarse con un dispositivo Android para depuración y administración avanzada.',
  ),
];

class GlosarioItem {
  final String termino;
  final String definicion;

  GlosarioItem({required this.termino, required this.definicion});
}
