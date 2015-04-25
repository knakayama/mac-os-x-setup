Mac OS X Setup
==============

* Buy [Mac OS X](http://www.apple.com/jp/mac/) with US keyboard

* Update system

```bash
sudo softwareupdate --install --recommended
```

* Tweak caps-lock key to performe ctl key

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
$ ln -s path/to/git path/to/target
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
$ brew brewdle
```

* Change login shell

```bash
# add /usr/local/bin/zsh
$ sudo vi /etc/shells
$ chsh -s /usr/local/bin/zsh
```

* Use [Ricty font](https://github.com/yascentur/Ricty)

```bash
$ cp -f /usr/local/Cellar/ricty/<version>/share/fonts/Ricty*.ttf ~/Library/Fonts/
$ fc-cache -f
$ ./bin/iterm2-conf-util.rb --restore
```

* Setup karabiner

```bash
$ ln -sf $HOME/.ghq/github.com/knakayama/mac-os-x-setup/private.xml $HOME/Library/Application\ Support/Karabiner/private.xml
# add SandS
1. open karabiner
2. SandS v2
# change key repeat
1. 400ms initial repeat
2. 20ms repeat wait
# Swap Semicolon and Colon
1. Swap Semicolon and Colon
# enable mouse key
1. Mouse keys scroll direction
2. Use S key to enable scroll
# enable vi mode
1. Simple VI Mode v2
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

* Tweak date

```text
1. change date format to 24-hour style
```

* Add startup app

```text
1. Open System Preferences
1. Open User & Groups
1. Add firefox and iterm2
```

* Tweak Display

```text
1. Open System Preferences
2. Open Display
3. Turn display off after 15m
4. Max Brightness
```

* Tweak Dock

```text
1. check automaticaly hide and show the dock
```

* Compress tmux log

```bash
sudo cp -ipv $HOME/.ghq/github.com/knakayama/mac-os-x-setup/local.compresstmuxlog.plist $HOME/Library/LaunchAgents
sudo chown root ~/Library/LaunchAgents/local.compresstmuxlog.plist
sudo launchctl load -w $HOME/Library/LaunchAgents/local.compresstmuxlog.plist
```

