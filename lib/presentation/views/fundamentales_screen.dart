import 'dart:io';
import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class FundamentalesScreen extends StatelessWidget {
  static String name = 'fundamentales';
  const FundamentalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'Actividades Fundamentales',
      content: FundamentalesContent(),
    );
  }
}

class FundamentalesContent extends StatelessWidget {
  const FundamentalesContent({super.key});

  Future<void> descargarYabrirPDF(
    String url,
    String nombreArchivo,
    BuildContext context,
  ) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final path = '${dir.path}/$nombreArchivo';

      // Mostrar progreso
      if (!context.mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Descargando archivo...')));

      if (url.startsWith('assets/')) {
        final byteData = await rootBundle.load(url);
        final buffer = byteData.buffer;
        await File(path).writeAsBytes(
          buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
        );
      } else {
        await Dio().download(url, path);
      }

      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Descarga completa: $nombreArchivo')),
      );

      // Abrir el archivo descargado
      
      await OpenFile.open(path);
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error al descargar: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final archivos = [
      {
        'nombre': 'EQUIPO2_AF2MATERIALDEAPOYO_SO.pdf',
        'ruta': 'assets/files/EQUIPO2_AF2MATERIALDEAPOYO_SO.pdf',
      },
      {
        'nombre': 'EQUIPO2_AF3_SO.pdf',
        'ruta': 'assets/files/EQUIPO2_AF3_SO.pdf',
      },
    ];
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: archivos.length,
            shrinkWrap: true, // 👈 le dice que se ajuste a su contenido
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final archivo = archivos[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Actividad Fundamental ${index+2}', style: textTheme.titleLarge), //${index+1}
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: const Icon(
                        Icons.picture_as_pdf,
                        color: Colors.redAccent,
                      ),
                      title: Text(archivo['nombre']!),
                      trailing: const Icon(Icons.download, color: Colors.grey),
                      onTap: () {
                        descargarYabrirPDF(
                          archivo['ruta']!,
                          archivo['nombre']!,
                          context,
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
