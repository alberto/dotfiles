#/bin/bash
cd ~/dotfiles
FILES=`ls -l1 .[^.]*`
for file in $FILES; do
  sourceFile="$(pwd)/$file"
  targetFile="$HOME/$file"
  ln -sf "$sourceFile" "$targetFile"
done
