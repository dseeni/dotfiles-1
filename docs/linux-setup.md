Linux Setup
===========

## Install Gnome 3 Addons

See [gnome-3-addons](./gnome-3-addons.md).

## Add graphics switching / power management

We can use System 76's graphics switching and power management tools. These add a handy way to switch which graphics card you're using and what performance settings to use via the Gnome system menu - https://support.system76.com/articles/graphics-switch-ubuntu/

## Install Dropbox

Grab the latest .deb from https://www.dropbox.com/install-linux

## Install [Ulauncher](https://github.com/Ulauncher/Ulauncher/releases/latest)

Popup launcher.

```
sudo add-apt-repository -y ppa:agornostal/ulauncher
sudo apt update
sudo apt install ulauncher
```

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
echo export MOZ_USE_XINPUT2=1 | sudo tee /etc/profile.d/use-xinput2.sh
```

I also had to go to `about:config` and set `layers.acceleration.force-enabled` to `true` to improve scrolling smoothness.
