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
curl --silent --show-error --location https://raw.githubusercontent.com/escalate/myclient/master/scripts/bootstrap.sh | bash
```

## Home directory

* Copy backup archives manually from NAS to local client

* Extract all backup archives
```bash
cd [RESTOREDIR]
find . -name "*.tar" -type f -exec tar xvf {} \;
```

* Move content of extracted archives to corresponding home directory equivalents e.g. ~/Documents
```bash
cd [RESTOREDIR]/Documents
mv * ~/Documents/
```

## Manual settings

### VirtualBox

#### Extension Pack

* Download [Extension Pack](https://www.virtualbox.org/wiki/Downloads)
* Import .vbox-extpack file
  * File -> Tools -> Extension Pack Manager

#### Restore VMs

* Machine -> Add...
* Open .vbox file

### Gnome Shell extensions

* Open Google Chrome
  * Install [GNOME Shell-Integration](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep) addon
  * Install [GNOME Extensions](https://extensions.gnome.org)
    * [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
    * [Frippery Move Clock](https://extensions.gnome.org/extension/2/move-clock/)
    * [Notification Banner Position](https://extensions.gnome.org/extension/4105/notification-banner-position/)
    * [Refresh Wifi Connections](https://extensions.gnome.org/extension/905/refresh-wifi-connections/)

### Sound

* Open Settings
  * Sound -> Sound Effects -> Alert volume off

### Location bookmarks

* Open Files
  * Other Locations -> smb://...
  * Right click -> Add Bookmark

### Visual Studio Code extensions

* Open VSCode
  * Open Extensions tab
    * [Ansible](https://marketplace.visualstudio.com/items?itemName=redhat.ansible)
    * [Ansible-vault](https://marketplace.visualstudio.com/items?itemName=dhoeric.ansible-vault)
    * [Gitlab Workflow](https://marketplace.visualstudio.com/items?itemName=GitLab.gitlab-workflow)
