Mac OS X Setup
==============

1. Buy [Mac OS X](http://www.apple.com/jp/mac/) with English keyboard

2. Tweak caps-lock key to performe ctl key

3. Install Xcode

```bash
$ xcode-select --install
```

4. Install [homebrew](http://brew.sh/)

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
```

5. Clone [ghq with homebrew](https://github.com/motemen/homebrew-ghq)

```bash
$ brew tap motemen/ghq
$ brew install ghq
```

6. Clone private repository

```bash
$ ghq get path@to.git
$ ln -s path/to/git path/to/target
```

7. Clone [my dotfiles](https://github.com/knakayama/dotfiles)

```bash
$ ghq get git@github.com:knakayama/dotfiles.git
$ cd ~/.ghq/github/knakayama/dotfiles/bin
$ ./symlink.rb -c
```

8. Install [Homebrew brewdler](https://github.com/Homebrew/homebrew-brewdler)

```bash
$ brew tap Homebrew/brewdler
```

9. Clone [my mac os x setup repository](https://github.com/knakayama/mac-os-x-setup)

```bash
$ ghq get git@github.com:knakayama/mac-os-x-setup.git
$ cd ~/.ghq/github.com/knakayama/mac-os-x-setup
$ brew brewdle
```

10. Change login shell

```bash
# add /usr/local/bin/zsh
$ sudo vi /etc/shells
$ chsh -s /usr/local/bin/zsh
```

11. Setup japanese

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

12. Use firefox sync

13. Tweak avast

```text
1. open avast
2. enable file system shiled and web shiled
```

