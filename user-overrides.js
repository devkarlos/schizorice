///////////////////////
// Disable Features //
///////////////////////

user_pref("privacy.resistFingerprinting.letterboxing", false); // Disables letterboxing
user_pref("extensions.pocket.enabled", false); // Disables Pocket integration
user_pref("identity.fxaccounts.enabled", false); // Disables Firefox Sync features
user_pref("dom.webaudio.enabled", false); // Disables Web Audio API to prevent fingerprinting
user_pref("browser.safebrowsing.downloads.remote.enabled", false); // Disables remote safe browsing for downloads
user_pref("browser.safebrowsing.phishing.enabled", false); // Disables phishing protection
user_pref("browser.safebrowsing.malware.enabled", false); // Disables malware protection
user_pref("dom.webnotifications.enabled", false); // Disables web notifications
//user_pref("browser.urlbar.suggest.topsites", false); // Disables top sites suggestions in URL bar
user_pref("signon.management.page.breach-alerts.enabled", false); // Disables breach alerts
user_pref("layout.spellcheckDefault", 0); // Disables spell checking
user_pref("signon.rememberSignons", false); // Disables password saying prompts
user_pref("permissions.default.microphone", 2); // Blocks microphone access by default
user_pref("permissions.default.desktop-notification", 2); // Blocks desktop notifications by default
user_pref("permissions.default.geo", 2); // Blocks location access by default
user_pref("geo.enabled", false); // Fully disables location access
user_pref("media.navigator.enabled", false); // Disables certain media navigator features


////////////////////////
// Re-enable features //
////////////////////////

user_pref("keyword.enabled", true); // Enables searching from the URL bar
user_pref("browser.startup.page", 0); // Sets the browser to start with a blank page
user_pref("browser.search.suggest.enabled", true); // Enables search suggestions
user_pref("browser.urlbar.suggest.searches", true); // Enables search suggestions in the URL bar
user_pref("webgl.disabled", false); // Enables WebGL
user_pref("media.eme.enabled", true); // Enables Digital Rights Management (DRM) content

//////////////////
// Misc changes //
//////////////////

user_pref("browser.shell.shortcutFavicons", true); // Enables favicons in shortcuts
user_pref("privacy.sanitize.sanitizeOnShutdown", false); // Disables clearing data on shutdown
user_pref("privacy.clearOnShutdown.history", false); // Disables clearing history on shutdown
user_pref("network.trr.mode", 3); // Next DNS requirement
user_pref("network.trr.custom_uri", "https://dns.nextdns.io/69994b"); // Custom DNS address
user_pref("network.trr.uri", "https://dns.nextdns.io/69994b"); // DNS address
user_pref("general.autoScroll", true); // Enables middle click scroll
