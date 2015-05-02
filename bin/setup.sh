#!/usr/bin/env bash

# not tested yet

echo "Updating system..."
sudo softwareupdate --install --recommended

# Tweak caps-lock key to performe ctl key
# TODO

if ! xcode-select --print-path | grep -qF '/Library/Developer/CommandLineTools'; then
  echo "Installing Xcode..."
  xcode-select --install
fi

if ! which brew >/dev/null 2>&1; then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
fi

if ! which ghq >/dev/null 2>&1; then
  echo "Cloning ghq..."
  brew tap "motemen/ghq"
  brew install "ghq"
fi

read -p "clone your private repository?(y/n) " answer
case "$answer" in
  y)
    read -p "enter repository name: " repository
    ghq get "$repository"
    # TODO: create symlink automatically
    echo "create symlink manually"
    ;;
esac
unset answer

if [[ ! -d "${HOME}/.ghq/github.com/knakayama/dotfiles" ]]; then
  echo "Cloning my dotfiles..."
  ghq get "git@github.com:knakayama/dotfiles.git"
  cd "${HOME}/.ghq/github.com/knakayama/dotfiles" && git submodule update --init && rake symlink -t
fi

if ! brew tab | grep -qF 'homebrew/brewdler'; then
  echo "Installing homebrew brewdler..."
  brew tap "Homebrew/brewdler"
fi

if ghq list | grep -qF 'github.com/knakayama/mac-os-x-setup'; then
  echo "Cloning my mac os x setup repository..."
  ghq get "git@github.com:knakayama/mac-os-x-setup.git"
  cd "${HOME}/.ghq/github.com/knakayama/mac-os-x-setup" && brew brewdle --verbose
fi

if grep -qF '/usr/local/bin/zsh' "/etc/shells"; then
  echo "Adding /usr/local/bin/zsh to /etc/shells..."
  sudo echo "/usr/local/bin/zsh" >> "/etc/shells"
fi
if ! echo "$SHELLS" | grep -qF '/usr/local/bin/zsh'; then
  echo "Changing $SHELLS to /usr/local/bin/zsh..."
  chsh -s "/usr/local/bin/zsh"
fi

if ! ls "${HOME}/Library/Fonts" | grep -qF 'Ricty'; then
  echo "Creating Ricty font..."
  _DIR="/usr/local/Cellar/ricty"
  cp -f "${_DIR}/$(ls -r $_DIR | head -n 1)/share/fonts/Ricty*.ttf" "${HOME}/Library/Fonts"
  fc-cache -f
  ${HOME}/.ghq/github.com/knakayama/mac-os-x-setup/bin/iterm2-conf-util.rb --restore
fi


if [[ ! -h "${HOME}/Library/Application\ Support/Karabiner/private.xml" ]]; then
  echo "Setting karabiner..."
  ln -sf "${HOME}/.ghq/github.com/knakayama/mac-os-x-setup/assets/private.xml" "${HOME}/Library/Application\ Support/Karabiner/private.xml"
  ${HOME}/.ghq/github.com/knakayama/mac-os-x-setup/bin/karabiner.sh
fi

if [[ ! -f "${HOME}/Library/LaunchAgents/local.compresstmuxlog.plist" ]]; then
  echo "Setting compress tmuxlog script..."
  sudo cp -ipv "${HOME}/.ghq/github.com/knakayama/assets/mac-os-x-setup/local.compresstmuxlog.plist" "${HOME}/Library/LaunchAgents"
  sudo launchctl load -w "${HOME}/Library/LaunchAgents/local.compresstmuxlog.plist"
fi

read -p "change system preferences?(y/n)" answer
case "$answer" in
  y)
    defaults write "com.apple.dock" "autohide" -bool True
    defaults write "com.apple.menuextra.clock" "DateFormat" -string "EEE HH:mm"
    echo "Please restart system"
    ;;
esac

cat <<'EOT'

Please manually setup above tasks.

# keyboard
* Tweak caps-lock key to performe ctl key

# japanese
* open System Preferences -> open Keyboard -> open Input Recource -> add japanese

# firefox
* sync firefox settings

# avast
* enable file system shiled and web shiled

# display
* Open System Preferences -> Open Display -> Turn display off after 15m && Max Brightness

# misc
* Open System Preferences -> Open User & Groups -> Add firefox and iterm2

EOT
