// Disable letter boxing
user_pref("privacy.resistFingerprinting.letterboxing", false);

// Re-enable search engines
user_pref("keyword.enabled", true);

// Enable favicons, the icons in bookmarks
user_pref("browser.shell.shortcutFavicons", true);

// Strict third party requests, may cause images/video to break.
user_pref("network.http.referer.XOriginPolicy", 2);

// Auto playing settings
// 0=sticky (default), 1=transient, 2=user
user_pref("media.autoplay.blocking_policy", 2);

// Delete items on close
user_pref("privacy.sanitize.sanitizeOnShutdown", false);
user_pref("privacy.clearOnShutdown.history", false);

// Disable Pocket
user_pref("extensions.pocket.enabled", false);

// Firefox sync
user_pref("identity.fxaccounts.enabled", true);
user_pref("identity.sync.tokenserver.uri", "https://ffsyncsever.plantiful.cz/token/1.0/sync/1.5");

// Set default permissions
user_pref("permissions.default.geo", 2);
user_pref("permissions.default.camera", 2);
user_pref("permissions.default.microphone", 2);
user_pref("permissions.default.xr", 2);

// Dont save passwords
user_pref("signon.rememberSignons", false);

// Enable webgl
user_pref("webgl.disabled", false);

// Disable letterboxing
user_pref("privacy.resistFingerprinting.letterboxing", false);
