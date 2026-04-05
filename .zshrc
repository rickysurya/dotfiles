# aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto'

if [[ -x $(command -v pokemon-colorscripts) ]]; then
    # --no-title: removes the big text name
    pokemon-colorscripts -n gengar --no-title
fi

# run fastfetch but tell it not to try and draw its own logo
fastfetch --logo none

# clean prompt: [directory] 
PROMPT='%F{cyan}%~%f %F{purple}❯%f '
