### Security & Privacy

  # General: Require password: on
  defaults write 'com.apple.screensaver' 'askForPassword' -int 1

  # General: Require password: 2 seconds after sleep or screen saver begins
  defaults write 'com.apple.screensaver' 'askForPasswordDelay' -int 5

### Sound

  # Sound Effects: Select an alert sound
  defaults write 'com.apple.systemsound' 'com.apple.sound.beep.sound' -string '/System/Library/Sounds/Morse.aiff'


### Finder > Preferences… > General
  # New Finder windows show: ${HOME}
  defaults write 'com.apple.finder' 'NewWindowTarget' -string 'PfHm'
  defaults write 'com.apple.finder' 'NewWindowTargetPath' -string "file://${HOME}/"

### Finder > Preferences… > Advanced

  # Show all filename extensions: on
  defaults write -g 'AppleShowAllExtensions' -bool true

  # show hidden files
  defaults write 'com.apple.finder' 'AppleShowAllFiles' -bool true

  # show file extensions
  defaults write -g 'AppleShowAllExtensions' -bool true

  # Show warning before emptying the Trash: on
  defaults write 'com.apple.finder' 'WarnOnEmptyTrash' -bool false

  # Always open everything in Finder's list view. This is important.
  # Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
  defaults write 'com.apple.Finder' 'FXPreferredViewStyle' -string 'Nlsv'


  # Finder: show status bar
  defaults write com.apple.finder ShowStatusBar -bool true

  # Finder: show path bar
  defaults write com.apple.finder ShowPathbar -bool true

  # Finder: allow text selection in Quick Look
  defaults write com.apple.finder QLEnableTextSelection -bool true

  # Show the ~/Library folder
  chflags nohidden ~/Library

  # Minimize windows into their application’s icon
  defaults write com.apple.dock minimize-to-application -bool false

  # Show indicator lights for open applications in the Dock
  defaults write com.apple.dock show-process-indicators -bool true

  # Display full POSIX path as Finder window title
  defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

  # Keep folders on top when sorting by name
  defaults write com.apple.finder _FXSortFoldersFirst -bool true

  # When performing a search, search the current folder by default
  defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

  # Disable the warning when changing a file extension
  defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

  # Avoid creating .DS_Store files on network or USB volumes
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true


### Keyboard
  # Set a really fast keyboard repeat rate.
  defaults write -g 'KeyRepeat' -int 0

  # Disable press-and-hold for keys in favor of key repeat.
  defaults write -g 'ApplePressAndHoldEnabled' -bool false

  # Disable smart quotes as they’re annoying when typing code
  defaults write -g 'NSAutomaticQuoteSubstitutionEnabled' -bool false

  # Disable smart dashes as they’re annoying when typing code
  defaults write -g 'NSAutomaticDashSubstitutionEnabled' -bool false

  # Enable full keyboard access for all controls
  # (e.g. enable Tab in modal dialogs)
  defaults write -g 'AppleKeyboardUIMode' -int 3

  # Stop iTunes from responding to the keyboard media keys
  launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

  # ==============================================
  # Trackpad
  # ==============================================

  # Tap to click
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

  # Tap with two fingers to emulate right click
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

  ###############################################################################
  # Screen                                                                      #
  ###############################################################################


  # Save screenshots to the desktop
  #defaults write 'com.apple.screencapture' 'location' -string "${HOME}/Desktop"

  # Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
  defaults write 'com.apple.screencapture' type -string "png"

  # Disable shadow in screenshots
  defaults write 'com.apple.screencapture' disable-shadow -bool true

  # Enable subpixel font rendering on non-Apple LCDs
  defaults write -g 'AppleFontSmoothing' -int 2

### Tray
  # show battery percentage
  defaults write com.apple.menuextra.battery ShowPercent -string 'YES'

killall Dock Finder
