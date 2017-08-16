# Add user bin folder the path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Coloured BASH with GIT Status
if [ -f ~/.bash_prompt ]; then
  .  ~/.bash_prompt
fi

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# BASH alliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
