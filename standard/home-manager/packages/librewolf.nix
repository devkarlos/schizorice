{ config, lib, pkgs, ... }:

{
  # https://nixos.wiki/wiki/librewolf
  programs.librewolf = {
    enable = true;

    policies = {
      ExtensionSettings = {
        "*".installation_mode = "blocked";
        "446900e4-71c2-419f-a6a7-df9c091e268b" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4467426/";
          installation_mode = "force_installed";
        }
      };
    };

    # https://github.com/dwarfmaster/arkenfox-nixos
    arkenfox = {
      enable = true;
      version = "latest";
    };

    profiles.karlos.arkenfox = {
      enable = true;

      # Disable features

      ## Browser starts on the homepage
      "0100"."0102"."browser.startup.page".value = 1;
      "0100"."0103"."browser.startup.homepage".value = "about:home";
      # Enables non-empty new tab pages
      "0100"."0104"."browser.newtabpage.enabled".value = true;
      # Disables sponsored shortcuts
      "0100"."0105"."browser.newtabpage.activity-stream.showSponsored".value = false;
      # Disables sponsored top sites
      "0100"."0105"."browser.newtabpage.activity-stream.showSponsoredTopSites".value = false;

      "0300"."0360"."network.captive-portal-service.enabled".value = false;
      "0300"."0361"."network.connectivity-service.enabled".value = false;

      "0400"."0401"."browser.safebrowsing.malware.enabled".enable = false;
      "0400"."0401"."browser.safebrowsing.phishing.enabled".enable = false;
      "0400"."0403"."browser.safebrowsing.downloads.remote.enabled".value = false;

      "0600"."0602"."network.dns.disablePrefetch".value = true;

      "0700"."0710"."network.trr.mode" = {
         enable = true;
         value = 3;
      };
      "0700"."0712"."network.trr.custom_uri" = {
         enable = true;
         value = "";
      };
      "0700"."0712"."network.trr.uri" = {
         enable = true;
         value = "";
      };

      "0800"."0803"."browser.search.suggest.enabled".value = true;
      "0800"."0803"."browser.urlbar.suggest.searches".value = true;

      "1000"."1001"."browser.cache.disk.enable".value = false;
      "1000"."1006"."browser.shell.shortcutFavicons".value = true;

      "2800"."2810"."privacy.sanitize.sanitizeOnShutdown".value = false;
      "2800"."2811"."privacy.clearOnShutdown_v2.historyFormDataAndDownloads".value = false;
      "2800"."2812"."privacy.clearOnShutdown_v2.browsingHistoryAndDownloads".value = false;

      "4500"."4501"."privacy.resistFingerprinting".enable = false;
      "4500"."4504"."privacy.resistFingerprinting.letterboxing".enable = false;
      "4500"."4506"."privacy.spoof_english".value = 2;
      "4500"."4520"."webgl.disabled".enable = false;

      "5000"."5003"."signon.rememberSignons".enable = false;
      "5000"."5021"."keyword.enabled" = {
         enable = true;
         value = true;
      };

      "5500"."5508"."media.eme.enabled" = {
         enable = true;
         value = true;
      };
      "5500"."5509"."network.dns.disableIPv6" = {
         enable = true;
         value = true;
      };

    };

    settings = {
      "xpinstall.signatures.required" = false;
      "extensions.autoDisableScopes" = 0;
      "extensions.pocket.enabled" = false;
      "dom.webaudio.enabled" = false;
      "dom.webnotifications.enabled" = false;
      "signon.management.page.breach-alerts.enabled" = false;
      "layout.spellcheckDefault" = 0;
      "permissions.default.microphone" = 2;
      "permissions.default.desktop-notification" = 2;
      "permissions.default.geo" = 2;
      "geo.enabled" = false;
      "media.navigator.enabled" = false;
      "browser.translation.ui.show" = false;
      "browser.translation.detectLanguage" = false;
      "browser.newtabpage.activity-stream.feeds.topsites" = false;
      "general.autoScroll" = true;
      "javascript.use_us_english_locale" = true;
      "intl.accept_languages" = "en-US, en";
      "layout.css.prefers-color-scheme.content-override" = 2;
      "browser.newtabpage.pinned" = "";
      "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts.havePinned" = "";
      "network.dns.blockDotOnion" = true;
    };

  };
}
