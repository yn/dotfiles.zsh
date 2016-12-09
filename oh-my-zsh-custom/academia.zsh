YN_ACADEMIA_BASE=~/code/mine/academia/projects
export ACADEMIA_APP=$YN_ACADEMIA_BASE/academia-app
export ACADEMIA_CONFIG=$YN_ACADEMIA_BASE/config
export ACADEMIA_SHELL=$YN_ACADEMIA_BASE/academia-shell
export ACADEMIA_ZOO=$YN_ACADEMIA_BASE/academia-zoo
export ACADEMIA_EC2_KEYS=$YN_ACADEMIA_BASE/academia-ec2
export ACADEMIA_LDAP_USERNAME=yuri
emulate -R zsh -c 'autoload -Uz is-at-least'
if is-at-least 5.0.0; then
    emulate -R sh -o kshglob +o shglob +o ignorebraces -o bash_rematch -c '
        function bash_source {
            source "$@"
        }
    '
else
    emulate -R sh -c '
        function bash_source {
            # Do note that functions about to be defined will not be set
            # with these options when run
            setopt kshglob noshglob braceexpand bash_rematch
            source "$@"
        }
    '
fi
#bash_source $ACADEMIA_SHELL/academia-shell.sh
