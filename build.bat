@echo off

rm dist/*.exe
ISCC.exe data.iss
.\upx\upx.exe --best --lzma dist/data.exe