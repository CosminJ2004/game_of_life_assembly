# Conway's Game of Life in Assembly

[![Assembly Logo](https://blog.datawrapper.de/game-of-life/)]
## Overview
This project is an implementation of Conway's Game of Life, written in Assembly. It simulates cellular automata using low-level programming, demonstrating efficient computation and memory management techniques.

## Features
- **Optimized Assembly Code:** Efficiently calculates the next generation of cells.
- **Graphical Output (if applicable):** Displays the evolving grid of cells.
- **User-Defined Initial States:** Modify the starting conditions for unique simulations.
- **Performance-Oriented:** Uses low-level memory manipulation for fast execution.

## Installation
### Prerequisites
Ensure you have the following installed:
- An x86/x86-64 Assembly compiler (NASM, MASM, FASM, etc.)
- An appropriate emulator or debugger (e.g., DOSBox, QEMU, or Bochs for 16-bit code)
- SDL2 (if graphical output is included)

### Setup
1. Clone the repository:
   ```sh
   git clone https://github.com/CosminJ2004/game_of_life_assembly.git
   cd game_of_life_assembly
   ```
2. Assemble and link the code:
   ```sh
   nasm -f elf64 game_of_life.asm -o game_of_life.o
   ld game_of_life.o -o game_of_life
   ```
3. Run the program:
   ```sh
   ./game_of_life
   ```

## Usage
- Modify the initial state in the source file before assembling.
- Run the program and observe the evolution of cells based on Conway's rules.

## Contributing
Feel free to fork the repository and submit pull requests. Contributions to improve efficiency, add features, or expand compatibility are welcome.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact
For any inquiries, feel free to reach out:
- **GitHub:** [CosminJ2004](https://github.com/CosminJ2004)
- **Email:** [Your Email Here]

Enjoy exploring Conway's Game of Life in Assembly! ⚙️

