# SA-MP / Open.MP Portable Compiler & Server Manager

A lightweight, portable batch script designed to streamline the compilation and testing process for SA-MP and Open.MP gamemodes. 

## Features

* **Portable (Relative Paths):** You can move your server folder anywhere (or to another PC) without needing to reconfigure the directory paths.
* **Bypass Qawno Timeout:** Compiles large gamemodes (like those heavily using YSI) directly via `pawncc.exe` in CMD, preventing Qawno editor freezes or timeout errors.
* **Isolated Server Window:** Runs the Open.MP server (`omp-server.exe`) in a separate console window. When you stop the server (Ctrl+C or close), the main menu stays open without the annoying "Terminate batch job (Y/N)?" prompt.
* **All-in-One Menu:** Clean and interactive UI to compile, run, and close the environment.

## Usage

1. Place the `compile.bat` file in your main server root directory (the same folder as `omp-server.exe`).
2. Ensure your `gamemodes` and `qawno` folders are correctly placed in the root directory.
3. Double-click `compile.bat` to open the manager.
4. Choose an option from the menu!

## ⚙️ Requirements
* [Open.MP Server](https://open.mp/) or standard SA-MP Server.
* Pawn Compiler (`pawncc.exe`) located inside the `qawno` folder.

---
*Created to help the SA-MP & Open.MP scripting community work faster and more efficiently.*
