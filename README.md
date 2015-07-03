Mac OS X Setup
==============

* Buy [Mac OS X](http://www.apple.com/jp/mac/) with US keyboard

* Update system

```bash
sudo softwareupdate --install --recommended
```

* Tweak caps-lock key to performe ctl key

```text
1. Open System Preferences
2. Open Keyboard
3. Modifiler Keys
4. Change Caps Lock to Control
```

* Tweak date

```text
1. change date format to 24-hour style
```

* Tweak Display

```text
1. Open System Preferences
2. Open Energy Saver
3. Turn display off after 15m
4. Open Display
5. Max Brightness
```

* Tweak Dock

```text
1. check automaticaly hide and show the dock
```

* Install Xcode

```bash
$ xcode-select --install
```

* Install [homebrew](http://brew.sh/)

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
```

* Clone [ghq with homebrew](https://github.com/motemen/homebrew-ghq)

```bash
$ brew tap motemen/ghq
$ brew install ghq
```

* Clone private repository

```bash
$ ghq get path@to.git
$ cd ~/.ghq/path/to/git
$ rake -t
```

* Clone [my dotfiles](https://github.com/knakayama/dotfiles)

```bash
$ ghq get git@github.com:knakayama/dotfiles.git
$ cd ~/.ghq/github.com/knakayama/dotfiles
$ git submodule update --init
$ rake -t
```

* Install [Homebrew brewdler](https://github.com/Homebrew/homebrew-brewdler)

```bash
$ brew tap Homebrew/brewdler
```

* Clone [my mac os x setup repository](https://github.com/knakayama/mac-os-x-setup)

```bash
$ ghq get git@github.com:knakayama/mac-os-x-setup.git
$ cd ~/.ghq/github.com/knakayama/mac-os-x-setup
$ brew brewdle --verbose
```

* Change login shell

```bash
$ sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
```

* Use [Ricty font](https://github.com/yascentur/Ricty)

```bash
$ cp -f /usr/local/Cellar/ricty/<version>/share/fonts/Ricty*.ttf ~/Library/Fonts/
$ fc-cache -f
$ ./bin/iterm2-conf-util.rb --restore
```

* Setup karabiner

```bash
$ ln -sf $HOME/.ghq/github.com/knakayama/mac-os-x-setup/assets/private.xml $HOME/Library/Application\ Support/Karabiner/private.xml
$ ./bin/karabiner.sh
```

* add japanese input method

```text
1. open System Preferences
2. open Keyboard
3. open Input Recource
4. add japanese
# tweak japanese input method
5. open karabiner
6. Control+J to KANA/EISUU(toggle)
```

* Use firefox sync

* Tweak avast

```text
1. open avast
2. enable file system shiled and web shiled
```

* Add startup app

```text
1. Open System Preferences
1. Open User & Groups
1. Add firefox and iterm2
```

* Compress tmux log

```bash
sudo cp -ipv $HOME/.ghq/github.com/knakayama/assets/mac-os-x-setup/local.compresstmuxlog.plist $HOME/Library/LaunchAgents
sudo chown root ~/Library/LaunchAgents/local.compresstmuxlog.plist
sudo launchctl load -w $HOME/Library/LaunchAgents/local.compresstmuxlog.plist
```

