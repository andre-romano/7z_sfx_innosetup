# 7-zip SFX with InnoSetup stub

SFX file to decompress data and autorun scripts after decompression

## How to use

1. Compress data into a `data.7z` file (using 7zip)
2. Place a `data.ps1` file in the same directory
3. Run `data.exe`
    - `data.exe` will decompress ``data.7z`` and run `data.ps1` after decompression automatically, passing to it the TEMP folder used as output of the decompression