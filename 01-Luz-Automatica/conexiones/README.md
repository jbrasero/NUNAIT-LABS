# Conexiones — Proyecto 01

Aquí encontrarás los esquemas de conexión del proyecto **Luz Automática Inteligente**.

## Archivos

- `esquema-conexiones.png`  
  Vista general del montaje completo.

- `esquema-conexiones.pdf`  
  Versión en PDF para verla en grande o imprimirla.

- `detalle-led.png`  
  Detalle de cómo conectar el LED y su resistencia de 220 Ω.

- `detalle-echo-divisor.png`  
  Detalle de cómo conectar el pin ECHO del HC-SR04 al ESP32 utilizando las resistencias de 1 kΩ y 2 kΩ.

## Conexiones principales

### HC-SR04

- VCC → 5V del ESP32
- GND → GND del ESP32
- TRIG → GPIO 5
- ECHO → resistencia de 1 kΩ → punto compartido → GPIO 18
- punto compartido → resistencia de 2 kΩ → GND

### LED

- GPIO 23 → ánodo del LED
- cátodo del LED → resistencia de 220 Ω → GND

## Importante

No conectes el pin ECHO del HC-SR04 directamente al ESP32.

Utiliza siempre el divisor de tensión indicado en el esquema.

Antes de conectar el ESP32 al ordenador, revisa todas las conexiones.

Consulta también el capítulo correspondiente del libro **NUNAIT LABS — Construye. Programa. Inventa.**
