# Android App (Proyecto Final)

Este repositorio contiene  una aplicación móvil desarrollada en Flutter que funciona como un compendio interactivo sobre los fundamentos y la estructura interna del sistema operativo Android.

La aplicación está diseñada para presentar la información de manera clara y estructurada, dividida en capítulos temáticos. Además, sirve como portafolio de las actividades realizadas durante el semestre.

---

## 🚀 Características Principales

El proyecto incluye las siguientes funcionalidades:

* **Navegación por Capítulos:** La información está organizada en 4 capítulos principales:
    * Arquitectura del Sistema
    * Seguridad en Android
    * Concurrencia
    * Gestión de Memoria
* **Portafolio de Actividades:** Una sección dedicada a mostrar todas las actividades y tareas realizadas durante el semestre.
* **Visor de PDF:** Integración de un visor (`syncfusion_flutter_pdfviewer`) para consultar documentos y actividades directamente en la app.
* **Galería de Imágenes:** Uso de `photo_view` para permitir a los usuarios visualizar imágenes del proyecto con capacidad de zoom.
* **Navegación Moderna:** Implementación de `go_router` para una gestión de rutas y navegación fluida dentro de la aplicación.
* **Carrusel de Vistas:** Uso de `carousel_slider` para presentar información o imágenes de forma dinámica.

---

## 🛠️ Tecnologías y Paquetes Utilizados

Este proyecto fue construido con **Flutter** y **Dart**. Las principales dependencias utilizadas son:

* `go_router`: Para la gestión de rutas (routing).
* `syncfusion_flutter_pdfviewer`: Para visualizar archivos PDF.
* `photo_view`: Para visualización de imágenes con zoom.
* `carousel_slider`: Para crear carruseles interactivos.
* `smooth_page_indicator`: Para indicar la página actual en carruseles.
* `open_file`: Para abrir archivos del sistema.
* `path_provider`: Para localizar directorios en el sistema de archivos.
* `dio`: Para realizar peticiones HTTP.

---

## ⚙️ Instalación y Ejecución Local

Si deseas ejecutar el proyecto en tu máquina local, sigue estos pasos:

1.  **Clonar el repositorio:**
    ```bash
    git clone [https://github.com/Marco324/android_app.git](https://github.com/Marco324/android_app.git)
    cd android_app
    ```

2.  **Instalar dependencias de Flutter:**
    ```bash
    flutter pub get
    ```

3.  **Ejecutar la aplicación:**
    (Asegúrate de tener un emulador corriendo o un dispositivo conectado)
    ```bash
    flutter run
    ```

---
