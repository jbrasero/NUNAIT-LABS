# Código — Proyecto 01

Aquí encontrarás el código del proyecto **Luz Automática Inteligente**.

Archivo principal:

`luz_automatica.ino`

---

## Antes de usarlo

Lee primero el capítulo correspondiente del libro **NUNAIT LABS — Construye. Programa. Inventa.**

En el libro se explica:

- qué hace el programa;
- qué significa cada parte;
- qué son los GPIO;
- cómo funciona el sensor;
- cómo toma decisiones el ESP32.

Aquí encontrarás principalmente los archivos necesarios para poner el proyecto en marcha.

---

## Cómo usar el código

1. Descarga `luz_automatica.ino`.
2. Ábrelo con Arduino IDE.
3. Conecta el ESP32 al ordenador.
4. Selecciona la placa correspondiente.
5. Selecciona el puerto.
6. Pulsa **Subir / Upload**.
7. Espera a que termine la carga.
8. Abre el Monitor Serie a `115200 baud`.

---

## Cambiar la distancia de activación

Busca esta parte:

```cpp
distancia < 30
```

El número `30` significa 30 centímetros.

Por ejemplo:

```cpp
distancia < 15
```

hará que el LED se encienda cuando algo esté a menos de 15 cm.

---

## Si no funciona

Comprueba:

- que el código se ha cargado sin errores;
- que la placa correcta está seleccionada;
- que el puerto correcto está seleccionado;
- que TRIG está conectado a GPIO 5;
- que ECHO está conectado a GPIO 18;
- que el LED está conectado a GPIO 23;
- que las conexiones coinciden con el esquema del proyecto.

Consulta también la sección **NUNAIT DEBUG MODE** del libro.

---

## Código

El archivo completo está aquí:

`luz_automatica.ino`

No necesitas copiarlo desde ninguna página.

Descárgalo y ábrelo directamente con Arduino IDE.

---

# NUNAIT LABS

**Construye. Programa. Inventa.**
