# Remove the Wine prefix
rm -rf ~/wine-math32

# Remove application shortcuts (desktop entries)
rm -rf ~/.local/share/applications/wine
rm -rf ~/.local/share/desktop-directories/wine*
rm -rf ~/.local/share/icons/*wine*
rm -rf ~/.config/menus/applications-merged/wine*

# Optional: remove cached installers (saves disk space)
rm -rf ~/.cache/winetricks
