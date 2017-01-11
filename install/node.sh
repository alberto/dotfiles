touch ~/.bash_profile

command_exists () {
    type "$1" &> /dev/null
}

if ! command -v nvm &> /dev/null; then
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
fi

echo "Installing node LTS versions"
nvm install 4
nvm install 6
nvm alias default 6
