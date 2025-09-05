#!/bin/bash
# Set environment variables
export WINEPREFIX=~/wine-math32
export WINEARCH=win32

# Create the Wine prefix and set Windows version to Windows 10
echo "[*] Creating Wine prefix at $WINEPREFIX (this may take some time)..."
wineboot --init
winetricks settings win10

# Install .NET Framework 3.5 SP1
echo "[*] Installing .NET Framework 3.5 SP1..."
winetricks -q dotnet35sp1

# Install Visual C++ 2008 Redistributable
echo "[*] Installing Visual C++ 2008 Redistributable..."
winetricks -q vcrun2008

# Install GrafEq
echo "[*] Installing GrafEq from /home/sarbajit/Documents/MathPlots/grafeq_setup.exe..."
wine "/home/sarbajit/Documents/MathPlots/grafeq_setup.exe"

# Install Microsoft Mathematics
echo "[*] Installing Microsoft Mathematics from /home/sarbajit/Documents/MathPlots/Math_Setup_x86.exe..."
wine "/home/sarbajit/Documents/MathPlots/Math_Setup_x86.exe"

echo "[✓] Installation complete. You can run the programs using:"
echo "    WINEPREFIX=$WINEPREFIX wine 'C:\\Program Files\\GrafEq\\GrafEq.exe'"
echo "    WINEPREFIX=$WINEPREFIX wine 'C:\\Program Files\\Microsoft Mathematics\\MathApp.exe'"
