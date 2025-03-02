@echo off

cd ..

if exist "Build/" rmdir /s /q "Build"

if not exist "Build/" mkdir "Build"

cd Build

cmake .. -G "Visual Studio 17 2022" -A "x64"