# README

## Descripción del repositorio

Este repositorio contiene una serie de ejercicios prácticos. Cada ejercicio se enfoca en realizar una operación aritmética básica utilizando diferentes tamaños de registros y técnicas de programación en ensamblador.

## Ejercicios

A continuación, se detalla el propósito de cada ejercicio incluido en este repositorio:

### 1. Resta de tres enteros

El objetivo de este ejercicio es implementar un programa en lenguaje ensamblador que realice la resta de tres números enteros. La particularidad radica en que se deben utilizar registros de 16 bits para llevar a cabo los cálculos, lo que implica que los números involucrados deben ser relativamente pequeños para caber en los registros.

- **Descripción:**
  - Primero, se resta el valor del registro bx del valor en ax.
  - Luego, se resta el valor del registro cx del resultado anterior.
  - Finalmente, muestra el resultado en la pantalla.

### 2. Multiplicación

En este ejercicio, se desarrolla un programa que multiplica dos números enteros. A diferencia del ejercicio anterior, en este caso se utilizan registros de 8 bits, lo que limita aún más el rango de números que se pueden manejar.

- **Descripción:**
  - Carga los números en los registros al y cl.
  - Realiza la multiplicación utilizando la instrucción mul.
  - Finalmente, muestra el resultado en la pantalla.

### 3. División

El último ejercicio del repositorio se centra en la operación de división entre dos números enteros. En este caso, se utilizan registros de 32 bits, lo que permite trabajar con números más grandes.

- **Descripción:**
  - El programa carga el divisor y el dividendo en los registros correspondientes.
  - Realiza la división utilizando la instrucción div.
  - Imprime un mensaje y muestra el resultado de la división en la pantalla.
