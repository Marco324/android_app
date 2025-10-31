import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class GestoresScreen extends StatelessWidget {
  static const String name = 'Gestores';
  const GestoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Gestores', content: _GestoresContent());
  }
}

class _GestoresContent extends StatelessWidget {
  const _GestoresContent();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Partes de gestión del SO',
                  style: textTheme.headlineSmall,
                ),
                SizedBox(height: 12),
                Text('Gestión de Memoria', style: textTheme.titleLarge),
              ],
            ),
          ),
          ClearContainer(
            content: Text(
              'Android parte de la idea de que la memoria libre es memoria desaprovechada, por lo que busca usarla siempre. Para gestionarla, Android Runtime (ART) y la máquina virtual Dalvik emplean técnicas de paginación y mapeo de memoria.',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 12),
          Container(
            color: const Color.fromARGB(255, 61, 220, 133),
            child: Column(
              children: [
                SizedBox(height: 12),
                ClearContainer(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jerarquía de Memoria',
                        style: textTheme.titleMedium?.copyWith(fontSize: 18),
                      ),
                      Text(
                        'La jerarquía de Memoria en Android se basa en la gestión de tres niveles: RAM, RAM y ROM.',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                ClearContainer(
                  content: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Text.rich(
                          textAlign: TextAlign.justify,
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text: '•	La memoria RAM ',
                                style: textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'es la memoria principal del dispositivo y se gestiona mediante paginación.',
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          textAlign: TextAlign.justify,
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text: '•	La zona libre de la RAM ',
                                style: textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'se usa como memoria de intercambio (SWAP), donde se guardan datos y programas comprimidos para aprovechar mejor la capacidad de la memoria.',
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          textAlign: TextAlign.justify,
                          TextSpan(
                            style: textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                text: '•	La memoria ROM ',
                                style: textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'está compuesta por memoria EEPROM Flash Integrada (eMMC/embedded Multimedia Card) y opcionalmente una tarjeta SD.',
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '•	Existe un nivel cero en esta jerarquía compuesto por la memoria caché y registros del microprocesador, pero Android no los gestiona directamente, sino que lo hace el microprocesador.',
                          style: textTheme.bodyLarge,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),

          SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text('Gestión de Procesos', style: textTheme.titleLarge),
          ),

          ClearContainer(
            content: Text(
              'Con frecuencia la documentación de Android se refiere a la gestión de procesos como ciclo de vida de Android.',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          ),
          ClearContainer(
            content: Text(
              'Android implementa la multitarea mediante la ejecución de múltiples hilos para cada proceso; el proceso más simple consta de un sólo hilo principal que sólo es lanzado en el caso de que no exista ninguna instancia del proceso en ejecución.',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          ),

          ClearContainer(
            content: Text(
              'De igual forma un proceso puede utilizar múltiples hilos, uno por cada subproceso. También se da la situación en que un proceso comparte subprocesos con otros, lanzando para ello el sistema los hilos necesarios.',
              style: textTheme.bodyLarge,
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 12),

          Container(
            color: const Color.fromARGB(255, 61, 220, 133),
            child: Column(
              children: [
                SizedBox(height: 12),
                ClearContainer(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tipos de procesos en Android',
                        style: textTheme.titleMedium?.copyWith(fontSize: 18),
                      ),
                      Text(
                        'El tipo de proceso en Android determina el comportamiento del planificador respecto a este: no es lo mismo un proceso “activo” y “visible” cuya finalización por parte del sistema tendría una experiencia muy negativa para el usuario, que por ejemplo un servicio del sistema.',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                ClearContainer(
                  content: Column(
                    children: [
                      Text(
                        'Android, por tanto, clasifica los procesos como:',
                        style: textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: [
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Activos: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Se están ejecutando y además son requeridos para la interacción con el usuario, bien sean procesos en primer plano o servicios dando soporte a éstos.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Visibles: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Un nivel por debajo de Activo, ya que un proceso visible estaría en segundo plano.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Servicio: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Proceso no visible que realiza tareas importantes, como mantener la conexión a Internet. No debe finalizarse a menos que afecte el rendimiento de un proceso activo.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Segundo Plano: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Procesos en ejecución, pero no visibles, a los que el sistema intentará dotar de recursos siempre que haya disponibles.',
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              textAlign: TextAlign.justify,
                              TextSpan(
                                style: textTheme.bodyLarge,
                                children: [
                                  TextSpan(
                                    text: '•	Vacíos: ',
                                    style: textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'Es una forma rápida de inicialización: por ejemplo, un proceso que intenta ser lanzado pero el liberador de memoria está ocupado haciéndole hueco.',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),

          SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text('Gestión de Usuarios', style: textTheme.titleLarge),
          ),

          ClearContainer(
            content: Text.rich(
              textAlign: TextAlign.justify,
              style: textTheme.bodyLarge,
              TextSpan(
                children: [
                  TextSpan(text: 'Android solo permite un '),
                  TextSpan(
                    text: 'usuario principal ',
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: 'activo. Algunos fabricantes, como '),
                  TextSpan(
                    text: 'Samsung o Xiaomi',
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: ', añaden capas de software para simular varios usuarios (por ejemplo, para control parental o uso personal y laboral), aunque en realidad sigue existiendo un único usuario con distintos '),
                  TextSpan(
                    text: 'permisos y restricciones',
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
            ),
          ),

          ClearContainer(
            content: Text.rich(
              textAlign: TextAlign.justify,
              style: textTheme.bodyLarge,
              TextSpan(
                children: [
                  TextSpan(text: 'El usuario principal tiene permisos limitados por defecto y, para obtener control total, es necesario '),
                  TextSpan(
                    text: 'rootear el teléfono',
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: ', lo que otorga privilegios de administrador en el kernel de Linux, pero puede '),
                  TextSpan(
                    text: 'anular la garantía y restringir funciones del fabricante',
                    style: textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
            ),
          ),

          SizedBox(height: 40,)
        ],
      ),
    );
  }
}
