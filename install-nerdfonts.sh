#!/bin/bash

# Create fonts directory if it doesn't exist
mkdir -p ~/.fonts

# Array of font URLs
FONTS=(
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ZedMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Ubuntu.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/UbuntuMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/UbuntuSans.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/VictorMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/SourceCodePro.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/SpaceMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/NerdFontsSymbolsOnly.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Terminus.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Tinos.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Recursive.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/RobotoMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ShareTechMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/OpenDyslexic.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Overpass.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ProFont.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ProggyClean.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Monoid.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Mononoki.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/MPlus.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Noto.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/MartianMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Monaspace.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Monofur.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Lekton.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/LiberationMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Lilex.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/InconsolataLGC.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/IntelOneMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Iosevka.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/IosevkaTerm.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/IosevkaTermSlab.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hermit.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/iA-Writer.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Inconsolata.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/InconsolataGo.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Gohu.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hack.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hasklig.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/HeavyData.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/GeistMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Go-Mono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DroidSansMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/EnvyCodeR.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FantasqueSansMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/D2Coding.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DaddyTimeMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DepartureMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/DejaVuSansMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/0xProto.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/3270.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Agave.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/AnonymousPro.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Arimo.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/AurulentSansMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/BigBlueTerminal.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/BitstreamVeraSansMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/IBMPlexMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaCode.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CodeNewRoman.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ComicShannsMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CommitMono.zip"
  "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Cousine.zip"
  "https://github.com/epk/SF-Mono-Nerd-Font/archive/refs/heads/master.zip"
)

# Download and install each font
for font in "${FONTS[@]}"; do
  echo "Downloading and installing $(basename "$font")..."
  wget "$font" -P /tmp
  unzip -o "/tmp/$(basename "$font")" -d ~/.fonts/
  rm "/tmp/$(basename "$font")"
done

# Refresh font cache
fc-cache -f -v

echo "All fonts have been installed!"
