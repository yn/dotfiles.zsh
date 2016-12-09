# vim: ts=2 sw=2 et
__yn::git::exists() {
  command -v git >/dev/null 2>&1 
}

__yn::git::abort_missing() {
  echo >&2 "Git is not installed."
  exit 1
}

__yn::ohmyzsh::setup() {
  export ZSH="${ZDOTDIR:-$HOME}/.oh-my-zsh"
  if ! test -d "$ZSH/.git"; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi;
  source "${ZDOTDIR:-$HOME}/ohmyzsh.zshrc"
}

__yn::zpl::setup() {
  export ZPLG_HOME="${ZDOTDIR:-$HOME}/.zplugin"
  if ! test -d "$ZPLG_HOME/bin/.git"; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/psprint/zplugin/master/doc/install.sh)"
  fi;
}

__yn::rvm::setup() {
  [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
}
