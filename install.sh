#! /usr/bin/env sh

###
# Initialize new macOS install using yadm <https://thelocehiliosan.github.io/yadm>
# utilizing a Keybase <https://keybase.io> encrypted repository
###

## Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Fish Shell
brew install fish
mkdir -p ~/.config/fish
git clone https://gist.github.com/a0e1dcca64509cc35276a3dcffd69ea3.git ~/.config/fish/functions
curl -L https://get.oh-my.fish | fish # Oh My Fish 

## Krypton
brew install kryptco/tap/kr
kr pair
kr codesign

## Install Keybase
brew cask install keybase
keybase login harwood

## Install yadm
brew install yadm

## yadm clone --bootstrap <repo_url>
yadm clone --bootstrap --recurse-submodules keybase://private/harwood/harborough

## Install vim
brew install jq vim
git clone https://gist.github.com/1c7a827b565390f3f7a07f668f04f13a.git ~/.SpaceVim.d
curl -sLf https://spacevim.org/install.sh | bash -s -- --install vim
git -C ~/.SpaceVim checkout $(curl -s https://api.github.com/repos/SpaceVim/SpaceVim/releases | jq 'max_by(.tag_name)' | jq -r '.tag_name')
