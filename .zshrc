# source ~/.bash_profile
PROMPT=' tj %1~ %# '
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias -g gu="/Library/Java/JavaVirtualMachines/graalvm-ce-java11-21.1.0/Contents/Home/bin/gu"
export PATH="/home/gejun/anaconda3/bin:$PATH"
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
PATH="/usr/local/bin/python3:${PATH}"
# export PYTHONHOME=/usr/local
# export PYTHONPATH="/usr/local/lib/python3.10/site-packages"


# Path for racket
PATH="/usr/local/bin/racket:${PATH}"
PATH="/usr/local/bin/raco:${PATH}"
# Brew path
export PATH="/usr/local/bin:$PATH"
export PATH
# if [ -f ~/.bash_profile ]; then
#   . ~/.bash_profile
# fi
mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
set -o vi
eval $(opam env)
# Brew told me to
source "/usr/local/opt/chruby/share/chruby/chruby.sh"
export GEM_HOME="$HOME/.gem"


# export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/opt/node@18/bin:$PATH"
export PATH="/usr/local/opt/llvm@11/bin:$PATH"
# export PATH="/usr/local/opt/llvm/bin:$PATH"

# Created by `pipx` on 2022-05-23 21:16:42
export PATH="$PATH:/Users/tommyjoseph/.local/bin"
