import 'package:android_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ReferenciasScreen extends StatelessWidget {
  static String name = 'referencias';
  const ReferenciasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: 'Referencias', content: ReferenciasContent());
  }
}

class ReferenciasContent extends StatelessWidget {
  const ReferenciasContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColorAllContainer(
            color: Colors.greenAccent,
            title: 'Referencias Bibliográficas',
            content: [
              ClearContainer(
                content: Text('''
    Android Open Source Project. (s. f.). Boletines de seguridad y actualizaciones de Android. https://source.android.com/docs/security/bulletin?hl=es-419
    
    Android Open Source Project. (s. f.). Descripción general de la arquitectura. En “Arquitectura” de Android.
    
    Arpaci-Dusseau, R. H., Arpaci-Dusseau, A. C., & University of Wisconsin–Madison. (2014). Operating Systems: Three Easy Pieces (1.a ed.). Arpaci-Dusseau Books.
    
    Báez, M., Borrego, Á., Cordero, J., Cruz, L., González, M., Hernández, F., Palomero, D., Rodríguez, J., Sanz, D., Saucedo, M., Torralbo, P., & Zapata, Á. (s. f.). Introducción a Android. Grupo Tecnología UCM. https://dspace.itsjapon.edu.ec/jspui/bitstream/123456789/434/1/introduccion-android.pdf
    
    Catalán, A. (2011). Curso Android: Desarrollo de aplicaciones móviles. Maestros del Web.
    
    Descripción general de los procesos y subprocesos. (s. f.). Android Developers. https://developer.android.google.cn/guide/components/processes-and-threads?hl=es-419
    
    Francisco Lázaro Domínguez. (2016). Investigación forense de dispositivos móviles Android. Ra-Ma Editorial.
    
    Goetz, B., Peierls, T., Bloch, J., Bowbeer, J., Holmes, D., & Lea, D. (2006). Java Concurrency in Practice. Addison-Wesley Professional.
    
    Gobierno de México. (s. f.). Guía de Ciberseguridad para identificar y prevenir ciberataques de malware. https://www.gob.mx/cms/uploads/attachment/file/903933/Gui_a_de_Ciberseguridad_para_identificar_y_prevenir_ciberataques_de_malware.pdf
    
    Google. (2024). Android Developers Documentation. https://developer.android.com
    
    Google. (2024). Android Open Source Project Documentation. https://source.android.com/
    
    Instituto Nacional de Ciberseguridad (INCIBE). (2020). Guía de seguridad en Android [Documento PDF]. https://www.incibe.es/sites/default/files/docs/guia-seguridad-android.pdf
    
    Jesús Tomás Gironés. (2012). El Gran Libro de Android. Marcombo.
    
    Jesús Tomás Gironés. (2018). El Gran Libro de Android Avanzado. Marcombo.
    
    KeepCoding. (s. f.). Arquitectura Android: Conoce sus capas y patrones. KeepCoding Bootcamps.
    
    Levin, J. (2015). Android Internals: A Confectioner's Cookbook (Vol. 1). Technologeeks Inc.
    
    Meike, G., & Schiefer, L. (2021). Inside the Android OS: Building, Customizing, Managing and Operating Android System Services. Addison-Wesley Professional.
    
    Microsoft. (2024). NTFS Technical Reference. https://learn.microsoft.com/en-us/windows/win32/fileio/ntfs-technical-reference
    
    Overview of memory management. (s. f.). Android Developers. https://developer.android.com/topic/performance/memory-overview
    
    Privacy Guides. (s. f.). Resumen de Android — modelo de seguridad y características. Privacy Guides.
    
    Procesos y el ciclo de vida de la app. (s. f.). Android Developers. https://developer.android.google.cn/guide/components/activities/process-lifecycle?hl=es-419
    
    Security checklist. (s. f.). Android Developers. https://developer.android.com/privacy-and-security/security-tips
    
    Silberschatz, A., Galvin, P. B., & Gagne, G. (2005). Fundamentos de Sistemas Operativos (7.ª ed.). McGraw-Hill.
    
    Silberschatz, A., Galvin, P. B., & Gagne, G. (2018). Fundamentos de Sistemas Operativos (9.ª ed.). McGraw-Hill.
    
    Silberschatz, A., Galvin, P. B., & Gagne, G. (2018). Operating System Concepts (10th ed.). Wiley.
    
    Skoudis, E. (2016). Malware: Fighting Malicious Code. Prentice Hall.
    
    Stallings, W. (1998). Sistemas Operativos (2.ª ed.). Pearson Educación.
    
    Stallings, W. (2018). Computer Security: Principles and Practice (4th ed.). Pearson Education.
    
    Stallings, W. (2018). Operating Systems: Internals and Design Principles (9.ª ed.). Pearson.
    
    Stamp, M. (2011). Information Security: Principles and Practice (2nd ed.). Wiley.
    
    Szor, P. (2005). The Art of Computer Virus Research and Defense. Addison-Wesley Professional.
    
    Sistema Operativo (Android). (n. d.). Advanced Micro Systems Sdn Bhd.
    
    Tanenbaum, A. S., & Bos, H. (2008). Modern Operating Systems (4.a ed.). Prentice Hall.
    
    Tanenbaum, A. S., & Bos, H. (2015). Modern Operating Systems (4th ed.). Pearson Education.
    
    Tomás, J., Carbonell, V., Vogt, C., García Pineda, M., Bataller Mascarell, J., & Ferri, D. (2013). El Gran Libro de Android Avanzado. Marcombo Ediciones Técnicas.
    
    Weaver, N., Paxson, V., & Staniford, S. (2003). A Taxonomy of Computer Worms. ACM Workshop on Rapid Malcode.
      ''', textAlign: TextAlign.justify),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
