if [[ -r /usr/libexec/java_home ]]; then
	export JAVA_HOME=`/usr/libexec/java_home`
fi
export JAVA_OPTS="-Djline.terminal=jline.UnixTerminal"
export PGDATA=/usr/local/var/postgres
#export PYENV_ROOT=/usr/local/var/pyenv
export PAGER="less"
export LESS="-ieMRFXx2"
#export PATH=$HOME/miniconda3/bin:$PATH
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
