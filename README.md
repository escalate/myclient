[![Test](https://github.com/escalate/myclient/actions/workflows/test.yml/badge.svg?branch=master&event=push)](https://github.com/escalate/myclient/actions/workflows/test.yml)

# My Client

... is managed with make

## Requirements

- OS: Ubuntu 24.04 LTS

## Secrets

- All secrets or stored in a separate directory named `~/secrets/`
- Make sure `~/secrets/` directory exists before bootstrapping the system

## Bootstrap

- To bootstrap a blank system just run the following command

```bash
curl --silent --show-error --location https://raw.githubusercontent.com/escalate/myclient/master/scripts/bootstrap.sh | bash
```

## Home directory

- Copy backup archives manually from NAS to local client

- Extract all backup archives

```bash
cd [RESTOREDIR]
find . -name "*.tar.bz2" -type f -exec tar xvjf {} \;
```

- Move content of extracted archives to corresponding home directory equivalents e.g. ~/Documents

```bash
rm -rf ~/Documents/
mv [RESTOREDIR]/Documents ~/Documents/
```

## Manual settings

### Files - Location bookmarks

- Open Files
  - Other Locations -> smb://...
  - Right click -> Add Bookmark

### Gnome Shell - Extensions

- Open Google Chrome
  - Install [GNOME Shell-Integration](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep) addon
  - Install [GNOME Extensions](https://extensions.gnome.org)
    - [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
    - [Frippery Move Clock](https://extensions.gnome.org/extension/2/move-clock/)
    - [Notification Banner Position](https://extensions.gnome.org/extension/4105/notification-banner-position/)
    - [Refresh Wifi Connections](https://extensions.gnome.org/extension/905/refresh-wifi-connections/)

### VirtualBox

#### Extension Pack

- Download [Extension Pack](https://www.virtualbox.org/wiki/Downloads)
- Import .vbox-extpack file
  - File -> Tools -> Extension Pack Manager

#### Restore VMs

- Machine -> Add...
- Open .vbox file

### Visual Studio Code - Extensions

- Open VSCode
  - Open Extensions tab
    - [Ansible](https://marketplace.visualstudio.com/items?itemName=redhat.ansible)
    - [Ansible-vault](https://marketplace.visualstudio.com/items?itemName=dhoeric.ansible-vault)
    - [Black Formatter](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter)
    - [Container Tools](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-containers)
    - [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
    - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
    - [Docker DX](https://marketplace.visualstudio.com/items?itemName=docker.docker)
    - [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
    - [Flake8](https://marketplace.visualstudio.com/items?itemName=ms-python.flake8)
    - [GitHub Actions](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-github-actions)
    - [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
    - [GitHub Copilot Chat](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot-chat)
    - [GitLab Workflow](https://marketplace.visualstudio.com/items?itemName=GitLab.gitlab-workflow)
    - [Hadolint](https://marketplace.visualstudio.com/items?itemName=exiasr.hadolint)
    - [HashiCorp Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)
    - [isort](https://marketplace.visualstudio.com/items?itemName=ms-python.isort)
    - [Kubernetes](https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools)
    - [Make support and task provider](https://marketplace.visualstudio.com/items?itemName=carlos-algms.make-task-provider)
    - [Makefile Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)
    - [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
    - [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
    - [Python Environments](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-python-envs)
    - [Ruff](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff)
    - [ShellCheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck)
    - [shfmt](https://marketplace.visualstudio.com/items?itemName=mkhl.shfmt)
    - [SonarQube for IDE](https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarlint-vscode)
    - [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)

### Stacher7

- URL: https://stacher.io/

## License

MIT
