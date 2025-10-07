import 'package:android_app/presentation/views/screens.dart';
import 'package:go_router/go_router.dart';
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/presentacion',
      name: PresentacionScreen.name,
      builder: (context, state) => PresentacionScreen(),
    ),
    GoRoute(
      path: '/android',
      name: AndroidScreen.name,
      builder: (context, state) => AndroidScreen(),
    ),
    GoRoute(
      path: '/clasificacion',
      name: ClasificacionScreen.name,
      builder: (context, state) => ClasificacionScreen(),
    ),
    GoRoute(
      path: '/componentes',
      name: ComponentesScreen.name,
      builder: (context, state) => ComponentesScreen(),
    ),
    GoRoute(
      path: '/glosario',
      name: GlosarioScreen.name,
      builder: (context, state) => GlosarioScreen(),
    ),
  ]
  );