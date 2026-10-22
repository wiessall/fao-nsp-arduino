---
title: Setup
---


## Software Setup

::: discussion

### The Arduino IDE

For this workshop we need to download and install the Arduino Integrated Development Environment (IDE). There are now quite few different options for doing this which are all available on the [Arduino website](https://www.arduino.cc/en/software). Below you find the correct selection in the dropdown menu for your operating system.



:::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::: spoiler

### Windows


For the Windows operating system you can download the IDE as a zip file, an exe file or you can get it from the Windows app store. 

::::::::::::::::::::::::

:::::::::::::::: spoiler

### MacOS

For the Mac installation select the macOS Intel or Apple Silicon option from the dropdown menu, depending on your system cpu. You can learn which CPU your system is using by [opening the about information](https://support.apple.com/en-euro/guide/mac-help/syspr35536/mac) by clicking on the Apple menu  > System Settings, then click General in the sidebar.

::::::::::::::::::::::::

:::::::::::::::: spoiler

### Linux

For the Linux installation you can select the Linux AppImage or zip file from the dropdown menu. Alternatively, you can install using your system's package manager. [Here you find a full list of available Linux downloads](https://www.arduino.cc/en/software/linux-images/).

Debian / Ubuntu:
```bash
sudo apt update && sudo apt upgrade
sudo apt install arduino
```

Ubuntu also offers the snap package, should you prefer using snaps:
```bash
sudo snap install arduino
```

On Fedora and any Linux system configured to use [flatpaks](https://developer.fedoraproject.org/start/hw/arduino/about.html) you can simply do:
```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub cc.arduino.IDE2
```
::::::::::::::::::::::::




## Verify Arduino IDE setup

Connect the arduino board with your computer using a good USB port and cable. Go
to the tools menu and select your exact model. In our case this is the Arduino Uno R3.

Select the correct port, depending on your operating system this is:

:::::::::::::::: spoiler

### Windows


Select the ```COM``` port.

::::::::::::::::::::::::

:::::::::::::::: spoiler

### MacOS

Select ```cu.usbmodem/usbserial```.

::::::::::::::::::::::::

:::::::::::::::: spoiler

### Linux

Select ```/dev/ttyUSBx```. Also make sure that you have permissions to access the serial port:

```bash
sudo usermod -aG dialout $USER
# On Arch/Manjaro:
sudo usermod -aG uucp $USER
```
:::::::::::::::::::::::::::::::::::::::::::::::::::

After this try to control the Arduino's LED by going to ```Open File -> Examples -> 01.Basics -> Blink``` in the menu. Click ```Verify``` (the check symbol below the menu) to compile, then ```Upload``` (the right arrow symbol next to verify). You should now see the LED start to blink.
