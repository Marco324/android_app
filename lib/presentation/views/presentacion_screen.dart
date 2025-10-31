import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PresentacionScreen extends StatelessWidget {
  static const String name = 'presentacion';
  const PresentacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Inicio', content: PresentacionScreenView());
  }
}

class PresentacionScreenView extends StatelessWidget {
  const PresentacionScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(image: AssetImage('assets/fimeLogo.png')),
            SizedBox(
              child: Text(
                'Universidad Autónoma de Nuevo León',
                style: textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              child: Text(
                'Facultad de Ingeniería Mecánica y Eléctrica',
                style: textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(101, 61, 220, 133),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Producto Integrador De Aprendizaje',
                              textAlign: TextAlign.center,
                              style: textTheme.headlineMedium!.copyWith(
                                color: Color.fromARGB(255, 47, 171, 103),
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Equipo 2',
                              style: textTheme.titleLarge!.copyWith(
                                color: Color.fromARGB(255, 47, 171, 103),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyMedium,
                            children: [
                              TextSpan(
                                text: 'Docente: ',
                                style: textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Dra. Norma Edith Marín Martínez.',
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyMedium,
                            children: [
                              TextSpan(
                                text: 'Hora: ',
                                style: textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: 'LMV M6'),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            style: textTheme.bodyMedium,
                            children: [
                              TextSpan(
                                text: 'Unidad de Aprendizaje: ',
                                style: textTheme.bodyMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(text: 'Sistemas Operativos'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Divider(color: const Color.fromARGB(255, 185, 185, 185)),
            _Integrantes(textTheme: textTheme),
          ],
        ),
      ),
    );
  }
}

class _Integrantes extends StatelessWidget {
  const _Integrantes({
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Integrantes',
            textAlign: TextAlign.left,
            style: textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
    
          SizedBox(height: 20),
    
          ListView.builder(
            shrinkWrap:
                true, 
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listaIntegrantes.length,
            itemBuilder: (BuildContext context, int index) {
              final integrante = listaIntegrantes[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(96, 221, 255, 0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        integrante.foto,
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                integrante.nombre,
                                style: textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  style: textTheme.bodyMedium,
                                  children: [
                                    TextSpan(
                                      text: 'Matrícula: ',
                                      style: textTheme.bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: integrante.matricula
                                          .toString(),
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  style: textTheme.bodyMedium,
                                  children: [
                                    TextSpan(
                                      text: 'Carrera: ',
                                      style: textTheme.bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(text: integrante.carrera),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  style: textTheme.bodyMedium,
                                  children: [
                                    TextSpan(
                                      text: 'Porcentaje: ',
                                      style: textTheme.bodyMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: '${integrante.porcentaje}%'
                                          .toString(),
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
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

final List<Integrante> listaIntegrantes = [
  Integrante(
    nombre: 'Alvarado Cantú Lesly Elizabeth',
    matricula: 2177856,
    carrera: 'ITS',
    porcentaje: 100,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/lesly.jpeg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Integrante(
    nombre: 'Ávila Ignacio Jesús Emiliano',
    matricula: 2118747,
    carrera: 'IAS',
    porcentaje: 100,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/jesus.jpeg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Integrante(
    nombre: 'Balderas García Ana Victoria',
    matricula: 2106047,
    carrera: 'IAS',
    porcentaje: 100,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/ana.jpg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Integrante(
    nombre: 'Garza Cruz Santiago',
    matricula: 2177955,
    carrera: 'ITS',
    porcentaje: 100,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/santiago.jpeg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Integrante(
    nombre: 'Guevara Ochoa Eduardo Miguel',
    matricula: 2053056,
    carrera: 'ITS',
    porcentaje: 0,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/miguel.jpeg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Integrante(
    nombre: 'Méndez Sánchez Marco Antonio',
    matricula: 2177912,
    carrera: 'ITS',
    porcentaje: 100,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/marco.jpeg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Integrante(
    nombre: 'Pérez Rodríguez Jazmín',
    matricula: 2103948,
    carrera: 'ITS',
    porcentaje: 100,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/jazmin.jpeg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Integrante(
    nombre: 'Ramón López Anthony Joel',
    matricula: 2058255,
    carrera: 'ITS',
    porcentaje: 100,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/anthony.jpeg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Integrante(
    nombre: 'Valdez Silva Ángel Karim',
    matricula: 2041829,
    carrera: 'ITS',
    porcentaje: 100,
    foto: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/integrantes/angel.jpeg',
        height: 80,
        width: 60,
        fit: BoxFit.cover,
      ),
    ),
  ),
];

class Integrante {
  final String nombre;
  final int matricula;
  final String carrera;
  final int porcentaje;
  final Widget foto;

  Integrante({
    required this.nombre,
    required this.matricula,
    required this.carrera,
    required this.porcentaje,
    required this.foto,
  });
}
