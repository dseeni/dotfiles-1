Linux Setup
===========

## Install Gnome 3 Addons

See [gnome-3-addons](./gnome-3-addons.md).

## Install google-drive-ocamlfuse

https://github.com/astrada/google-drive-ocamlfuse

Don't add the entry to fstab - that caused boots to hang.

Simply add the following to the end of `~/.profile` to start the service 30
seconds after login:

```
# After 30 seconds, mount google drive
(sleep 30 && /usr/bin/google-drive-ocamlfuse "/home/tomw/google-drive") &
```

## Install [Ulauncher](https://github.com/Ulauncher/Ulauncher/releases/latest)

Popup launcher.

```
sudo add-apt-repository -y ppa:agornostal/ulauncher
sudo apt update
sudo apt install ulauncher
```

Install Gnome Settings addon - https://github.com/friday/ulauncher-gnome-settings

Add `maps` shortcut with query string of `https://www.google.com/maps?hl=en&q=%s`.

## Install [Timeshift](https://github.com/teejee2008/timeshift)

GUI for automated backups to an external HDD.

```
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt install timeshift
```

## Install Slack

The .deb includes a repository, so simply download and install the .deb from https://slack.com/intl/es-es/downloads/linux.

## Install Signal Desktop

Check latest install instructions here - https://www.signal.org/download/

As of time of writing:

```
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
```

## Firefox improvements

Make Firefox do proper smooth scrolling with trackpads:

```
MOZ_USE_XINPUT2=1 | sudo tee /etc/profile.d/use-xinput2.sh
```

I also had to go to `about:config` and set `layers.acceleration.force-enabled` to `true` to improve scrolling smoothness.
