# Tingle
[![GitHub release](https://img.shields.io/github/release/ale5000-git/tingle.svg)](https://github.com/ale5000-git/tingle/releases/latest)
[![License](https://img.shields.io/github/license/ale5000-git/tingle.svg)](https://github.com/ale5000-git/tingle)
[![Build Status](https://travis-ci.com/ale5000-git/tingle.svg?branch=master)](https://travis-ci.com/ale5000-git/tingle)
[![Liberapay receiving](https://img.shields.io/liberapay/receives/Tingle.svg)](https://liberapay.com/Tingle/)

## What this does
This will allow you to patch the Android system and inject features without needing to recompile the OS or install Xposed.

Notably, it is made to inject support for signature spoofing into the system so it can spoof Android app signatures (useful for [microG](https://microg.org/)).

## Download
Download it [here](https://api.github.com/repos/ale5000-git/tingle/zipball/).

## Donations
[![Donate](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/Tingle/donate "Donate using Liberapay")

## Compatibility
Windows, Linux, macOS (OS X) and Android.  
It doesn't require root on the OS where you run it but it require root on the device you want to patch.

## Dependencies
Python, 7-Zip, Java and ADB.

### Dependencies setup on Linux
* `sudo add-apt-repository universe`
* `sudo apt-get update`
* `sudo apt-get install python3 p7zip-full default-jre android-tools-adb`

### Dependencies setup on macOS (using [Homebrew](https://brew.sh/))
* `brew update`
* `brew install python3`
* `brew install p7zip`
* `brew cask install java`
* `brew cask install android-platform-tools`

## How to use
1. Make sure `Developer options` is enabled. This is hidden by default since sometime in Android 4.x, you can show it by going to `About phone` and tapping on the `Build number` 7 times in succession.
2. In the developer settings, find the setting for `Android debugging` and enable it.
3. Find the setting for `Root access` and make sure ADB has root access.
4. Connect your device via USB.
5. Now, on the computer, run `python main.py` (or `python3 main.py`).
6. Select the option 1 to allow the patcher to do everything automatically.
7. Reboot the device.

You can run this patcher also when the device is in Android's recovery.

You will need to reboot for Android to detect that you've installed a new framework and so for Dalvik/ART to re-optimise all the apps on the phone. Without this, you may receive an `INSTALL_FAILED_DEXOPT` error when installing new apps.

**Note:** You will need to redo this everytime you flash a new `/system` partition (e.g. flashing an updated LineageOS zip or a different ROM).  
**Note for Magisk users:** Apply Android patches before installing [Magisk](https://forum.xda-developers.com/showthread.php?t=3473445) to be sure everything is working correctly.

## Code analysis
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/6f54e54bf5bf43c1ad8fd73e26f7ce79)](https://www.codacy.com/app/ale5000-git/tingle?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=ale5000-git/tingle&amp;utm_campaign=Badge_Grade)
[![Codebeat Badge](https://codebeat.co/badges/1e76f80a-957c-44df-9075-9cde78fb2093)](https://codebeat.co/projects/github-com-ale5000-git-tingle-master)
[![Code Climate Badge](https://codeclimate.com/github/ale5000-git/tingle/badges/gpa.svg)](https://codeclimate.com/github/ale5000-git/tingle)
