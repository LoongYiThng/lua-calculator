# lua-calculator
A command line utility built with Lua that serves as a calculator capable of an infinitely long string of operations.
Each prompt for a number by the calculator is able to handle numbers as large as allowed by Lua's number datatype limitations. (see here https://www.lua.org/pil/2.3.html).

This program is most useful for the fast calculation of a simple equation due to its sequentially calculated nature and terse language.

## Installation

This program only requires Lua to be installed. 

Installing Lua for Linux: https://www.lua.org/download.html

Installing Lua for Windows: https://github.com/rjpcomputing/luaforwindows

## Usage

To start the application, use the Lua software or executable to run the calculator.lua file.

Startup command for Linux:
```zsh
lua calculator.lua
```

Startup command for Windows:
```powershell
lua.exe calculator.lua
```

The program will then continually prompt you either for the numbers or for the operation you intend to perform sequentially, calculating your inputs one by one into a total.
So if you are working with an equation that requires some order of operations please be mindful to modify your inputs accordingly to get the correct result.

example usage:

```
enter number 1: 6
enter operation: plus
enter number 2: 3
enter operation: exit
exited
total: 9
```

The calculator also features the ability to reset its calculated total and clear all previous attempted operations

```
enter number 1: 6
enter operation: plus
enter number 2: 3
enter operation: clear
all previous input cleared
enter number 1: 3
enter operation: plus
enter number 2: 3
enter operation: exit
exited
total: 6
```

## Supported operations
Supported mathematical operations are shown in the table below.
Please note that I have no idea if the modulo operation works or not, it always returns zero so perhaps I misunderstood Lua's documentation on the mathematical library.
Although I allow for it to remain there for usage if I intend to fix it in the future, it is highly unlikely that I will return to work on this.

| operation name | mathematical operation performed |
|----------------|----------------------------------|
| plus           | addition                         |
| minus          | subtraction                      |
| times          | multiplication                   |
| divide         | division                         |
| power          | exponentiation                   |
| modulo         | modulo                           |
