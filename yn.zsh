# vim: ts=2 sw=2 et
yn::ohmyzsh::setup() {
  export ZSH="${ZDOTDIR:-$HOME}/.oh-my-zsh"
  if ! test -d "$ZSH/.git"; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi;
  source "${ZDOTDIR:-$HOME}/ohmyzsh.zshrc"
}

yn::zpl::setup() {
  export ZPLG_HOME="${ZDOTDIR:-$HOME}/.zplugin"
  if ! test -d "$ZPLG_HOME/bin/.git"; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/yn/zplugin/master/doc/install.sh)"
  fi;
}

yn::rvm::setup() {
  [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
}

