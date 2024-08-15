## Program Documentation

## Description

This script is a system maintenance utility written in Bash. It offers a range of functions for the administration and optimization of Debian/Ubuntu-based systems. The script is distributed under the GNU General Public License (GPL) version 2.0, which allows redistribution and modification under the terms of that license.

## License

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

## Prerequisites

- Debian or Ubuntu-based operating system.
- Superuser (sudo) access to run administrative commands.
- Command-line tools used: `apt`, `dpkg`, `fsck`, `sysctl`, `find`, `badblocks`, `rsync`.

## Features

1. **Update System**
   - Updates the package list and installs available updates.

2. **Clear Caches and Temporary Files**
   - Removes temporary files and clears the package cache.

3. **Check for Broken Packages**
   - Configures pending packages and fixes broken packages.

4. **Clear Old Log Files**
   - Removes old log files in the `/var/log` directory.

5. **Check and Repair Filesystem Errors**
   - Checks and repairs errors in the root (`/`) filesystem.

6. **Optimize RAM Usage**
   - Frees up RAM by clearing the system cache.

7. **Check for Bad Blocks on a Disk**
   - Checks for defective sectors on a storage device.

8. **Recover Files**
   - Synchronizes files from the `home` directory to a specified destination directory.

9. **Delete Empty Folders**
   - Removes empty directories from the `home` directory.

10. **Search and Delete Empty Folders**
    - Removes empty directories from the `home` directory.

11. **Search for Duplicate Files**
    - Function not implemented.

12. **Exit**
    - Exits the program.

## Script Structure

The script is structured into several functions that perform different maintenance tasks and a main loop that displays a menu for the user and executes the selected options.

### Functions

1. **update_system()**
   - Updates the package list and upgrades installed packages.

2. **clear_cache()**
   - Executes `apt autoclean` and `apt autoremove` to clear caches and unnecessary files.

3. **check_packages()**
   - Uses `dpkg` and `apt` to fix broken packages.

4. **clear_logs()**
   - Removes old log files using `find`.

5. **check_filesystem()**
   - Runs `fsck` to check and fix filesystem errors.

6. **optimize_memory()**
   - Clears memory caches using `sysctl`.

7. **check_badblocks()**
   - Prompts the user for the device path and checks for bad blocks.

8. **recover_files()**
   - Uses `rsync` to recover files from the `home` directory to a specified destination.

9. **delete_empty_folders()**
   - Removes empty directories from the `home` directory.

10. **search_duplicate_files()**
    - Function not implemented.

11. **search_repair_network()**
    - Function not implemented.

### Options Menu

The main menu is displayed for the user to select one of the maintenance options. Each option is associated with a specific function that is executed when the option is selected.

### Main Loop

The script's main loop displays the menu and reads the user's input to execute the corresponding function. The loop continues until the user selects the option to exit (`12`).

## Usage Examples

To update the system:

```bash
./maintenance.sh
Select option 1.
```

To check for bad blocks on a disk:

```bash
./maintenance.sh
Select option 8 and enter the device path.
```

## Notes

- Be sure to run the script with appropriate permissions to avoid access errors.
- The function to search for duplicate files and repair the network is not implemented and may be added in future versions.

---

Feel free to adjust the text as needed to suit specific requirements or to add more details.
