## Documentation of the Program

## Description

This script is a system maintenance utility written in Bash. It provides a set of functions for system administration and optimization on Debian/Ubuntu-based systems. The script is distributed under the GNU General Public License (GPL) version 2.0, allowing redistribution and modification under its terms.

## License

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; version 2 of the License.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

## Prerequisites

- Debian or Ubuntu-based operating system.
- Access to a superuser account (sudo) to run administrative commands.
- Command-line tools used: `apt`, `dpkg`, `fsck`, `sysctl`, `find`, `badblocks`, `rsync`, `clamav`, `boot-repair`.

## Features

1. **Update the System**
   - Updates the package list and installs available updates.

2. **Clean Caches and Temporary Files**
   - Removes temporary files and cleans the package cache.

3. **Check for Broken Packages**
   - Configures pending packages and fixes broken packages.

4. **Clean Old Log Files**
   - Removes old log files from the `/var/log` directory.

5. **Check and Repair File System Errors**
   - Checks and repairs file system errors on the root (`/`) directory.

6. **Optimize RAM Usage**
   - Frees up RAM by clearing the cache.

7. **Search and Repair Network Failures**
   - Restarts NetworkManager to fix network issues.

8. **Check Badblocks on a Disk**
   - Checks for defective sectors on a storage device.

9. **Search and Delete Empty Folders**
   - Removes empty directories from the system.

10. **Search for Duplicate Files**
    - Searches for and lists duplicate files.

11. **Recover Files**
    - Synchronizes files from the `home` directory to a specified destination directory.

12. **Disk Cleanup**
    - Cleans temporary files and removes unnecessary packages and old kernels.

13. **Full Antivirus Scan**
    - Installs ClamAV, updates virus definitions, and performs a full system scan.

14. **Repair GRUB**
    - Installs and uses Boot-Repair to fix GRUB issues.

15. **Exit**
    - Exits the program.

## Script Structure

The script is structured into several functions that perform different maintenance tasks and a main loop that displays a menu for the user and executes the selected options.

### Functions

1. **seletor_idioma()**
   - Displays the language selection menu.

2. **definir_mensagens()**
   - Sets the script messages based on the chosen language.

3. **limpar_arquivos_temporarios()**
   - Removes temporary files, unnecessary packages, and old kernels.

4. **verificar_antivirus()**
   - Installs ClamAV, updates virus definitions, and performs a full system scan.

5. **reparar_grub()**
   - Installs Boot-Repair and repairs GRUB issues.

6. **executar_acao()**
   - Executes the action corresponding to the selected menu option.

### Menu Options

The main menu is displayed for the user to select one of the maintenance options. Each option is linked to a specific function executed when selected.

### Main Loop

The main loop of the script displays the menu and reads user input to execute the corresponding function. The loop continues until the user selects the option to exit (`15`).

## Usage Examples

To update the system:

```bash
./maintenance.sh
Choose the language: 1
Enter your choice: 1
```

To check badblocks on a disk:

```bash
./maintenance.sh
Choose the language: 1
Enter your choice: 8
Enter the device path to check (e.g., /dev/sda): /dev/sda
```

To perform a full antivirus scan:

```bash
./maintenance.sh
Choose the language: 1
Enter your choice: 13
```

## Notes

- Make sure to run the script with appropriate permissions to avoid access errors.
- The function for searching duplicate files can be implemented with the `fdupes` command if necessary.
- The function to search and repair network failures restarts NetworkManager, which may not fix all network issues.

---

If you need any further adjustments or additional information, feel free to ask!
