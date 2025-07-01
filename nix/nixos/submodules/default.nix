# A stripped down version of the home-manager submodule.
{lib}: {
  live = lib.types.submodule {
    options = {
      hooks = lib.mkOption {
        type = lib.types.submodule {
          options = {
            onActivation = lib.mkOption {
              type = lib.types.lines;
              default = "";
              description = ''Specified commands to run upon system activation. Usually used when you need a way to reset a program's state after it had been changed between rebuild iterations.'';
            };
          };
        };
        default = {
          onActivation = "";
        };
        example = {
          enable = true;
          onActivation = lib.literalExpression ''
            $${pkgs.swaync}/bin/swaync -s "/home/$(whoami)/.config/swaync/style.css"
          '';
        };
      };
    };
  };
}
