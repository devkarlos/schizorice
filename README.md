# Schizorice

## Firefox

### Hardening

I use [arkenfox user.js](https://github.com/arkenfox/user.js) to harden my firefox profile.

- **Linux**: Use `firefox-setup.sh` which will setup everything for you.
- **Windows**: Follow the instructions on [arkenfox user.js](https://github.com/arkenfox/user.js) and use `user-overrides.js`

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
