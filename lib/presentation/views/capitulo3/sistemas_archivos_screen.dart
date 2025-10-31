import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SistemasArchivosScreen extends StatelessWidget {
  static final name = 'sistemasArchivos';
  const SistemasArchivosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Sistema De Archivos',
      content: SistemasArchivosContent(),
    );
  }
}

class SistemasArchivosContent extends StatelessWidget {
  const SistemasArchivosContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClearContainer(
            content: Text.rich(
              TextSpan(
                style: textTheme.bodyLarge,
                children: [
                  TextSpan(text: 'Android está basado en el núcleo '),
                  TextSpan(
                    text: 'Linux',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ' y utiliza distintos sistemas de archivos según el tipo de almacenamiento.\n\nEl más común es ',
                  ),
                  TextSpan(
                    text: 'ext4',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ', usado en particiones como /system, /data y /cache por su estabilidad y velocidad.\n\n',
                  ),
                  TextSpan(
                    text: 'F2FS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ' se emplea en dispositivos modernos con memorias flash, mejorando su durabilidad y rendimiento.\n\n',
                  ),
                  TextSpan(
                    text: 'exFAT',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' y '),
                  TextSpan(
                    text: 'FAT32',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ' se usan en tarjetas SD o unidades externas por su compatibilidad con Windows y otros sistemas.\n\nAndroid gestiona estos sistemas mediante el ',
                  ),
                  TextSpan(
                    text: 'kernel Linux',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ', que organiza la información, controla permisos y refuerza la seguridad con ',
                  ),
                  TextSpan(
                    text: 'SELinux',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '.'),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          ImageContainer(
            image: Image(image: AssetImage('assets/carpetaAndroid.jpg')),
          ),

          SizedBox(height: 24),

          Container(
            color: Colors.deepOrangeAccent,
            child: Column(
              children: [
                SizedBox(height: 24),
                ClearContainer(
                  content: Text.rich(
                    TextSpan(
                      style: textTheme.bodyLarge,
                      children: [
                        TextSpan(
                          text:
                              'En las computadoras personales, el tipo de sistema de archivos depende del sistema operativo.\n\nEn ',
                        ),
                        TextSpan(
                          text: 'Windows',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' se usa '),
                        TextSpan(
                          text: 'NTFS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ', que admite archivos grandes, permisos avanzados y registro de cambios.\n\nEn ',
                        ),
                        TextSpan(
                          text: 'macOS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' se utiliza '),
                        TextSpan(
                          text: 'APFS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ', optimizado para discos de estado sólido con cifrado y copias instantáneas.\n\nEn ',
                        ),
                        TextSpan(
                          text: 'Linux',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' se emplean sistemas como '),
                        TextSpan(
                          text: 'ext4, Btrfs o XFS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ', que destacan por su velocidad, confiabilidad y buena administración de datos.',
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),

          SizedBox(height: 24),

          ClearContainer(
            content: Text.rich(
              TextSpan(
                style: textTheme.bodyLarge,
                children: [
                  TextSpan(
                    text:
                        'En los sistemas operativos de red, los sistemas de archivos permiten ',
                  ),
                  TextSpan(
                    text: 'compartir información entre equipos conectados',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '.\n\nEn entornos '),
                  TextSpan(
                    text: 'Linux y UNIX',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' se usa '),
                  TextSpan(
                    text: 'NFS (Network File System)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ', que permite acceder a carpetas remotas como si fueran locales.\n\nEn ',
                  ),
                  TextSpan(
                    text: 'Windows',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' se emplea '),
                  TextSpan(
                    text: 'SMB o CIFS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ', usados para compartir carpetas e impresoras en una red local.\n\nTambién existe ',
                  ),
                  TextSpan(
                    text: 'DFS (Distributed File System)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ', que combina varios servidores en un único sistema de archivos distribuido.\n\nTodos operan bajo una arquitectura ',
                  ),
                  TextSpan(
                    text: 'cliente-servidor',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ', donde un equipo ofrece los datos y otros acceden a ellos, con control centralizado de permisos y acceso.',
                  ),
                ],
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          SizedBox(height: 24),

          Container(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(height: 24),
                ClearContainer(
                  content: Text.rich(
                    TextSpan(
                      style: textTheme.bodyLarge,
                      children: [
                        TextSpan(text: 'Los '),
                        TextSpan(
                          text: 'sistemas de archivos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ' son una parte esencial de todo sistema operativo, pues permiten ',
                        ),
                        TextSpan(
                          text:
                              'organizar, almacenar y acceder a la información de forma eficiente',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '.\n\n'),
                        TextSpan(
                          text:
                              'Android, las computadoras y los sistemas de red',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              ' emplean distintos tipos de sistemas de archivos según sus necesidades de ',
                        ),
                        TextSpan(
                          text: 'rendimiento, compatibilidad y seguridad',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '.'),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
