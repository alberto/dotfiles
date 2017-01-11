# prompt
. ~/.bash_prompt

# aliases
. ~/.aliases

# show colors in bash
export CLICOLOR=1

# Increase the maximum number of lines of history
# persisted in the history file (default value is 500).
export HISTFILESIZE=10000

# Don't add certain commands to the history file.
export HISTIGNORE="&:[bf]g:c:clear:history:exit:q:pwd:* --help"

# Increase the maximum number of commands recorded
# in the command history (default value is 500).
export HISTSIZE=10000


# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history.
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


# load nvm
export NVM_DIR="/Users/alberto/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
