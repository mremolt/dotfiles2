# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cap deb debian gem git history-substring-search rails bundler rbenv ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# rbenv init
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=${PATH}:/home/mremolt/workspace/adt-bundle/sdk/platform-tools:/home/mremolt/workspace/adt-bundle/sdk/tools

export EDITOR="/usr/bin/vim"
export CFLAGS="-march=native -O3 -pipe -fomit-frame-pointer"
export RUBY_CFLAGS="-march=native -O3 -fno-fast-math -ggdb3 -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wunused-variable -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration"
# export RUBY_GC_MALLOC_LIMIT=1000000000
# export RUBY_FREE_MIN=500000
# export RUBY_HEAP_MIN_SLOTS=40000
export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward]]

# Aliases
unalias ag
alias tmux='tmux -2'

export PATH="$HOME/elixir/bin:$PATH"

function paskill() {
  kill $(netstat -tlpn 2>/dev/null | grep '0.0.0.0:3000' | awk '{print $7}' | sed 's/[^0-9]//g')
}





[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
