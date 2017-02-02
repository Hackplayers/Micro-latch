1.0 What is micro-latch?

Micro latch is the conjunction of cheap hardware (ESP2688), an open-source firmwarede (nodemcu), and a small plugin for this platform.

What can be done with micro-latch?

"Latchearlo todo" in a simple, fast, and inexpensive way. We can latchear any device that we passed through the head .... Well as vector extra security or remote control.

To put a couple of examples:

Why micro-latch? Micro-latch is born by a personal need of the one who writes to you, after flogging with latch in its iOT environment, and given that I am not a person with many resources, I refused to leave stopped my adruino or raspberri to just keep my services latch and I looked for a cheaper alternative ...

Alternatives to micro-latch? Of course ... and over time there will be many more such as Latch plugin for Mosquitto

2.0 HARDWARE

ESP8266-01 The ESP8266 is a low-cost Wi-Fi chip with full TCP / IP stack and MCU (Micro Controller Unit) capability produced by the Chinese manufacturer of Espressif Systems.

Internal 32-bit processor at 80 MHz and can be uploaded up to 160Mhz. 80K of DRAM. 35K IRAM, fast memory for the processor. 1 Mb of Flash memory for our programs. Stack TCPIP WIFI at 2.4 Ghz. 30 Meters theoretical range. 16 programmable GPIO pins available. Full TCPIP stack included. Complete WIFI management with built-in amplifier. 802.11 protocol and Wifi Direct (P2P) Soft-AP. Regulator and power supply included. Standby power <10 mW. Supports external antenna for longer range. Supports the SPI bus. 1 analog input (Very poorly documented) there are more ambitious models for larger projects; Given its size, portability and minimal consumption makes it the perfect candidate to integrate into any device or assembly. 3.0 FIRMWARE

NODECU-firmware One of the most interesting projects that have arisen around ESP8266 is NodeMcu. It allows us to program using the interpreted Lua language. Its greatest advantages; The integrated lua api allows to do relatively complex things with few lines, supports the negotiation https and has a very complete crypto module natively. NODEMCU API http://nodemcu.readthedocs.io/en/master/

MICRO-LATCH plugin: Currently in its beta phase, it provides easy na integration with Latch and the client device, using a fronten web. Configurable 100% and simple. Soon you will have it ready for download in our https://github.com/hackplayers repo. COMPILED MODULES FOR MICROLACH crypto, file, gpio, http, net, node, rtctime, sntp, tmr, uart, websocket, wifi, tls
