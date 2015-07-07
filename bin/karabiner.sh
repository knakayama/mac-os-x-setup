#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set private.command_l_to_lock_screen 1
/bin/echo -n .
$cli set repeat.initial_wait 400
/bin/echo -n .
$cli set remap.jis_controlJ2kanaeisuu 1
/bin/echo -n .
$cli set option.emacsmode_controlLeftbracket 1
/bin/echo -n .
$cli set repeat.wait 23
/bin/echo -n .
$cli set remap.simple_vi_mode 1
/bin/echo -n .
$cli set private.vim.ime_new 1
/bin/echo -n .
$cli set remap.sands2 1
/bin/echo -n .
$cli set option.emacsmode_controlH 1
/bin/echo -n .
$cli set parameter.mouse_key_scroll_natural_direction 1
/bin/echo -n .
$cli set remap.swapcolons 1
/bin/echo -n .
/bin/echo
