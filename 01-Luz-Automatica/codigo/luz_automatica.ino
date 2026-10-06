// NUNAIT LABS
// Proyecto 01 - Luz Automática Inteligente

#define TRIG_PIN 5
#define ECHO_PIN 18
#define LED_PIN 23

long duracion;
float distancia;

void setup() {
  pinMode(TRIG_PIN, OUTPUT);
  pinMode(ECHO_PIN, INPUT);
  pinMode(LED_PIN, OUTPUT);

  Serial.begin(115200);
}

void loop() {
  // Preparamos el sensor
  digitalWrite(TRIG_PIN, LOW);
  delayMicroseconds(2);

  // Enviamos un pulso ultrasónico
  digitalWrite(TRIG_PIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG_PIN, LOW);

  // Medimos cuánto tarda en volver el eco
  duracion = pulseIn(ECHO_PIN, HIGH, 30000);

  // Convertimos ese tiempo en centímetros
  distancia = duracion * 0.0343 / 2;

  // Mostramos la distancia en el Monitor Serie
  Serial.print("Distancia: ");
  Serial.print(distancia);
  Serial.println(" cm");

  // Si hay algo a menos de 30 cm, encendemos el LED
  if (distancia > 0 && distancia < 30) {
    digitalWrite(LED_PIN, HIGH);
  } else {
    digitalWrite(LED_PIN, LOW);
  }

  delay(100);
}
