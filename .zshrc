pushd -q $ZDOTDIR
source yn.zsh
__yn::git::exists || __yn::git::abort_missing
__yn::ohmyzsh::setup
popd -q
