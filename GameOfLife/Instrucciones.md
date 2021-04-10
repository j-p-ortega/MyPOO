# Juego de la Vida

## Descripción

Esta es una implementación del [Juego de la Vida de Conway](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) que involucra la creación
de una clase: la clase 'celula'.

En el archivo 'ClaseCelula.pde' se encuentra la descripción e implementación de la clase creada. En
'FuncionesAuxiliares.pde' están las funciones usadas para el correcto funcionamiento del juego (por ejemplo,
las funciones que son llamadas cuando el usuario interactúa). Y en 'GameOfLife.pde' está la columna
vertebral del programa.

## Cómo jugar

El juego se juega a sí mismo con un arreglo de celulas inicial aleatorio al reproducir el archivo 'GameOfLife.pde'. Los controles
son los siguientes:

Pausar/despausar el juego: Barra espaciadora.

Cambiar el estado de una célula: Hacer click en ella.

Cambiar el estado de un grupo de celulas: Arrastrar el mouse sobre el grupo de células con el click oprimido (no hace falta 
clickear cada célula individualmente). 

Matar a todas las células vivas: Letra 'B'.

Randomizar el arreglo actual: Letra 'R'.

Cambiar el arreglo actual por un patrón predefinido: Teclas '1','2','3' y '4'.

Cambiar la velocidad del juego: Teclas +/-.

## Arreglos predefinidos

### Patrón 1: Vida estática.

Al presionar la tecla '1', el arreglo de células se transforma en un patrón de vida estática predefinido; es decir, uno que se 
mantiene invariante con el paso de los turnos.

### Patrón 2: Pentadecathlon.

Al presionar la tecla '2', el arreglo de células se transforma en un patrón pentadecathlon; es decir, un oscilador de periodo 15, 
lo cual significa que cada quince turnos vuelve al arreglo original.

### Patrón 3: Glider.

Al presionar la tecla '3', el arreglo de células se transforma en un arreglo tipo Nave Espacial conocido como Glider, que se
desplaza a lo largo de la pantalla y se aleja del punto de partida con cada turno.

### Patrón 4: Gosper Glider Gun:

Al presionar la tecla '4', el arreglo de células se transforma en un patrón conocido como Gosper Glider Gun, que es esencialmente
una máquina que genera Gliders cada cierta cantidad de turnos.


