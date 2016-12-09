if type "trash" > /dev/null; then
	alias rm=trash
fi
alias ec='emacsclient -n'
MACOS_EMACS=/usr/local/Cellar/emacs/25.1/Emacs.app/Contents/MacOS/Emacs

cv-emacs () {EMACS=CV $MACOS_EMACS $* &;disown}
yn-emacs () {EMACS=YN $MACOS_EMACS $* &;disown}
merged-emacs () {EMACS=MERGED $MACOS_EMACS $* &;disown}
org-emacs () {EMACS=ORG $MACOS_EMACS $* &;disown}
# debug-emacs-1 () {ORG_FILES=debug ORG_CODE=stable ORG_CONFIG=debug EMACS=ORG $MACOS_EMACS $* &;disown}
# debug-emacs-2 () {ORG_FILES=debug ORG_CODE=dev ORG_CONFIG=debug EMACS=ORG $MACOS_EMACS $* &;disown}

if type "gls" > /dev/null; then
	alias ls="gls -v --color=auto"
fi
alias ag="ag -S --hidden"
alias berc="bundle exec rails console"
alias mmir='git checkout master && git push && git checkout release && git fetch && git reset --hard origin/release && git merge master -m "mmir" && git push && be cap production deploy && git checkout master'
unalias gcp

debug-emacs () {
  if type "gcp" > /dev/null; then
    SRC_PATH=/usr/local/Cellar/emacs/24.4/Emacs.app
    IPS_PATH=Contents/Resources/English.lproj/InfoPlist.strings
    EA_TYPE=Debug-Emacs-$1
    shift
    TMP_DE=$(mktemp -d /tmp/debug-emacs.XXXXXX) || { echo "Failed to create temp file"; return 1; }
    DST_PATH=$TMP_DE/$EA_TYPE.app
    gcp -rl $SRC_PATH $DST_PATH
    \rm $DST_PATH/$IPS_PATH
    cp $SRC_PATH/$IPS_PATH $DST_PATH/$IPS_PATH
    perl -p -i -e "s/Emacs/$EA_TYPE/" $DST_PATH/$IPS_PATH
    open -n -a $DST_PATH --args $*
  else
    echo "Must have gcp on path"
  fi
}

debug-emacs-1 () {
  export ORG_FILES=debug ORG_CODE=stable ORG_CONFIG=debug EMACS=org
  debug-emacs 1 $*
}
debug-emacs-2 () {
  export ORG_FILES=debug ORG_CODE=dev ORG_CONFIG=debug EMACS=org
  debug-emacs 2 $*
}
