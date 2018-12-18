# My Client - Restore

## Requirements

* OS: Ubuntu 18.04 LTS

## Secrets

* Ensure ~/secrets directory exists

## Bootstrap

* Run bootstrap shell script
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

## VirtualBox

### Extension Pack

* Download [Extension Pack](https://www.virtualbox.org/wiki/Downloads)
* Import .vbox-extpack file
  * File -> Preferences... -> Extensions

### Restore VMs

* Machine -> Add...
* Open .vbox file

## Gnome Shell Extensions

* Open Google Chrome
  * Install [GNOME Shell-Integration](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep) addon
  * Install [GNOME Extensions](https://extensions.gnome.org)
    * Caffeine
    * Dash to Dock
    * Extension Update Notifier
    * Frippery Move Clock
    * OpenWeather
    * Panel OSD

## Sound

* Open Settings
  * Sound -> Sound Effects -> Alert volume off

## Location Bookmarks

* Open Files
  * Other Locations -> smb://...
  * Right click -> Add Bookmark

## Optional: Barracuda VPN

```
make -f Makefile.barracudavpn
```
