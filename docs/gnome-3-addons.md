Gnome 3 Setup
=============

## Workspace Grid

Install [workspace-matrix](https://extensions.gnome.org/extension/1485/workspace-matrix/).

To remove workspaces from overview install [hide-workspace-thumbnails](https://extensions.gnome.org/extension/808/hide-workspace-thumbnails/).

Optionally, to disable the workspace switcher overlay, install [disable-workspace-switcher-popup](https://extensions.gnome.org/extension/959/disable-workspace-switcher-popup/).

Optionally, install [disable-workspace-switch-animation](https://extensions.gnome.org/extension/1328/disable-workspace-switch-animation) to make workspace switching instant.

To have some kind of indication of what workspace we're on, install [workspace-indicator](https://extensions.gnome.org/extension/21/workspace-indicator/).

Then, to set proper workspace switching shortcuts:

```
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Shift>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Shift>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Down']"
```

Note - you'll want to go into keyboard settings and set the "Move window one display to the X" shortcuts to something like `<Super><Shift><Alt>Up/Down/Left/Right`.

## Install GSConnect

Add awesome android integration - [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/).

## Add Suspend button

Add suspend button to system tray, next to shudown button - [suspend-button](https://extensions.gnome.org/extension/826/suspend-button/)

## Hide Activities button

Useless noise - [hide-activities-button](https://extensions.gnome.org/extension/744/hide-activities-button/).

## Dock

Ubuntu mainline has a nice dock by default. If using another flavour of gnome 3, simply install [dash-to-dock](https://extensions.gnome.org/extension/307/dash-to-dock/).

## Legacy System Tray Icons

Ubuntu has a nice legacy tray by default. Otherwise, install [topicons](https://extensions.gnome.org/extension/1031/topicons/) to add a legacy tray.
