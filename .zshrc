pushd -q $ZDOTDIR
source yn.zsh
__yn::git::exists ||__yn::git::abort_missing
__yn::rvm::setup
__yn::ohmyzsh::setup
__yn::zpl::setup
popd -q

### Added by Zplugin's installer
source '/Users/yn/.zsh/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
