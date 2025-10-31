import 'package:android_app/helpers/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget content;

  const BaseScaffold({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouterState.of(context).uri.toString();

    // Rutas que pertenecen al Capítulo 1
    final capitulo1Rutas = [
      '/android',
      '/arquitectura',
      '/clasificacion',
      '/manejoRecursos',
      '/funciones_caract',
      '/gestores',
      '/glosario',
      '/utileria',
    ];

    // Rutas que pertenecen al Capítulo 2
    final capitulo2Rutas = [
      '/concurrencia',
      '/multiprocesamiento',
      '/procesos',
      '/hilos',
      '/tipos'
    ];

    final capitulo3Rutas = [
      '/administracion',
      '/gestion',
      '/problemas',
      '/sistemas',
    ];

    final capitulo4Rutas = [
      '/amenazas',
      '/analisisProblemas',
      '/autentificadores',
      '/intrusos',
      '/nivelesSeguridad',
      '/virus',
    ];

    // Saber si alguna ruta del Capítulo 1 está activa
    final bool isCapitulo1Open = capitulo1Rutas.contains(currentRoute);
    final bool isCapitulo2Open = capitulo2Rutas.contains(currentRoute);
    final bool isCapitulo3Open = capitulo3Rutas.contains(currentRoute);
    final bool isCapitulo4Open = capitulo4Rutas.contains(currentRoute);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                // --- Sección 1: General ---
                DrawerTile(
                  item: MenuItem(icono: Icons.people, nombre: 'Presentación', ruta: '/'),
                  isSelected: currentRoute == '/',
                ),
                DrawerTile(
                  item: MenuItem(icono: Icons.home, nombre: 'Inicio', ruta: '/inicio'),
                  isSelected: currentRoute == '/inicio',
                ),

                const SizedBox(height: 8),

                // --- Sección 2: Capítulo 1 ---
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    leading: const Icon(Icons.book),
                    title: const Text(
                      'Capítulo 1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    initiallyExpanded: isCapitulo1Open,
                    childrenPadding: const EdgeInsets.only(left: 16.0),
                    children: [
                      DrawerTile(
                        item: MenuItem(icono: Icons.android, nombre: 'Android SO', ruta: '/android'),
                        isSelected: currentRoute == '/android',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.account_tree, nombre: 'Arquitectura', ruta: '/arquitectura'),
                        isSelected: currentRoute == '/arquitectura',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.category, nombre: 'Clasificación', ruta: '/clasificacion'),
                        isSelected: currentRoute == '/clasificacion',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.sync, nombre: 'Manejo De Recursos', ruta: '/manejoRecursos'),
                        isSelected: currentRoute == '/manejoRecursos',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.extension, nombre: 'Funciones y Características', ruta: '/funciones_caract'),
                        isSelected: currentRoute == '/funciones_caract',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.storage, nombre: 'Gestores', ruta: '/gestores'),
                        isSelected: currentRoute == '/gestores',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.menu_book, nombre: 'Glosario', ruta: '/glosario'),
                        isSelected: currentRoute == '/glosario',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.handyman, nombre: 'Utilería', ruta: '/utileria'),
                        isSelected: currentRoute == '/utileria',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 8),

                // --- Capítulo 2 ---
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    leading: const Icon(Icons.book),
                    title: const Text(
                      'Capítulo 2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    initiallyExpanded: isCapitulo2Open, 
                    childrenPadding: const EdgeInsets.only(left: 16.0),
                    children: [
                      DrawerTile(
                        item: MenuItem(icono: Icons.sync, nombre: 'Concurrencia', ruta: '/concurrencia'),
                        isSelected: currentRoute == '/concurrencia',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.layers, nombre: 'Multiprocesamiento', ruta: '/multiprocesamiento'),
                        isSelected: currentRoute == '/multiprocesamiento',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.settings_applications, nombre: 'Procesos', ruta: '/procesos'),
                        isSelected: currentRoute == '/procesos',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.share, nombre: 'Tipos de procesos y de interacciones', ruta: '/tipos'),
                        isSelected: currentRoute == '/tipos',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.linear_scale, nombre: 'Hilos', ruta: '/hilos'),
                        isSelected: currentRoute == '/hilos',
                      ),
                    ],
                  ),
                ),

                // --- Capítulo 3 ---
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    leading: const Icon(Icons.book),
                    title: const Text(
                      'Capítulo 3',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    initiallyExpanded: isCapitulo3Open, 
                    childrenPadding: const EdgeInsets.only(left: 16.0),
                    children: [
                      DrawerTile(
                        item: MenuItem(icono: Icons.account_tree, nombre: 'Sistema de archivos', ruta: '/sistemas'),
                        isSelected: currentRoute == '/sistemas',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.create_new_folder, nombre: 'Administración de archivos', ruta: '/administracion'),
                        isSelected: currentRoute == '/administracion',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.folder_shared, nombre: 'Gestión de archivos', ruta: '/gestion'),
                        isSelected: currentRoute == '/gestion',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.error_outline, nombre: 'Problemas en la administración de archivos', ruta: '/problemas'),
                        isSelected: currentRoute == '/problemas',
                      ),
                    ],
                  ),
                ),

                // --- Capítulo 4 ---
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    leading: const Icon(Icons.book),
                    title: const Text(
                      'Capítulo 4',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    initiallyExpanded: isCapitulo4Open, 
                    childrenPadding: const EdgeInsets.only(left: 16.0),
                    children: [
                      DrawerTile(
                        item: MenuItem(icono: Icons.security, nombre: 'Amenazas', ruta: '/amenazas'),
                        isSelected: currentRoute == '/amenazas',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.healing, nombre: 'Malware', ruta: '/virus'),
                        isSelected: currentRoute == '/virus',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.person_off, nombre: 'Intrusos', ruta: '/intrusos'),
                        isSelected: currentRoute == '/intrusos',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.vpn_key, nombre: 'Autentificadores', ruta: '/autentificadores'),
                        isSelected: currentRoute == '/autentificadores',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.lock_open, nombre: 'Niveles de seguridad', ruta: '/nivelesSeguridad'),
                        isSelected: currentRoute == '/nivelesSeguridad',
                      ),
                      DrawerTile(
                        item: MenuItem(icono: Icons.manage_search, nombre: 'Analisis De Problemas', ruta: '/analisisProblemas'),
                        isSelected: currentRoute == '/analisisProblemas',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 8),

                DrawerTile(
                  item: MenuItem(icono: Icons.folder, nombre: 'Actividades Fundamentales', ruta: '/fundamentales'),
                  isSelected: currentRoute == '/fundamentales',
                ),
                DrawerTile(
                  item: MenuItem(icono: Icons.assignment_turned_in, nombre: 'Conclusiones', ruta: '/conclusiones'),
                  isSelected: currentRoute == '/conclusiones',
                ),
                DrawerTile(
                  item: MenuItem(icono: Icons.link, nombre: 'Referencias', ruta: '/referencias'),
                  isSelected: currentRoute == '/referencias',
                ),
              ],
            ),
          ),
        ),
      ),
      body: content,
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.item,
    required this.isSelected,
  });

  final MenuItem item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        item.icono,
        color: isSelected ? const Color.fromARGB(255, 25, 102, 60) : null,
      ),
      title: Text(
        item.nombre,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? const Color.fromARGB(255, 25, 102, 60) : null,
        ),
      ),
      selected: isSelected,
      selectedTileColor: const Color.fromARGB(86, 61, 220, 133),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onTap: () {
        Navigator.pop(context); // Cierra el Drawer al navegar
        context.go(item.ruta);
      },
    );
  }
}