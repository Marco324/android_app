import 'package:android_app/helpers/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget content;

  const BaseScaffold({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        // backgroundColor: Color(0xFF388E3C),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: drawerItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = drawerItems[index];
                final currentRoute = GoRouterState.of(context).uri.toString();

                final isSelected = currentRoute == item.ruta;

                return ListTile(
                  leading: Icon(
                    item.icono,
                    color: isSelected
                        ? Color.fromARGB(255, 51, 184, 110)
                        : null,
                  ),
                  title: Text(
                    item.nombre,
                    style: TextStyle(
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isSelected
                          ? Color.fromARGB(255, 51, 184, 110)
                          : null,
                    ),
                  ),
                  selected: isSelected,
                  selectedTileColor: Color.fromARGB(86, 61, 220, 133),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onTap: () {
                    context.go(item.ruta);
                  },
                );
              },
            ),
          ),
        ),
      ),

      body: content,
    );
  }
}

final List<MenuItem> drawerItems = [
  MenuItem(icono: Icons.home, nombre: 'Android', ruta: '/'),
  MenuItem(icono: Icons.people, nombre: 'Presentación', ruta: '/presentacion'),
  MenuItem(icono: Icons.android, nombre: 'Android SO', ruta: '/android'),
  MenuItem(icono: Icons.widgets, nombre: 'Componentes', ruta: '/componentes'),
  MenuItem(icono: Icons.category, nombre: 'Clasificación', ruta: '/clasificacion'),
  MenuItem(icono: Icons.menu_book, nombre: 'Glosario', ruta: '/glosario'),
];
