{
  programs.firefox = {
    enable = true;

    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      DontChechDefaultBrowser = true;

      ExtensionSettings = {
        "uBlock@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
      };
    };

    profiles.default = {
      id = 0;
      isDefault = true;
      settings = {
        "browser.startup.page" = 3;
      };
    };
  };
}
