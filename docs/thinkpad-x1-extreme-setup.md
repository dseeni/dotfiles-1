Thinkpad X1 Extreme Setup
=========================

Here are the steps that were necessary to get a stable setup with my X1E.

## Set graphics to discrete only in BIOS

From what I read, I had expected Pop to boot in hybrid mode, but the installer wouldn't boot until I set discrete.

## Install Pop!_OS 18.10 NVIDIA

https://system76.com/pop

## Reset graphics to hybrid

Now that you have successfully installed, you can set the graphics back to hybrid in BIOS. This will let you switch between nvidia/intel cards via a system tray menu.

Note - external displays can only connected when running the nvidia card (WHYYYY?!).

## Thermal Management

[Source](https://old.reddit.com/r/thinkpad/comments/9xye6l/thinkpad_x1_extreme_running_kubuntu_ubuntu_1804/)

### Install TLP

TLP is an advanced power manager for laptops that has special options for Thinkpads such as charging until a threshold, etc. This package improved my battery life enormously out of the box.

For your X1 Extreme, you will also want to install the additional acpi-call-dkms, which is a module that enables reading the additional information on the battery for a Thinkpad, and enables the threshold charging.

```
sudo apt-get install tlp acpi-call-dkms
sudo tlp start
sudo tlp-stat -s
```

The last command should show the tlp state as enabled. Then reboot your system.

The configuration file lives in /etc/default/tlp. It works well out of the box and I think you will see an immediate improvement. It also disables WOL from the OS, which again, I think is the waking up culprit, so it should help with both of your problems.

I would suggest setting USB_AUTOSUSPEND to 0 because if you are using hardware such as external sound cards, that would turn them off. If you want the features, you will have to enable the threshold charging manually from the configuration.

### Undervolt

Undervolting the machine will dramatically improve the thermal situation. Setting the temp limit to 85 via undervolt and disabling thermald also drastically reduces throttling.

```
sudo apt install python-pip
sudo pip install --system undervolt
```

Recommended:

```
sudo undervolt --core -150 --cache -150 --gpu -40 --uncore -40 --temp 85 --temp-bat 75
```

Check current:
```
sudo undervolt --read
```

Start on boot:
https://github.com/georgewhewell/undervolt#running-automatically-on-boot

You should also stop thermalmd, which is an ubuntu service that will clash with the throttling fix script.

```
sudo systemctl stop thermald.service
sudo systemctl disable thermald.service
sudo systemctl mask thermald.service
```
