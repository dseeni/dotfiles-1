Gnome 3 Setup
=============

## Workspace Grid

Install [workspace-matrix](https://extensions.gnome.org/extension/1485/workspace-matrix/).

To remove workspaces from overview install [hide-workspace-thumbnails](https://extensions.gnome.org/extension/808/hide-workspace-thumbnails/).

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

gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "['<Super><Shift><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "['<Super><Shift><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up "['<Super><Shift><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down "['<Super><Shift><Alt>Down']"

gsettings set org.gnome.desktop.wm.keybindings maximize "['<Primary><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Primary><Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-w "['<Primary><Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-e "['<Primary><Super>Right']"
```

## System resource monitoring

Add system resource monitoring to tray - [Vital](https://extensions.gnome.org/extension/1460/vitals/)

## GSConnect

Add awesome android integration - [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/).

## Add Suspend button

Add suspend button to system tray, next to shudown button - [suspend-button](https://extensions.gnome.org/extension/826/suspend-button/)

## Hide Activities button

Useless noise - [hide-activities-button](https://extensions.gnome.org/extension/744/hide-activities-button/).

## Dock

Ubuntu mainline has a nice dock by default. If using another flavour of gnome 3, simply install [dash-to-dock](https://extensions.gnome.org/extension/307/dash-to-dock/).

## Legacy System Tray Icons

Ubuntu has a nice legacy tray by default. Otherwise, you can manually install the same extension - [KStatusNotifierItem/AppIndicator Support](https://extensions.gnome.org/extension/615/appindicator-support/).
