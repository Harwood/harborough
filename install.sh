#! /usr/bin/env sh

###
# Initialize new macOS install using yadm <https://thelocehiliosan.github.io/yadm>
# utilizing a Keybase <https://keybase.io> encrypted repository
###

## Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Install Keybase
brew cask install keybase
keybase login harwood

## Install yadm
brew install yadm

## yadm clone --bootstrap <repo_url>
yadm clone --bootstrap keybase://private/harwood/harborough