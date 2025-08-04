{
  stdenvNoCC,
  fetchzip,
  fetchFromGitHub,
  colorsFile,
}: {
  base16-gtk = stdenvNoCC.mkDerivation rec {
    pname = "base16-gtk";
    version = "1.0";

    src = ./gtk/base16-gtk;

    installPhase = let
      gtk4style = builtins.readFile ./gtk/base16-gtk/gtk-4.0/gtk.css;
      gtk3style = import ./gtk/base16-gtk/gtk-3.0/gtk.nix {};
    in ''
      theme_dir=$out/share/themes/${pname}
      mkdir -p $theme_dir/{gtk-4.0,gtk-3.0}

      cat > "$theme_dir/gtk-4.0/gtk.css" <<'EOF'
      ${gtk4style}
      EOF

      cat > "$theme_dir/gtk-3.0/gtk.css" <<'EOF'
      ${gtk3style}
      EOF

      cp -rf $src/index.theme $theme_dir;
      cp -rf $src/assets $theme_dir/gtk-3.0;
      cp -rf ${colorsFile} $theme_dir/gtk-3.0/colors.css;

      ln -sf "$theme_dir/gtk-3.0/assets" "$theme_dir/gtk-4.0/assets";
      ln -sf "$theme_dir/gtk-3.0/colors.css" "$theme_dir/gtk-4.0/colors.css";
      ln -sf "$theme_dir/gtk-4.0/gtk.css" "$theme_dir/gtk-4.0/gtk-dark.css";
      ln -sf "$theme_dir/gtk-3.0/gtk.css" "$theme_dir/gtk-3.0/gtk-dark.css";
    '';
  };
}
