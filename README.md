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
$ sudo chown $(whoami):staff /usr/local/{share,lib}
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
```

* Clone [my mac os x setup repository](https://github.com/knakayama/mac-os-x-setup)

```bash
$ git clone https://github.com/knakayama/mac-os-x-setup)
```

* Run [Ansible](https://github.com/ansible/ansible)

```bash
$ brew install pyenv
$ pyenv install <python-version>
$ pyenv global <python-version>
$ pip install ansible
$ cd mac-os-x-setup
$ ansible-playbook -i hosts site.yml -vvv
```

* add japanese input method

```text
1. open System Preferences
2. open Keyboard
3. open Input Source
4. add japanese
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

* Enable ssh login

```text
1. Open System Preferences
2. Open Sharing
3. Enable remote login
4. Only enable system user
5. Edit /private/etc/sshd_config
```

* Setup Network (Optional)

```text
1. Open System Preferences
2. Open Network
3. Setup network manually
4. Add DNS
```
