# dotfiles

> No longer just dotfiles...

![neofetch](./images/neofetch.png)

## Appearence

* Theme
  * [Gnome Theme](https://github.com/EliverLara/Nordic)
  * [Slack](https://github.com/arcticicestudio/nord-slack)
  * [Spotify](https://github.com/morpheusthewhite/spicetify-themes/tree/master/Nord)
    * Needs [spicetify-cli](https://github.com/khanhas/spicetify-cli)
  * [Terminator Theme](https://github.com/arcticicestudio/nord-terminator)
  * [Vim](https://github.com/arcticicestudio/nord-vim)
  * [VS Code](https://github.com/arcticicestudio/nord-visual-studio-code)
* Icons
  * [Papirus Icons](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
  * [Papirus Nord](https://github.com/Adapta-Projects/Papirus-Nord)
* Font
  * [Fira Code](https://github.com/tonsky/FiraCode)
* Extensions
  * [Status Area Horizontal Spacing](https://extensions.gnome.org/extension/355/status-area-horizontal-spacing/)
  * [Multi Monitors Add-On](https://extensions.gnome.org/extension/921/multi-monitors-add-on/)
* Walpapers
  * [nord-wallpapers](https://github.com/dxnst/nord-wallpapers)
  * [nord-backgrounds](https://github.com/dxnst/nord-backgrounds)

### Result

![UI](./images/screen01.png)
![Spotify,Terminator,Nautilus](./images/screen02.png)

### Notes

I made **Fira Code** the default font in the entire system using Gnome Tweaks:
![Gnome Tweaks Font](./images/fonts_tweak.png)

### Troubleshooting

#### Fingerprint

Following [this](https://www.reddit.com/r/Dell/comments/ixwgm0/xps_15_9500_ubuntu_popos_fingerprint_howto/)
thread I was abble to setup fingerprint on my XPS 9500. My device is:

```zsh
$lsusb | grep -i goodix
Bus 001 Device 002: ID 27c6:533c Shenzhen Goodix Technology Co.,Ltd. FingerPrint
```

The steps are:

1. `sudo apt install libfprint-2-tod1`
2. download the goodix from [here](http://dell.archive.canonical.com/updates/pool/public/libf/libfprint-2-tod1-goodix/)
3. `sudo dpkg -i libfprint-2-tod1-goodix_0.0.6-0ubuntu1~somerville1_amd64.deb`
4. restart (:warning: really, restart it) and go to users in system settings to
enable the fingerprints
5. `sudo pam-auth-update` to set fingerprint as the authentication method
