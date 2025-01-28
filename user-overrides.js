///////////////////////
// Disable Features //
///////////////////////

user_pref("privacy.resistFingerprinting.letterboxing", false); // Disables letterboxing (also prevents fingerprinting)
user_pref("extensions.pocket.enabled", false); // Disables Pocket integration
user_pref("dom.webaudio.enabled", false); // Disables Web Audio API to prevent fingerprinting
user_pref("browser.safebrowsing.downloads.remote.enabled", false); // Disables remote safe browsing for downloads
user_pref("browser.safebrowsing.phishing.enabled", false); // Disables phishing protection
user_pref("browser.safebrowsing.malware.enabled", false); // Disables malware protection
user_pref("dom.webnotifications.enabled", false); // Disables web notifications
user_pref("signon.management.page.breach-alerts.enabled", false); // Disables breach alerts
user_pref("layout.spellcheckDefault", 0); // Disables spell checking
user_pref("signon.rememberSignons", false); // Disables password saving prompts
user_pref("permissions.default.microphone", 2); // Blocks microphone access by default
user_pref("permissions.default.desktop-notification", 2); // Blocks desktop notifications by default
user_pref("permissions.default.geo", 2); // Blocks location access by default
user_pref("geo.enabled", false); // Fully disables location access
user_pref("media.navigator.enabled", false); // Disables certain media navigator features
user_pref("browser.cache.disk.enable", false); // Disables disk cache for performance
user_pref("network.captive-portal-service.enabled", false); // Disables captive portal service
user_pref("network.connectivity-service.enabled", false); // Disables network connectivity checks
user_pref("browser.translation.ui.show", false); // Disables the translation UI prompts
user_pref("browser.translation.detectLanguage", false); // Disables automatic language detection for translation
user_pref("browser.newtabpage.activity-stream.showSponsored", false); // Disables sponsored shortcuts
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false); // Disables sponsored top sites
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false); // Disables the shortcuts (top sites)

////////////////////////
// Re-enable Features //
////////////////////////

user_pref("keyword.enabled", true); // Enables searching from the URL bar
user_pref("browser.startup.page", 1); // Browser starts on the Homepage
user_pref("browser.startup.homepage", "about:home"); // Sets homepage
user_pref("browser.newtabpage.enabled", true); // Enables non-empty new tab pages
user_pref("browser.search.suggest.enabled", true); // Enables search suggestions
user_pref("browser.urlbar.suggest.searches", true); // Enables search suggestions in the URL bar
user_pref("webgl.disabled", false); // Enables WebGL
user_pref("media.eme.enabled", true); // Enables Digital Rights Management (DRM) content
user_pref("privacy.resistFingerprinting", false); // Disables resistance to fingerprinting (allows detection of system theme, resolution, timezone, etc.)

//////////////////
// Misc Changes //
//////////////////

user_pref("browser.shell.shortcutFavicons", true); // Enables favicons in shortcuts
user_pref("privacy.sanitize.sanitizeOnShutdown", false); // Disables clearing data on shutdown
user_pref("privacy.clearOnShutdown.history", false); // Disables clearing history on shutdown
user_pref("network.trr.mode", 3); // Sets DNS-over-HTTPS (NextDNS required)
user_pref("network.trr.custom_uri", ""); // Custom DNS address
user_pref("network.trr.uri", ""); // DNS address
user_pref("general.autoScroll", true); // Enables middle click scroll
user_pref("privacy.spoof_english", 2); // Spoofs English by default
user_pref("javascript.use_us_english_locale", true); // Enables use of US English locale
user_pref("intl.accept_languages", "en-US, en"); // Sets language preferences to US English
user_pref("layout.css.prefers-color-scheme.content-override", 2); // Force dark mode by default
user_pref("identity.fxaccounts.enabled", true); // Disables Firefox Sync features
user_pref("identity.sync.tokenserver.uri", "https://fxsync.raffay.me/1.0/sync/1.5"); // Custom sync server
user_pref("browser.newtabpage.pinned", ""); // Removes pinned website ads
user_pref("browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned", ""); // Removes Google & co. from "top sites"

///////////////////
// DNS Settings //
///////////////////

// Set DNS-over-HTTPS (DoH) to NextDNS
user_pref("network.trr.mode", 3); // Enables DNS-over-HTTPS with fallback to traditional DNS
user_pref("network.trr.uri", ""); // NextDNS DoH endpoint
user_pref("network.trr.custom_uri", ""); // Custom DNS server for advanced use

// Disable traditional DNS for stricter privacy
user_pref("network.dns.disableIPv6", true); // Dont use IPv6
user_pref("network.dns.disablePrefetch", true); // Disables DNS prefetching
user_pref("network.dns.blockDotOnion", true); // Blocks .onion addresses from resolving
