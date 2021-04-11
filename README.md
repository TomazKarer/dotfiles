# dotfiles

Simple dotfiles. striving for simplicity.

## install.sh

All files are dynamically linked to home folder.

## .bash_profile

Since this is bash_profile used once per login session.

- default editor is set to vim
- (left) ctrl and caps lock are swapped
- right ctrl and right alt (AltGr) are swapped. Purpuse of this is making right ctrl useless
- keyboard layout is set to EurKey. Šumniki are accessed by AltGr+Shift+6, then cszCSZ

## .inputrc

readline settings hence this is applied everywhere readline is used, not just bash

- editing mode is vim
- jk mapped as escape 
  
## tmux

- prefix is set to ctrl+a
- vi style scrolling
- vi style copying
- vi style pane changing
- new windows are opened in current path
