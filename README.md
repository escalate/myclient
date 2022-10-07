[![Test](https://github.com/escalate/myclient/actions/workflows/test.yml/badge.svg?branch=master&event=push)](https://github.com/escalate/myclient/actions/workflows/test.yml)

# My Client

... is managed with make

## Requirements

* OS: Ubuntu 22.04 LTS

## Secrets

* All secrets or stored in a separate directory named `~/secrets/`
* Make sure `~/secrets/` directory exists

## Bootstrap

* To bootstrap a blank system just run the following command
```bash
curl --silent --show-error --location https://raw.githubusercontent.com/escalate/myclient/master/bootstrap.sh | bash
```

## Home directory

* Copy backup archives manually from NAS to local client

* Extract all backup archives
```bash
cd [RESTOREDIR]
find . -name "*.tar.bz2" -type f -exec tar xvjf {} \;
```

* Move content of extracted archives to corresponding home directory equivalents e.g. ~/Dokumente
```bash
cd [RESTOREDIR]/Dokumente
mv * ~/Dokumente/
```

## Manual settings

### VirtualBox

#### Extension Pack

* Download [Extension Pack](https://www.virtualbox.org/wiki/Downloads)
* Import .vbox-extpack file
  * File -> Preferences... -> Extensions

#### Restore VMs

* Machine -> Add...
* Open .vbox file

### Gnome Shell extensions

* Open Google Chrome
  * Install [GNOME Shell-Integration](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep) addon
  * Install [GNOME Extensions](https://extensions.gnome.org)
    * Caffeine
    * Dash to Dock
    * Extension Update Notifier
    * Frippery Move Clock
    * OpenWeather
    * Panel OSD
    * Refresh Wifi Connections

### Sound

* Open Settings
  * Sound -> Sound Effects -> Alert volume off

### Location bookmarks

* Open Files
  * Other Locations -> smb://...
  * Right click -> Add Bookmark
