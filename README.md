# 7-zip SFX with InnoSetup stub

SFX file to decompress data and autorun scripts after decompression

## Building SFX executable

1. Open `data.iss` in InnoSetup Compiler
2. Compile it into ``data.exe`` file (SFX executable file)

## Download SFX executable

You can download the most recent compiled version in the [Releases](https://github.com/andre-romano/7z_sfx_innosetup/releases) page (in right side of this page).

## How to use

1. Compress data into a `data.7z` file (using 7zip)
2. Place a `data.ps1` file in the same directory
3. Run `data.exe`
    - `data.exe` will decompress ``data.7z`` and run `data.ps1` after decompression automatically, passing to it the TEMP folder used as output of the decompression
  

## Special thanks / Acknowledgments

- [7zip project](https://www.7-zip.org/)
- [InnoSetup](https://jrsoftware.org/isinfo.php)

## Copyright

Copyright (C) [2025] Andre Luiz Romano Madureira

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program (see [./LICENSE](./LICENSE) file). If not, see <https://www.gnu.org/licenses/>.
