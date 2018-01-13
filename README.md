Mac OS X Setup
==============

- Buy [Mac OS X](http://www.apple.com/jp/mac/) with US keyboard

- Update system

```bash
$ sudo softwareupdate --install --recommended
```

- Change system language

```bash
$ sudo languagesetup
$ sudo shutdown -r now
```

- Tweak Display

```text
1. Open System Preferences
2. Open Energy Saver
3. Turn display off after 15m
4. Open Display
5. Max Brightness
6. Dismiss keyboard brightness
```

- Run Makefile

```bash
$ make setup-base setup-python
```

- Download credentials

- Run [Ansible](https://github.com/ansible/ansible)

```bash
$ cd ~/ghq/github.com/knakayama/mac-os-x-setup
$ ansible-playbook site.yml -vvvv --ask-become-pass
```

- add japanese input method

```text
1. open System Preferences
2. open Keyboard
3. open Input Source
4. add japanese
```

- Add startup app

```text
1. Open System Preferences
1. Open User & Groups
1. Add Chrome/iterm2/slack
```

- Change clock date format

- Automatically hide tool bar
