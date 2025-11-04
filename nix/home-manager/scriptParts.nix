{lib, ...}:
lib.mkMerge [
  (lib.mkOrder 5
    ''
      #!/usr/bin/env bash

      ### Usage / help function
      usage() {
        cat <<-EOF
      Usage: $(basename "$0") [OPTIONS]

      Options:
        -g, --get KEY       print the value of KEY from settings.txt
        -u, --update THEME  switch to THEME (propagate to all configs)
        -h, --help          show this message and exit
      EOF
      }

      ### Default vars
      _action=""
      _key=""
      _theme=""
      config_dir="$HOME/.config"

      # 1) Pre-parse all options
      PARSED=$(getopt \
        --options g:u:h \
        --longoptions get:,update:,help \
        --name "$(basename "$0")" \
        -- "$@"
      ) || exit 1

      # 2) Re-initialize the positional parameters
      eval set -- "$PARSED"

      # 3) Handle options
      _action=""
      _key=""
      _theme=""
      while true; do
        case "$1" in
          -g|--get)
            _action="get"
            _key="$2"
            shift 2
            ;;
          -u|--update)
            _action="update"
            _theme="$2"
            shift 2
            ;;
          -h|--help)
            usage
            exit 0
            ;;
          --)
            shift
            break
            ;;
          *)
            echo "Unhandled option: $1" >&2
            exit 1
            ;;
        esac
      done

      # 4) Dispatch
      case $_action in
        get)
          grep "$_key=" "$config_dir/tintednix/settings.txt" | cut -d '=' -f 2
          ;;
      update)
        if [[ -z "$_theme" ]]; then
          echo "Error: --update requires a theme name." >&2
          usage
          exit 1
        fi

        # Clear settings.txt and append the new theme’s file
        sed -i '1,$d' "$config_dir/tintednix/settings.txt"
        src_file_content=$(cat "$config_dir/tintednix/color-schemes/$_theme.txt")
        gawk -i inplace -v src="$src_file_content" '{ print } ENDFILE { print src }' "$config_dir/tintednix/settings.txt" || echo "Failed to update settings"
    '')
  (lib.mkOrder 2000
    ''
          ;;
        *)
          echo "Error: no mode specified." >&2
          usage
          exit 1
          ;;
      esac
    '')
]
