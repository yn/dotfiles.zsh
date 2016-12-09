pushd -q $ZDOTDIR
source yn.zsh
__yn::git::exists ||__yn::git::abort_missing
__yn::rvm::setup
__yn::ohmyzsh::setup
__yn::zpl::setup
popd -q
