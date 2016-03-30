Mac OS X Setup
==============

* Buy [Mac OS X](http://www.apple.com/jp/mac/) with US keyboard

* Update system

```bash
$ sudo softwareupdate --install --recommended
$ sudo shutdown -r now
```

* Tweak caps-lock key to performe ctl key

```text
1. Open System Preferences
2. Open Keyboard
3. Modifiler Keys
4. Change Caps Lock to Control
```

* Tweak Display

```text
1. Open System Preferences
2. Open Energy Saver
3. Turn display off after 15m
4. Open Display
5. Max Brightness
6. Dismiss keyboard brightness
```

* Install Xcode

```bash
$ xcode-select --install
```

* Install [homebrew](http://brew.sh/)

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* Clone [my mac os x setup repository](https://github.com/knakayama/mac-os-x-setup)

```bash
$ git clone https://github.com/knakayama/mac-os-x-setup ~/.ghq/github.com/knakayama/mac-os-x-setup
```

* Run [Ansible](https://github.com/ansible/ansible)

```bash
$ brew install pyenv pyenv-virtualenv gcc
$ cat >>~/.bash_profile <<EOT
export PYENV_ROOT="$HOME/.pyenv"'
export PATH="$PYENV_ROOT/bin:$PATH"'
echo 'eval "$(pyenv init -)"'
EOT
$ exec $SHELL
$ pyenv install <python-version>
$ pyenv global <python-version>
$ pyenv virtualenv general-env
$ pyenv activate general-env
$ pip install -r requirements.txt
$ cd ~/.ghq/github.com/knakayama/mac-os-x-setup
$ ansible-playbook site.yml -vvvv --ask-become-pass
```

* add japanese input method

```text
1. open System Preferences
2. open Keyboard
3. open Input Source
4. add japanese
```

* Use firefox sync

* Add startup app

```text
1. Open System Preferences
1. Open User & Groups
1. Add firefox/iterm2/slack
```

* Load new karabiner config

```text
1. Lock screen by command-L
2. ESC to IME off (to English) + Esc + Esc
3. Control + BRACKET_LEFT to IME off (to Enblish) + Esc + Esc
4. Control+J to KANA/EISUU (toggle)
5. Swap semicolon to colon
6. Sands (another version)
```

* Change clock date format

* Automatically hide tool bar

* Enable ssh login (Optional)

Edit `/private/etc/sshd_config`, then

```bash
$ sudo launchctl load /System/Library/LaunchDaemons/ssh.plist
```

* Setup Network (Optional)

```text
1. Open System Preferences
2. Open Network
3. Setup network manually
4. Add DNS
```
