# Using Ansible to Deploy and Update my Config

## Pre-Reqs
**You must have ansible installed**

If you aren't sure you can try ansible --version

The only way I am able to get this working is by using sudo and running a command before using ansible-pull.
---

```
sudo pacman -Sy && ansible-pull -U https://github.com/zer0sense/ansible_desktop
```

I am not able to get nerd-fonts to install through ansible, so you will have to run the install script manually.
	
```
~/git/nerd-fonts/install.sh
```

If you get a shada error when using checkhealth in neovim use the following
```
nvim - NORC
```