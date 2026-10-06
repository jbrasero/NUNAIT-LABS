# Código — Proyecto 01

Este es el código del proyecto **Luz Automática Inteligente** de NUNAIT LABS.

El archivo que debes abrir es:

`luz_automatica.ino`

---

## ¿Qué hace este programa?

El programa hace cuatro cosas:

1. Le pide al sensor HC-SR04 que mida una distancia.
2. Calcula a cuántos centímetros está el objeto.
3. Comprueba si está a menos de 30 cm.
4. Enciende o apaga el LED.

La idea es muy sencilla:

**MEDIR → DECIDIR → ACTUAR**

---

# 1. Los pines

Al principio del código aparece:

```cpp
#define TRIG_PIN 5
#define ECHO_PIN 18
#define LED_PIN 23
```

Esto le dice al ESP32 qué conexión usamos para cada cosa.

- `TRIG_PIN 5` → el sensor envía la señal desde GPIO 5
- `ECHO_PIN 18` → el ESP32 recibe el eco por GPIO 18
- `LED_PIN 23` → el LED está conectado a GPIO 23

---

# 2. Las variables

Después aparece:

```cpp
long duracion;
float distancia;
```

Estas dos variables sirven para guardar información.

`duracion` guarda cuánto tarda el sonido en ir y volver.

`distancia` guarda el resultado convertido a centímetros.

---

# 3. La función setup()

```cpp
void setup()
```

Esta parte se ejecuta una sola vez cuando encendemos el ESP32.

Aquí indicamos qué pines van a enviar señales y cuáles van a recibirlas.

```cpp
pinMode(TRIG_PIN, OUTPUT);
```

Significa que TRIG va a enviar una señal.

```cpp
pinMode(ECHO_PIN, INPUT);
```

Significa que ECHO va a recibir información.

```cpp
pinMode(LED_PIN, OUTPUT);
```

Significa que el ESP32 podrá encender o apagar el LED.

---

# 4. El Monitor Serie

```cpp
Serial.begin(115200);
```

Esto permite que el ESP32 envíe información al ordenador.

Cuando abras el Monitor Serie en Arduino IDE podrás ver la distancia que está midiendo.

Debes seleccionar:

`115200 baud`

---

# 5. Cómo mide el sensor

El HC-SR04 necesita un pulso muy corto.

Primero apagamos TRIG:

```cpp
digitalWrite(TRIG_PIN, LOW);
```

Después lo encendemos durante 10 microsegundos:

```cpp
digitalWrite(TRIG_PIN, HIGH);
delayMicroseconds(10);
digitalWrite(TRIG_PIN, LOW);
```

Eso hace que el sensor envíe una señal ultrasónica.

---

# 6. Cómo medimos el eco

Esta línea:

```cpp
duracion = pulseIn(ECHO_PIN, HIGH, 30000);
```

mide cuánto tiempo tarda en volver la señal.

Ese tiempo se guarda en la variable `duracion`.

---

# 7. Cómo calculamos la distancia

Después usamos:

```cpp
distancia = duracion * 0.0343 / 2;
```

El sonido viaja aproximadamente a 0,0343 cm por microsegundo.

Dividimos entre 2 porque la señal hace dos viajes:

**sensor → objeto → sensor**

---

# 8. Cómo se enciende el LED

La parte más importante es esta:

```cpp
if (distancia > 0 && distancia < 30)
```

Significa:

**SI la distancia es válida Y es menor de 30 centímetros...**

Entonces:

```cpp
digitalWrite(LED_PIN, HIGH);
```

encendemos el LED.

Si no:

```cpp
digitalWrite(LED_PIN, LOW);
```

lo apagamos.

---

# 9. Cómo cambiar la distancia

Si quieres que el LED se encienda a otra distancia, busca:

```cpp
distancia < 30
```

Puedes cambiar `30` por otro número.

Por ejemplo:

```cpp
distancia < 15
```

hará que el LED se encienda solo cuando algo esté a menos de 15 cm.

O:

```cpp
distancia < 50
```

hará que se encienda antes.

---

# 10. Si no funciona

Comprueba:

- que el código se ha cargado correctamente;
- que has seleccionado la placa ESP32 correcta;
- que has seleccionado el puerto correcto;
- que el Monitor Serie está a 115200;
- que TRIG está en GPIO 5;
- que ECHO está en GPIO 18;
- que el LED está en GPIO 23;
- que el LED está colocado en el sentido correcto.

---

# NUNAIT LABS

No necesitas memorizar todo el código.

Lo importante es empezar a entender qué hace cada parte.

Más adelante podrás cambiarlo y crear tu propia versión.
