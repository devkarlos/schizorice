## Firefox
- Run `firefox-setup.sh <username of new firefox profile>` and it will setup [argenfox user.js](https://github.com/arkenfox/user.js) for you.
- **I use custom firefox sync server, so if you don't plan to use it, delete it from [user-overrides.js](https://git.myhomelan.xyz/karlos/dotfiles/src/branch/main/user-overrides.js)**
- Extensions
  - [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
  - [I don't care about cookies](https://addons.mozilla.org/en-US/firefox/addon/i-dont-care-about-cookies/)
  - [SponsorBlock](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/)
  - [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
    - [ublock-origin.backup.txt](https://git.myhomelan.xyz/karlos/dotfiles/src/branch/main/ublock-origin.backup.txt)

## Zsh
- Install `zsh` package and [change](https://askubuntu.com/a/660014) `bash` to `zsh`
- `git clone` plugins into `~/.config/zsh/plugins`
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

## Windows
- There is not much to configure, but at least I have "debloated" it.
- [O&O's ShutUp10++](https://www.oo-software.com/en/shutup10)
  - [ooshutup10.cfg](https://git.myhomelan.xyz/karlos/dotfiles/src/branch/main/ooshutup10.cfg)
- [Windows10Debloater](https://github.com/Sycnex/Windows10Debloater)
  - I don't have a config for this.

## Other
- To avoid the system create directories which aren't in `~/.config/user-dirs.dirs` set `enabled=False` in `/etc/xdg/user-dirs.conf`

## TODO
- [ ] Install [LARBS](https://github.com/LukeSmithxyz/LARBS)
