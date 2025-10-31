import 'package:android_app/presentation/views/capitulo4/amenazas_screen.dart';
import 'package:android_app/presentation/views/capitulo4/analisis_problemas_screen.dart';
import 'package:android_app/presentation/views/capitulo4/autentificadores_screen.dart';
import 'package:android_app/presentation/views/capitulo4/intrusos_screen.dart';
import 'package:android_app/presentation/views/capitulo4/niveles_seguridad_screen.dart';
import 'package:android_app/presentation/views/capitulo4/virus_screen.dart';
import 'package:android_app/presentation/views/screens.dart';
import 'package:go_router/go_router.dart';
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: PresentacionScreen.name,
      builder: (context, state) => PresentacionScreen(),
    ),
    GoRoute(
      path: '/inicio',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/android',
      name: AndroidScreen.name,
      builder: (context, state) => AndroidScreen(),
    ),
    GoRoute(
      path: '/arquitectura',
      name: ArquitecturaScreen.name,
      builder: (context, state) => ArquitecturaScreen(),
    ),
    GoRoute(
      path: '/clasificacion',
      name: ClasificacionScreen.name,
      builder: (context, state) => ClasificacionScreen(),
    ),
    GoRoute(
      path: '/manejoRecursos',
      name: ManejoRecursosScreen.name,
      builder: (context, state) => ManejoRecursosScreen(),
    ),
    GoRoute(
      path: '/funciones_caract',
      name: FunCaractScreen.name,
      builder: (context, state) => FunCaractScreen(),
    ),
    GoRoute(
      path: '/gestores',
      name: GestoresScreen.name,
      builder: (context, state) => GestoresScreen(),
    ),
    GoRoute(
      path: '/glosario',
      name: GlosarioScreen.name,
      builder: (context, state) => GlosarioScreen(),
    ),
    GoRoute(
      path: '/utileria',
      name: UtileriaScreen.name,
      builder: (context, state) => UtileriaScreen(),
    ),
    GoRoute(
      path: '/concurrencia',
      name: ConcurrenciaScreen.name,
      builder: (context, state) => ConcurrenciaScreen(),
    ),
    GoRoute(
      path: '/multiprocesamiento',
      name: MultiprocesamientoScreen.name,
      builder: (context, state) => MultiprocesamientoScreen(),
    ),
    GoRoute(
      path: '/procesos',
      name: ProcesosScreen.name,
      builder: (context, state) => ProcesosScreen(),
    ),
    GoRoute(
      path: '/hilos',
      name: HilosScreen.name,
      builder: (context, state) => HilosScreen(),
    ),
    GoRoute(
      path: '/tipos',
      name: TiposProcesoInteraccionesScreen.name,
      builder: (context, state) => TiposProcesoInteraccionesScreen(),
    ),
    GoRoute(
      path: '/administracion',
      name: AdministracionMemoriaScreen.name,
      builder: (context, state) => AdministracionMemoriaScreen(),
    ),
    GoRoute(
      path: '/gestion',
      name: GestionMemoriaScreen.name,
      builder: (context, state) => GestionMemoriaScreen(),
    ),
    GoRoute(
      path: '/problemas',
      name: ProblemasMemoriaScreen.name,
      builder: (context, state) => ProblemasMemoriaScreen(),
    ),
    GoRoute(
      path: '/sistemas',
      name: SistemasArchivosScreen.name,
      builder: (context, state) => SistemasArchivosScreen(),
    ),
    GoRoute(
      path: '/amenazas',
      name: AmenazasScreen.name,
      builder: (context, state) => AmenazasScreen(),
    ),
    GoRoute(
      path: '/analisisProblemas',
      name: AnalisisProblemasScreen.name,
      builder: (context, state) => AnalisisProblemasScreen(),
    ),
    GoRoute(
      path: '/autentificadores',
      name: AutentificadoresScreen.name,
      builder: (context, state) => AutentificadoresScreen(),
    ),
    GoRoute(
      path: '/intrusos',
      name: IntrusosScreen.name,
      builder: (context, state) => IntrusosScreen(),
    ),
    GoRoute(
      path: '/nivelesSeguridad',
      name: NivelesSeguridadScreen.name,
      builder: (context, state) => NivelesSeguridadScreen(),
    ),
    GoRoute(
      path: '/virus',
      name: VirusScreen.name,
      builder: (context, state) => VirusScreen(),
    ),
    GoRoute(
      path: '/fundamentales',
      name: FundamentalesScreen.name,
      builder: (context, state) => FundamentalesScreen(),
    ),
    GoRoute(
      path: '/conclusiones',
      name: ConclusionesScreen.name,
      builder: (context, state) => ConclusionesScreen(),
    ),
    GoRoute(
      path: '/referencias',
      name: ReferenciasScreen.name,
      builder: (context, state) => ReferenciasScreen(),
    ),
  ]
  );