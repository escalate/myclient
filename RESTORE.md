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
  * Datei -> Einstellungen -> Zusatzpaket

### Restore VMs

* Maschine -> Hinzufügen...
* .vbox-Datei auswählen

## Gnome Shell Extensions

* Open Google Chrome
  * Install GNOME Shell-Integration extension
    * Install [GNOME Extensions](https://extensions.gnome.org)
      * Caffeine
      * Dash to Dock
      * Extension Update Notifier
      * Frippery Move Clock
      * OpenWeather

## Sound

* Open Einstellungen
  * Klang -> Klangeffekte -> Warnlautstärke stumm
