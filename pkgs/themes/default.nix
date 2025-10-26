{
  stdenvNoCC,
  fetchzip,
  fetchFromGitHub,
  dart-sass,
  gtk3Colors,
  gtk4Colors,
}: {
  base16-gtk = stdenvNoCC.mkDerivation rec {
    pname = "base16-gtk";
    version = "1.0";

    src = ./gtk/base16-gtk;
    installPhase = ''
      theme_dir=$out/share/themes/${pname};
      mkdir -p $theme_dir/{gtk-4.0,gtk-3.0};

      echo "\$colors-url: \"file://$HOME/.config/gtk-3.0/colors.css\";" > "$theme_dir/gtk-3.0/_local-paths.scss"

      ${dart-sass}/bin/sass $theme_dir/gtk-3.0/gtk.scss $theme_dir/gtk-3.0/gtk.css;
      ${dart-sass}/bin/sass $theme_dir/gtk-4.0/gtk.scss $theme_dir/gtk-4.0/gtk.css;

      cp -rf $src/index.theme $theme_dir;
      cp -rf $src/assets $theme_dir/gtk-3.0;
      cp -rf ${gtk3Colors} $theme_dir/gtk-3.0/colors.css;
      cp -rf ${gtk4Colors} $theme_dir/gtk-4.0/colors.css;

      ln -sf $theme_dir/gtk-3.0/assets $theme_dir/gtk-4.0/assets;
      ln -sf $theme_dir/gtk-4.0/gtk.css $theme_dir/gtk-4.0/gtk-dark.css;
      ln -sf $theme_dir/gtk-3.0/gtk.css $theme_dir/gtk-3.0/gtk-dark.css;
    '';
  };
}
