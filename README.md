Mac OS X Setup
==============

* Buy [Mac OS X](http://www.apple.com/jp/mac/) with English keyboard

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
$ cd ~/.ghq/github/knakayama/dotfiles/bin
$ ./symlink.rb -c
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

* Setup japanese

```text
# add SandS
1. open karabiner
2. SandS v2
# add japanese input method
1. open System Preferences
2. open Keyboard
3. open Input Recource
4. add japanese
# tweak japanese input method
5. open karabiner
6. Control+O to KANA/EISUU(toggle)
```

* Use firefox sync

* Tweak avast

```text
1. open avast
2. enable file system shiled and web shiled
```

