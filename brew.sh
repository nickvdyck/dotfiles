#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names
# Install htop
brew install htop

#Install z <3
brew install z

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
# brew tap homebrew/versions : done in setup.sh
brew install bash-completion2

#Install node
brew install node

#Install mono
brew install mono

#Install the .NET Version Manager (DNVM)
brew install dnvm

#Cleanup the house
brew cleanup
