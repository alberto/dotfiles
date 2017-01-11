#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew tap caskroom/versions

# Install packages
apps=(
  1password
  google-chrome
  spectacle
  clipmenu
  flux
  caffeine
  daisydisk
  disk-inventory-x
  vlc
  transmission
  dropbox
  spotify
  gitter
  libreoffice

  sketch
  diffmerge
  iterm2
  firefox
  atom
  sourcetree
  webstorm
  google-drive
  slack
  sublime-text
  imagealpha
  imageoptim
  visual-studio-code
)
brew cask install "${apps[@]}"
