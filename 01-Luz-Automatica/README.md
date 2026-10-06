# Proyecto 01 — Luz Automática Inteligente

Bienvenido al primer proyecto de **NUNAIT LABS**.

En este proyecto vas a construir una luz que se enciende automáticamente cuando detecta que algo está cerca.

No necesitas saber programar ni tener conocimientos previos de electrónica.

---

## Qué vas a aprender

Con este proyecto aprenderás:

- Qué es un ESP32
- Qué es un sensor
- Cómo medir distancias
- Cómo controlar un LED
- Cómo conectar componentes en una protoboard
- Cómo cargar un programa en una placa ESP32
- Cómo modificar un proyecto para crear tu propia versión

---

## Antes de empezar

Lee primero el capítulo **Proyecto 01 — Luz Automática Inteligente** del libro **NUNAIT LABS — Construye. Programa. Inventa.**

En el libro encontrarás:

- Explicación paso a paso
- Lista exacta de componentes
- Montaje
- Explicaciones para principiantes
- Construcción de la carcasa con cartón
- Retos para modificar el proyecto
- Espacio para diseñar tu propia versión

Este repositorio contiene los archivos digitales complementarios.

---

# Archivos del proyecto

## Código

En la carpeta:

`codigo`

encontrarás el programa necesario para hacer funcionar el proyecto.

Archivo principal:

`luz_automatica.ino`

---

## Conexiones

En la carpeta:

`conexiones`

encontrarás:

- Esquema de conexiones
- Imagen del circuito
- Versión PDF del esquema

Antes de conectar el ESP32 al ordenador, comprueba siempre que todas las conexiones coinciden con el esquema.

---

## Carcasa de cartón

En la carpeta:

`carton`

encontrarás los archivos necesarios para construir la carcasa sin impresora 3D.

Incluye:

- Plantilla imprimible
- Medidas exactas
- Posición del sensor
- Posición del LED
- Líneas de corte
- Líneas de doblado

La plantilla estará preparada para imprimirse al **100 % de escala**.

Comprueba las medidas después de imprimirla antes de cortar el cartón.

---

## Carcasa para impresión 3D

Si tienes una impresora 3D, entra en la carpeta:

`3D`

Ahí encontrarás:

- Archivo STL
- Archivo 3MF
- Medidas del modelo
- Recomendaciones básicas de impresión

La carcasa estará diseñada para los componentes exactos utilizados en el proyecto.

---

## Fotografías

En la carpeta:

`fotos`

encontrarás imágenes reales del montaje.

Podrás comparar tu proyecto con:

1. Los componentes
2. El ESP32 en la protoboard
3. El sensor
4. Las conexiones
5. El circuito terminado
6. La carcasa de cartón
7. La carcasa impresa en 3D
8. El proyecto terminado

---

# Componentes utilizados

Este proyecto está diseñado para utilizar exactamente:

- 1 × ESP32 DevKit V1 ESP-WROOM-32 de 30 pines
- 1 × Sensor ultrasónico HC-SR04
- 1 × LED rojo de 5 mm
- 1 × Resistencia de 220 Ω, 1/4 W
- 1 × Resistencia de 1 kΩ, 1/4 W
- 1 × Resistencia de 2 kΩ, 1/4 W
- 1 × Protoboard de 400 puntos
- Cables Dupont macho-macho
- 1 × Cable USB de datos compatible con el ESP32

Usar otros modelos puede requerir cambiar conexiones o archivos de la carcasa.

---

# Cómo usar los archivos

## Si solo quieres construir el proyecto

Sigue el libro y utiliza:

- `codigo`
- `conexiones`

## Si quieres hacer la carcasa con cartón

Utiliza:

- `carton`

## Si tienes impresora 3D

Utiliza:

- `3D`

---

# Problemas frecuentes

Si algo no funciona:

1. Comprueba todas las conexiones.
2. Revisa que el ESP32 esté correctamente conectado.
3. Comprueba que has seleccionado la placa correcta en Arduino IDE.
4. Comprueba que has seleccionado el puerto correcto.
5. Abre el Monitor Serie.
6. Comprueba si el sensor está mostrando distancias.

No cambies muchas cosas a la vez.

Haz una prueba, cambia una cosa y vuelve a probar.

---

# NUNAIT DEBUG MODE

Si el sensor funciona pero el LED no:

- comprueba la orientación del LED;
- comprueba la resistencia;
- comprueba la conexión del GPIO.

Si el LED funciona pero el sensor no:

- comprueba VCC;
- comprueba GND;
- comprueba TRIG;
- comprueba ECHO;
- comprueba las resistencias del divisor de tensión.

---

# Hackéalo

Cuando el proyecto funcione, prueba a modificarlo.

Puedes intentar:

- Cambiar la distancia de activación
- Añadir otro LED
- Añadir sonido
- Crear varios niveles de alerta
- Diseñar otra carcasa
- Convertirlo en una luz automática de armario
- Crear tu propia versión

---

# Importante

Este repositorio complementa el libro.

Las instrucciones completas de montaje están en:

**NUNAIT LABS — Construye. Programa. Inventa.**

---

# Proyecto creado por NUNAIT

**Construye. Programa. Inventa.**

No te limites a copiar el proyecto.

Haz que sea tuyo.
