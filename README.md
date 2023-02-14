## Firefox
- Run `firefox-setup.sh <username of new firefox profile>` and it will setup [argenfox user.js](https://github.com/arkenfox/user.js) for you.
- **I use custom firefox sync server, so if you don't plan to use it, delete it from `user-overrides.js`**
- Extensions
  - [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
  - [I don't care about cookies](https://addons.mozilla.org/en-US/firefox/addon/i-dont-care-about-cookies/)
  - [SponsorBlock](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/)
  - [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
    - `ublock-origin.backup.txt`

## Zsh
- Install `zsh` package and [change](https://askubuntu.com/a/660014) `bash` to `zsh`
- `git clone` plugins into `~/.config/zsh/plugins`
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

## Other
- To avoid the system create directories which aren't in `~/.config/user-dirs.dirs` set `enabled=False` in `/etc/xdg/user-dirs.conf`
