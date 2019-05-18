1.0 ¿Que es micro-latch ? 

micro latch es la conjunción de un harware barato (ESP2688),un firmwarede código abierto( nodemcu), y un pequeño plugin para esta plataforma.

¿Que se puede hacer con micro-latch?

"Latchearlo todo" de una manera sencilla ,rápida,y económica. Podemos latchear cualquier dispositivo que se nos pase por la cabeza.... 
Bien como vector de seguridad extra o telemando seguro.


Por poner un par de ejemplos: 



¿Por que de micro-latch? micro-latch nace por una necesidad personal del que os escribe, tras trastear con latch en su ámbito iOT , y dado a que NO soy una persona con muchos recursos, me negaba a dejar parado mi adruino o raspberri para solo mantener mis servicios latch y busqué una alternativa más económica...

¿Alternativas a micro-latch? Desde luego...y con el tiempo habrán muchas más como por ejemplo  Latch plugin for Mosquitto 


2.0 HARDWARE

ESP8266-01
El ESP8266 es un chip Wi-Fi de bajo coste con pila TCP / IP completa y capacidad de MCU (Micro Controller Unit) producida por el fabricante chino de Espressif Systems.

Procesador interno de 32 bits a 80 MHz y se le puede subir hasta 160Mhz.
80K de DRAM.
35K de IRAM , memoria rápida para el procesador.
1 Mb de memoria Flash para nuestros programas.
Stack TCPIP WIFI a 2.4 Ghz.
30 Metros de alcance teórico.
16 pines GPIO programables disponibles.
Full TCPIP stack incluido.
Gestión completa del WIFI con amplificador incluido.
802.11 protocol y Wifi Direct (P2P) Soft-AP.
Regulador y unidad de alimentación incluidos.
Consumo en reposo <10 mW.
Soporta antena externa para mayor alcance.
Soporta el bus SPI.
1 entrada analógica (Muy mal documentada)
hay modelos mas ambiciosos para proyectos mas grandes; dado su tamaño,portabilidad y consumo mínimo lo hace el candidato perfecto para integrar en cualquier dispositivo o montaje.
3.0 FIRMWARE

NODECU-firmware Uno de los proyectos mas interesantes que han surgido alrededor de ESP8266 es NodeMcu. Nos permite programar usando el lenguaje interpretado Lua. Sus mayores ventajas; La api integrada de lua permite hacer cosas relativamente complejas con pocas lineas, soporta la negociación https y tiene un modulo crypto muy completo de forma nativa.
NODEMCU API
http://nodemcu.readthedocs.io/en/master/


MICRO-LATCH plugin: Actualmente en su fase beta, proporciona una fácil integración con Latch y el dispositivo cliente, mediante un fronten web. Configurable 100% y simple. Pronto lo tendréis listo para su descarga en nuestro repo https://github.com/hackplayers .
MODULOS COMPILADOS PARA MICROLACH
crypto,file,gpio,http,net,node,rtctime,sntp,tmr,uart,websocket,wifi,tls

.
