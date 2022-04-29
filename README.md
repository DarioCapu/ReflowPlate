# ReflowPlate

---

## Información sobre la técnica

La idea general es seguir el perfil de temperatura en la parte superior del PCB.

- Artículo sobre [Reflow](https://www.compuphase.com/electronics/reflowsolderprofiles.htm)

---

## Caracterización del sensor de temperatura

Medición de la resistencia en función de la temperatura

<img src="/NTC/NTC_resistencia_vs_temperatura.png" width="500"/>

La [caracterización](https://docs.google.com/spreadsheets/d/1-RvlA-grsIiiUgjizpUGiVOSZX-gMTfZjR6k9xNPSr8/edit?usp=sharing) del sensor de temperatura se hizo en dos tramos. De 0 a 100°C y de 100 a 300°C. Utilizando la función polyfit de octave se obtuvieron los coeficientes para la aproximación lineal por cuadrados mínimos.

|    Tramo    |   a1   |    a2     |
|:-----------:|:------:|:---------:|
|  0 a 100°C  | 0.7315 | -19.71525 |
| 100 a 300°C | 4.1002 | -377.2170 |

<img src="/NTC/NTC_cuenta_vs_temperatura.png" width="500"/>

<img src="/NTC/NTC_medicion_01.png" width="500"/>

Todas las imágenes de la caracterización están en el [drive](https://drive.google.com/drive/folders/1haFe0wOA7xZrg_-eInfIcUbAJK93i5PH?usp=sharing) :floppy_disk: :cloud: .

---

## Electrónica
