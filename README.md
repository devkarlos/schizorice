# Schizorice

## Firefox

### Hardening

On linux you can use [firefox-setup.sh](firefox-setup.sh) which will setup everything for you. However, if you want to do it manually or you are on Windows, follow the steps below.

1. Create a Firefox profile
2. Copy [prefsCleaner.bat](https://github.com/arkenfox/user.js/blob/master/prefsCleaner.bat) (Windows) / [prefsCleaner.sh](https://github.com/arkenfox/user.js/blob/master/prefsCleaner.sh) (Linux) to profile's _Root Directory_
3. Copy [updater.bat](https://github.com/arkenfox/user.js/blob/master/updater.bat) (Windows) / [updater.sh](https://github.com/arkenfox/user.js/blob/master/updater.sh) (Linux) to profile's _Root Directory_
4. Copy [user-overrides.js](user-overrides.js) to profile's _Root Directory_
5. Execute updater script

### Extensions

- [Dark Reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/)
- [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
- [I still don't care about cookies](https://addons.mozilla.org/en-US/firefox/addon/istilldontcareaboutcookies/)
- [Skip Redirect](https://addons.mozilla.org/en-US/firefox/addon/skip-redirect/)
  - Disable notifications in its settings
- [SponsorBlock](https://addons.mozilla.org/en-US/firefox/addon/sponsorblock/)
  - Import `sponsorblock.json` to the `SponsorBlock settings > Backup/Restore > Import/Export All Other Data > Load from file`
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
  - Import `ublock-origin.json` to the `uBlock settings > Restore from file`
  - Import [Actually Legitimate URL Shortener Tool](https://raw.githubusercontent.com/DandelionSprout/adfilt/master/LegitimateURLShortener.txt)
    - Paste it to the `uBlock settings > Filter Lists > Import`
- [Unhook](https://addons.mozilla.org/en-US/firefox/addon/youtube-recommended-videos/)
- [xBrowserSync](https://addons.mozilla.org/en-US/firefox/addon/xbs/)
