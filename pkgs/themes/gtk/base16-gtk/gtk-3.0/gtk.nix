{}: ''
  @import url("file:///home/brandon/.config/gtk-3.0/colors.css");

  @keyframes ripple-out {
    from {
      background-image: radial-gradient(circle farthest-corner at center, alpha(currentColor, 1) 0%, transparent 0%);
    }
    to {
      background-image: radial-gradient(circle farthest-corner at center, alpha(currentColor, 1) 100%, transparent 0%);
    }
  }

  @keyframes ripple-in {
    from {
      background-image: radial-gradient(circle farthest-corner at center, alpha(currentColor, 1) 100%, transparent 0%);
    }
    to {
      background-image: radial-gradient(circle farthest-corner at center, alpha(currentColor, 1) 0%, transparent 0%);
    }
  }

  @keyframes ripple-out-base0D {
    from {
      background-image: radial-gradient(circle farthest-corner at center, alpha(@base0D, 1) 0%, transparent 0%);
    }
    to {
      background-image: radial-gradient(circle farthest-corner at center, alpha(@base0D, 1) 100%, transparent 0%);
    }
  }

  @keyframes ripple-in-base0D {
    from {
      background-image: radial-gradient(circle farthest-corner at center, alpha(@base0D, 1) 100%, transparent 0%);
    }
    to {
      background-image: radial-gradient(circle farthest-corner at center, alpha(@base0D, 1) 0%, transparent 0%);
    }
  }

  @keyframes slide-right {
    from {
      background-image: radial-gradient(circle farthest-corner at 0% 50%, alpha(currentColor, 1) 0%, transparent 0%);
    }
    to {
      background-image: radial-gradient(circle farthest-corner at 50% 50%, alpha(currentColor, 1) 100%, transparent 0%);
    }
  }

  @keyframes slide-left {
    from {
      background-image: radial-gradient(circle farthest-corner at 50% 50%, alpha(currentColor, 1) 100%, transparent 0%);
    }
    to {
      background-image: radial-gradient(circle farthest-corner at 0% 50%, alpha(currentColor, 1) 0%, transparent 0%);
    }
  }

  * {
    font:
      normal 16px "JetBrainsMono Nerd Font",
      sans-serif;
    text-decoration: none;

    outline: none;
    caret-color: @base0D;

    transition:
      opacity,
      transform,
      -gtk-icon-transform;
  }

  .background {
    color: @window-fg-color;
  }

  window {
    background-color: @base01;
  }
  window.background > box {
    background-color: @base01;
  }
  window > *:not(headerbar) {
    border-radius: 10px;
  }
  window > box > label {
    color: @base0D;
  }

  decoration {
    margin: 0px 30px 45px 15px;
    border-radius: 10px;
    box-shadow:
      4px 12px 10px rgba(0, 0, 0, 0.2),
      7px 18px 14px rgba(0, 0, 0, 0.21),
      10px 24px 18px rgba(0, 0, 0, 0.25),
      14px 30px 24px rgba(0, 0, 0, 0.3),
      -1px -1px 0px mix(@base01, white, 0.1);
  }

  arrow {
    color: @base0D;

    -gtk-icon-source: -gtk-icontheme("go-next-symbolic");
  }
  arrow.left {
    -gtk-icon-source: -gtk-icontheme("go-previous-symbolic");
  }
  arrow.right {
    -gtk-icon-source: -gtk-icontheme("go-next-symbolic");
  }

  dialog,
  .dialog-vbox,
  .titlebar {
    background-color: @base01;
  }
  buttonbox.dialog-action-area {
    margin: 3px;
  }

  :disabled {
    opacity: 0.6;
  }

  /* Merge of headerbar and headerbar windowhandle > box from gtk-4.0 */
  headerbar {
    min-height: 46px;
    margin: 0px -1px 0px -1px;
    padding: 0px 6px 0px 6px;

    color: @base0D;

    background-color: @base01;
    box-shadow:
      1px 1px 1px rgba(0, 0, 0, 0.17),
      2px 2px 4px rgba(0, 0, 0, 0.2);
  }

  label,
  text,
  image {
    color: @base0D;
  }
  label.title,
  label.subtitle {
    padding: 0px 12px 0px 12px;
  }
  label.subtitle {
    opacity: 0.5;
  }

  entry {
    min-height: 30px;
    margin: 1px 0px 0px 1px;
    padding: 1px 9px 2px 8px;
    border-radius: 50px;

    color: @base0D;

    background-color: @base02;
    background-clip: padding-box;
    outline: none;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base02, white, 0.1);
    caret-color: @base0D;
  }
  entry:focus,
  entry > button:active,
  entry > button:checked {
    margin: 0px 0px 0px 0px;
    padding: 2px 9px 2px 9px;
    box-shadow:
      1px 2px 2px mix(@base02, black, 0.35) inset,
      2px 4px 4px mix(@base02, black, 0.35) inset,
      -1px -1px 0px mix(@base02, white, 0.1) inset;
  }
  entry > image {
    color: @base0D;
    opacity: 50%;
  }
  entry > image:hover {
    opacity: 100%;
  }
  entry image.left {
    margin-right: 7px;
  }
  entry image.right {
    margin-left: 7px;
  }
  entry.search {
    border: none;
  }
  placeholder {
    opacity: 0.55;
  }

  selection {
    color: @base01;
    background-color: @base0D;
  }

  sort-indicator,
  button:active sort-indicator {
    color: @base0D;
  }
  button:hover:not(:active) sort-indicator {
    color: @base01;
  }

  progressbar,
  levelbar {
    background-color: transparent;
  }
  progressbar text {
    color: @base0D;
  }
  progressbar.vertical trough {
    min-width: 8px;
    min-height: 80px;
  }
  progressbar.vertical progress {
    min-width: 8px;
  }
  progressbar.horizontal trough {
    min-width: 150px;
    min-height: 8px;
  }
  progressbar.horizontal trough,
  progressbar.horizontal progress,
  levelbar.horizontal block {
    min-height: 8px;
    border-radius: 99px;
  }
  levelbar.continuous block {
    border-radius: 50px;
  }
  levelbar.discrete.horizontal block {
    min-width: 26px;
  }
  levelbar.discrete block:first-child {
    border-radius: 50px 0px 0px 50px;
  }
  levelbar.discrete block:last-child {
    border-radius: 0px 50px 50px 0px;
  }
  levelbar.discrete block:not(:first-child):not(last-child) {
    border-radius: 0px;
  }
  levelbar.discrete block.filled:not(:first-child) {
    border-left: 1px solid @base01;
  }
  block.empty {
    border: none;
    background-color: transparent;
    box-shadow:
      1px 1px 1px mix(@base01, black, 0.2) inset,
      2px 2px 2px mix(@base01, black, 0.2) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  block.filled {
    background-color: @base0B;
  }

  progressbar progress,
  levelbar block.filled {
    background-color: @base0B;
  }
  progressbar progress {
    margin: 0px -1px 0px -1px;
    border-radius: 50px;
  }
  levelbar.discrete > trough > block:last-child {
    border-top-right-radius: 50px;
    border-bottom-right-radius: 50px;
  }
  label.in-progress {
    color: @base01;
  }

  scale slider,
  switch slider {
    border-radius: 100%;
    background-color: @base02;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base02, white, 0.1);
  }

  scale {
    min-width: 10px;
    min-height: 10px;
    padding: 12px;
  }
  scale.marks-after {
    padding: 12px 12px 0px 12px;
  }
  scale trough {
    border-radius: 9px;
    background-color: transparent;
    box-shadow:
      1px 1px 1px mix(@base01, black, 0.3) inset,
      2px 2px 2px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  scale highlight {
    border-radius: 9px;
    background-color: @base0B;
  }
  scale slider {
    /*Tiny bit different than in gtk-4.0 because of slight differences*/
    min-width: 18px;
    min-height: 18px;
    margin: -9px;

    color: @base0D;

    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  scale slider:hover {
    color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  scale value {
    color: @base0D;
  }
  scale marks {
    margin: 6px 0px 0px 0px;
  }
  scale marks indicator {
    min-width: 1px;
    min-height: 6px;
    color: @base0B;
    background-color: @base0B;
  }
  scale.horizontal trough {
    min-height: 4px;
  }
  scale.vertical trough {
    min-width: 4px;
  }
  progressbar trough,
  levelbar trough,
  progresscell trough,
  scale trough {
    border-radius: 50px;
    background-color: transparent;
    box-shadow:
      1px 1px 1px mix(@base01, black, 0.2) inset,
      2px 2px 2px mix(@base01, black, 0.2) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }

  switch {
    padding: 3px;
    border-radius: 50px;

    color: @base0D;

    background: transparent;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;

    animation: slide-left 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  switch:checked {
    color: @base0D;
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
    animation: slide-right 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  switch slider {
    min-width: 20px;
    min-height: 20px;
  }
  switch image {
    color: transparent;
  }

  checkbutton,
  radiobutton {
    padding: 4px;
  }
  checkbutton > label {
    margin-right: 4px;
    color: @base0D;
  }
  check,
  radio {
    min-width: 14px;
    min-height: 14px;
    margin: 0px 4px 0px 4px;
    padding: 3px;
    border-width: 0px;

    background-color: transparent;
    box-shadow:
      1px 1px 1px mix(@base01, black, 0.2) inset,
      2px 2px 2px mix(@base01, black, 0.2) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;

    animation: ripple-in-base0D 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  check:checked,
  check:indeterminate,
  radio:checked,
  radio:indeterminate {
    color: @base01;
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.3) inset,
      2px 4px 4px mix(@base0D, black, 0.3) inset,
      -1px -1px 0px mix(@base0D, white, 0.1) inset;
    animation: ripple-out-base0D 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  radio {
    border-radius: 100%;
  }
  check {
    border-radius: 6px;
  }
  radio:checked {
    -gtk-icon-source: image(
      -gtk-recolor(url("file:///nix/store/02879zizdv7vmd7prks022gjfb9k43a1-adw-gtk3-5.10/share/themes/adw-gtk3-dark/gtk-3.0/assets/bullet-symbolic.svg")),
      -gtk-recolor(url("file:///nix/store/02879zizdv7vmd7prks022gjfb9k43a1-adw-gtk3-5.10/share/themes/adw-gtk3-dark/gtk-3.0/assets/bullet-symbolic.symbolic.png"))
    );
  }
  radio:indeterminate {
    -gtk-icon-source: image(
      -gtk-recolor(url("file:///nix/store/02879zizdv7vmd7prks022gjfb9k43a1-adw-gtk3-5.10/share/themes/adw-gtk3-dark/gtk-3.0/assets/dash-symbolic.svg")),
      -gtk-recolor(url("file:///nix/store/02879zizdv7vmd7prks022gjfb9k43a1-adw-gtk3-5.10/share/themes/adw-gtk3-dark/gtk-3.0/assets/dash-symbolic.symbolic.png"))
    );
  }
  check:checked {
    -gtk-icon-source: image(
      -gtk-recolor(url("file:///nix/store/02879zizdv7vmd7prks022gjfb9k43a1-adw-gtk3-5.10/share/themes/adw-gtk3-dark/gtk-3.0/assets/check-symbolic.svg")),
      -gtk-recolor(url("file:///nix/store/02879zizdv7vmd7prks022gjfb9k43a1-adw-gtk3-5.10/share/themes/adw-gtk3-dark/gtk-3.0/assets/check-symbolic.symbolic.png"))
    );
  }
  check:indeterminate {
    -gtk-icon-source: image(
      -gtk-recolor(url("file:///nix/store/02879zizdv7vmd7prks022gjfb9k43a1-adw-gtk3-5.10/share/themes/adw-gtk3-dark/gtk-3.0/assets/dash-symbolic.svg")),
      -gtk-recolor(url("file:///nix/store/02879zizdv7vmd7prks022gjfb9k43a1-adw-gtk3-5.10/share/themes/adw-gtk3-dark/gtk-3.0/assets/dash-symbolic.symbolic.png"))
    );
  }

  spinbutton {
    min-height: 35px;
    border-radius: 50px;

    color: @base0D;

    background-color: @base02;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base02, white, 0.1);
  }
  spinbutton > entry {
    min-width: 30px;
    margin: 0px;
    padding: 0px 6px 0px 6px;
    border-radius: 50px;

    background-color: transparent;
    box-shadow: none;
  }
  spinbutton > entry:focus {
    padding: 0px 6px 0px 6px;
  }
  spinbutton button.up,
  spinbutton button.down {
    min-width: 24px;
    min-height: 24px;
    padding: 0px 5px 0px 5px;
    border-color: transparent;

    animation: ripple-in-base0D 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  spinbutton button:hover {
    color: @base01;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
    animation: ripple-out-base0D 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  spinbutton button.up:active,
  spinbutton button.up:hover:active,
  spinbutton button.down:active,
  spinbutton button.down:hover:active {
    margin: 0px;
    padding: 1px 5px 0px 6px;
    box-shadow:
      1px 2px 2px mix(@base02, black, 0.35) inset,
      2px 4px 4px mix(@base02, black, 0.35) inset,
      -1px -1px 0px mix(@base02, white, 0.1) inset;
  }
  spinbutton.vertical button {
    min-height: 40px;
  }
  spinbutton.vertical > entry {
    padding: 6px 0px 6px 0px;
  }

  button,
  toolbutton > button.text-button.image-button {
    min-width: 16px;
    min-height: 30px;
    margin: 1px 0px 0px 1px;
    padding: 1px 9px 2px 8px;
    border-radius: 50px;

    color: @base0D;

    background-color: transparent;
    box-shadow: none;

    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  button.destructive-action:not(#_) {
    color: @base08;
  }
  button.small-button {
    /*24x24 allocation*/
    min-width: 16px;
    min-height: 22px;
    margin: 1px 0px 0px 1px;
    padding: 0px 4px 1px 3px;
  }
  button.small-button:active,
  button.small-button:hover:active {
    margin: 0px;
    padding: 1px 4px 1px 4px;
    box-shadow:
      1px 1px 1px mix(@base01, black, 0.2) inset,
      2px 2px 2px mix(@base01, black, 0.2) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  button:active,
  button:checked,
  button:hover:active,
  button:active:checked,
  button:hover:active:checked,
  button:hover:active:checked:focus,
  toolbutton > button.text-button.image-button:hover:active {
    margin: 0px;
    padding: 2px 9px 2px 9px;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  button:hover,
  toolbutton > button.text-button.image-button:hover {
    color: @base0D; /*the ripple keyframe inherits this for use in the background-image, which is why background-color isn't needed*/
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  button:hover:checked {
    margin: 0px;
    padding: 2px 9px 2px 9px;
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  stack > button:not(.image-button),
  button.text-button,
  button.font,
  button.file {
    background-color: @base02;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base02, white, 0.1);
  }
  stack > button:not(.image-button):active,
  stack > button:not(.image-button):hover:active,
  button.file:active,
  button.file:hover:active,
  button.file:hover:active:checked button.text-button:active,
  button.text-button:checked,
  button.text-button:hover:active,
  button.text-button:active:checked,
  button.text-button:hover:active:checked,
  button.font:active,
  button.font:hover:active,
  button.font:hover:active:checked {
    color: @base0D;
    box-shadow:
      1px 2px 2px mix(@base02, black, 0.35) inset,
      2px 4px 4px mix(@base02, black, 0.35) inset,
      -1px -1px 0 mix(@base02, white, 0.1) inset;
  }
  stack > button:hover,
  button.text-button:hover,
  button.font:hover,
  button.file:hover {
    color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }
  button.destructive-action:not(#_):hover:not(:active) {
    color: @base08;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base08, white, 0.4);
  }
  button.text-button:hover:checked,
  button.font:hover:checked,
  button.file:hover:checked {
    color: @base0D;
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  button.destructive-action:not(#_):hover:checked {
    /*The class is unset when the button is checked*/
  }
  button.text-button.radio,
  button.text-button.toggle {
    min-width: 100px;
  }
  button.image-button:active,
  toolbutton > button.text-button.image-button:active {
    background-color: transparent;
  }
  /*Only declare color nested three nodes down the tree rather than just "button *". This should cover most cases while avoiding unintended colorations in popovers*/
  button > *,
  button:active > *,
  button:checked > *,
  button:hover:active > *,
  button:checked:active > *,
  button:hover:checked:active > *,
  button > box > *,
  button:active > box > *,
  button:checked > box > *,
  button:hover:active > box > *,
  button:checked:active > box > *,
  button:hover:checked:active > box > *,
  button:hover:active > box > * > * {
    color: @base0D;
  }
  button:hover > *,
  button:hover > box > *,
  button:hover > box > * > * {
    color: @base01;
  }
  button.destructive-action > *,
  button.destructive-action:active > *,
  button.destructive-action:hover:active > *,
  button.destructive-action > box > *,
  button.destructive-action:active > box > *,
  button.destructive-action:hover:active > box > *,
  button.destructive-action:hover:active > box > * > * {
    color: @base08;
  }
  button.destructive-action:hover > *,
  button.destructive-action:hover > box > *,
  button.destructive-action:hover > box > * > * {
    color: @base01;
  }

  button separator,
  button:hover:active separator {
    /* margin: 0px 0px 0px 10px; */
    opacity: 0.8;
    background-image: image(@base0D);
  }
  button:hover separator {
    background-image: image(@base01);
  }

  /*color button*/
  colorswatch {
    border-radius: 50px;
  }

  separator {
    min-width: 1px;
    min-height: 1px;
    margin: 6px -1px 6px 7px;
    padding-right: 8px;

    background-color: transparent;
    background-image: image(@base02);
    background-repeat: repeat-y;
    background-position: left;
    background-size: 1px 1px;
  }
  separator.horizontal,
  menuitem separator {
    margin: 6px 16px 6px 16px;
    background-color: @base02;
  }
  separator.vertical {
    margin-top: 6px;
    margin-bottom: 6px;
  }

  menubar {
    padding-bottom: 1px;
  }
  menubar > menuitem {
    margin: 3px;
    padding: 4px 8px 4px 8px;
    border-radius: 10px;
  }
  /*popover > stack merge in gtk-4.0*/
  menu {
    min-width: 120px;
    padding: 6px;
    border-width: 0px;
    border-radius: 10px;
  }
  menu > menuitem {
    min-width: 40px;
    min-height: 30px;
    margin: 1px 0px 0px 1px;
    padding: 1px 9px 2px 8px;
    border-radius: 50px;

    color: @base0D;
  }
  menuitem:hover {
    background-color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }
  menuitem:hover > * {
    color: @base01;
  }
  menu > menuitem label:first-child {
    margin-left: -38px;
    /* For the popup menuitem boundary spacing*/
    padding-left: 10px;
  }
  menuitem:hover > check:not(:checked),
  menuitem:hover > radio:not(:checked) {
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
  }

  toolbar {
    padding: 6px;
    border-top: 0px solid rgb(41, 47, 69);
    background-color: @base01;
  }
  toolbutton > button.text-button.image-button {
    padding: 1px 5px 2px 4px;
  }
  toolbutton > button.text-button.image-button:hover:active {
    padding: 2px 5px 2px 5px;
  }
  statusbar frame {
    margin: -5px;
    background-color: transparent;
    box-shadow: none;
  }

  tabs {
    padding: 0px 4px 0px 4px;
  }
  tab {
    min-width: 130px; /*Had to bump to 130 here to increase spacing between labels and buttons*/
    min-height: 24px;
    margin: 6px 0px 5px 1px;
    padding: 4px 17px 5px 16px;
    border-radius: 50px;

    color: @base0D;

    background-color: inherit;

    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  tab:checked {
    margin: 5px 0px 5px 0px;
    padding: 5px 17px 5px 17px;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  tab:hover:not(:checked) {
    color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  tab:hover:not(:checked) label,
  tab:hover:not(:checked) image {
    color: @base01;
  }

  actionbar > revealer {
    padding: 6px;
  }
  actionbar > revealer > box > button.image-button.popup {
    margin: 6px;
  }
  actionbar > revealer > box > button.image-button.popup:active {
    margin: 5px 6px 6px 5px;
  }

  scrolledwindow:not(.sidebar),
  textview {
    margin: 5px; /*Makes spacing better. Not in gtk4 version*/
    border-radius: 10px;
  }
  scrolledwindow.frame,
  frame {
    margin: 5px;
    border-radius: 10px;
    background-color: @base00;
    box-shadow:
      1px 2px 2px mix(@base00, black, 0.3) inset,
      2px 4px 4px mix(@base00, black, 0.3) inset,
      -1px -1px 0 mix(@base00, white, 0.1) inset;
  }
  frame button.small-button:active,
  frame button.small-button:hover:active,
  scrolledwindow.frame button.small-button:active,
  scrolledwindow.frame button.small-button:hover:active,
  scrolledwindow.frame textview,
  scrolledwindow.frame block.empty,
  scrolledwindow.frame progressbar trough,
  scrolledwindow.frame levelbar trough,
  scrolledwindow.frame scale trough,
  scrolledwindow.frame radio:not(:checked),
  scrolledwindow.frame check:not(:checked) {
    box-shadow:
      1px 1px 1px mix(@base00, black, 0.3) inset,
      2px 2px 2px mix(@base00, black, 0.3) inset,
      -1px -1px 0px mix(@base00, white, 0.1) inset;
  }
  frame button.image-button:active,
  frame button.image-button:hover:active,
  frame toolbutton > button.text-button.image-button:active,
  frame toolbutton > button.text-button.image-button:hover:active,
  frame tab:checked,
  frame tab:active,
  scrolledwindow.frame switch:not(:checked),
  scrolledwindow.frame row.activatable:active {
    background-color: transparent;
    box-shadow:
      1px 2px 2px mix(@base00, black, 0.3) inset,
      2px 4px 4px mix(@base00, black, 0.3) inset,
      -1px -1px 0px mix(@base00, white, 0.1) inset;
  }
  scrolledwindow > iconview *:selected {
    border-radius: 10px;
    background-color: @base0D;
  }
  scrolledwindow.frame textview,
  frame textview {
    box-shadow: none;
  }
  textview {
    margin: 5px;
    border-radius: 10px;
    color: @base0D;
  }

  frame {
    margin: 5px;
    border-radius: 10px;
    background-color: @base00;
    box-shadow:
      1px 2px 2px mix(@base00, black, 0.3) inset,
      2px 4px 4px mix(@base00, black, 0.3) inset,
      -1px -1px 0px mix(@base00, white, 0.1) inset;
  }
  frame menubar,
  frame toolbar {
    background-color: transparent;
  }
  frame > scrolledwindow {
    padding-top: 8px;
    padding-right: 6px;
    padding-bottom: 8px;
    padding-left: 6px;
  }
  frame > label {
    margin: 4px;
  }
  frame.app-notification {
    padding: 10px;
  }

  button > box > arrow {
    min-width: 16px;
    min-height: 16px;
    color: @base0D;
  }

  treeview.view {
    margin-bottom: 2px;
    padding: 5px 8px 5px 8px;
    background-color: transparent;
  }
  treeview.view .cell {
    color: @base0D;
  }
  treeview.view radio:checked,
  treeview.view check:checked,
  treeview .cell:hover:not(:focus) {
    color: @base01;
    background-color: @base0D;
  }
  treeview.view check.cell:hover:not(:focus),
  treeview.view radio.cell:hover:not(:focus) {
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
  }
  treeview.view .cell:focus:not(check):not(radio) {
    /*Need :not(check):not(radio) so check and radio buttons don't receive this box-shadow too*/
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  scrolledwindow treeview.view .cell:focus:not(check):not(radio),
  scrolledwindow treeview.view button:hover:active {
    box-shadow:
      1px 2px 2px mix(@base00, black, 0.3) inset,
      2px 4px 4px mix(@base00, black, 0.3) inset,
      -1px -1px 0 mix(@base00, white, 0.1) inset;
  }
  filechooser scrolledwindow {
    box-shadow: none;
  }

  scrollbar {
    margin-right: -12px;
    padding: 0px;
    color: @base0D;
    opacity: 0.5;
  }
  scrollbar > contents > trough {
    border-radius: 50px;
  }
  scrollbar > contents > trough > slider {
    min-width: 8px;
    min-height: 8px;
    margin: -8px;
    border: 8px solid transparent;
    border-radius: 50px;

    background-color: @base0D;
    background-clip: padding-box;

    transition: all 200ms linear;
  }
  scrollbar.bottom.horizontal > contents > trough {
    margin: 16px 9px 16px 9px;
  }
  scrollbar.right.vertical > contents > trough {
    margin: 9px 16px 9px 16px;
  }
  scrollbar > contents > trough > slider:disabled {
    opacity: 0;
  }
  scrollbar.overlay-indicator.horizontal:not(.hovering) > contents > trough > slider {
    min-width: 40px;
    min-height: 3px;
  }
  scrollbar.overlay-indicator.vertical:not(.hovering) > contents > trough > slider {
    min-width: 3px;
    min-height: 40px;
  }
  scrollbar.overlay-indicator.hovering > contents > trough {
    /* This is rgb value of base0D */
    background-color: rgba(137, 180, 250, 0.3);
  }
  scrollbar.overlay-indicator.horizontal.hovering > contents > trough > slider {
    min-height: 8px;
  }
  scrollbar.overlay-indicator.vertical.hovering > contents > trough > slider {
    min-height: 40px;
  }
  scrollbar button {
    color: rgba(0, 0, 0, 0);
    background-color: rgba(0, 0, 0, 0);
  }
  scrollbar .down {
    margin-bottom: -50px;
  }
  scrollbar .up {
    margin-top: -50px;
  }

  tooltip {
    margin: 1px 30px 45px 15px;
    padding: 6px 10px;
    border-width: 0px;
    border-radius: 50px;

    color: @base0D;

    background-color: @base02;
  }
  tooltip decoration {
    border-radius: 50px;
    background-color: transparent;
    box-shadow: none;
    box-shadow:
      4px 12px 10px rgba(0, 0, 0, 0.2),
      7px 18px 14px rgba(0, 0, 0, 0.21),
      10px 24px 18px rgba(0, 0, 0, 0.25),
      14px 30px 24px rgba(0, 0, 0, 0.3),
      -1px -1px 0px mix(@base02, white, 0.1);
  }
  tooltip label {
    padding: 0px 6px 0px 6px;
  }

  spinner {
    color: @base0D;

    animation-name: spin;
    animation-duration: 1s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;

    -gtk-icon-source: -gtk-icontheme("process-working-symbolic");
  }

  .popup arrow {
    min-width: 16px;
    min-height: 16px;
  }
  .popup label * {
    opacity: 0.5;
  }
  .popup {
    border-radius: 10px;
  }
  .popup decoration {
    background-color: @base01;
  }

  /*-------------------------------------------*/

  /* container */
  stackswitcher,
  box.linked {
    min-height: 24px;
  }
  stackswitcher.linked {
    margin: 7px 0px 6px 0px;
  }
  .linked {
    border-radius: 50px;
    background-color: @base02;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base02, white, 0.1);
  }
  .linked > *:not(:hover):not(:active):not(:checked):not(:focus),
  .linked > entry:not(:focus) {
    box-shadow: none;
  }
  .linked > *:hover {
    border-left: 0px dotted @base00;
    border-radius: 50px;
  }
  .linked > *:active,
  .linked > *:checked,
  .linked > *:hover:active,
  .linked > *:hover:checked,
  .linked > entry:focus {
    border-left-width: 0px;
    border-radius: 50px;
  }
  .linked button:active,
  .linked button:checked,
  .linked button:hover:active,
  .linked button:hover:checked,
  .linked button:hover:active:checked,
  .linked button.image-button:active,
  .linked button.image-button:checked,
  .linked button.image-button:hover:active,
  .linked button.image-button:active:checked,
  .linked button.image-button:hover:active:checked,
  .linked > button.image-button:hover:active:focus {
    background-color: transparent;
    box-shadow:
      1px 2px 2px mix(@base02, black, 0.35) inset,
      2px 4px 4px mix(@base02, black, 0.35) inset,
      -1px -1px 0 mix(@base02, white, 0.1) inset;
  }
  .linked button:hover:checked,
  .linked button.image-button:hover:checked {
    padding: 2px 9px 2px 9px;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }
  .linked > * + button:hover {
    margin: 1px 0px 0px 2px;
  }
  .linked > * + button:active,
  .linked > * + button:checked,
  .linked > * + button:hover:active,
  .linked > * + button:hover:checked,
  .linked > * + button:hover:active:checked {
    margin: 0px 0px 0px 1px;
  }
  .linked > * + * {
    border-left: 1px dotted @base00;
    border-top-left-radius: 0px;
    border-bottom-left-radius: 0px;
  }
  .linked > *:first-child {
    border-top-left-radius: 50px;
    border-bottom-left-radius: 50px;
  }
  .linked > *:last-child {
    border-top-right-radius: 50px;
    border-bottom-right-radius: 50px;
  }
  .linked > scrolledwindow:hover + *,
  .linked > entry:focus + *,
  .linked > button:hover + *,
  .linked > button:active + *,
  .linked > button:checked + *,
  .linked > button:hover:active + *,
  .linked > button:hover:checked + *,
  .linked > *:hover + * {
    border-left-color: transparent;
    border-radius: 50px;
  }
  .linked > combobox,
  .linked > * + combobox {
    padding: 0px;
    border-left: transparent;
    box-shadow: none;
  }
  .linked > combobox:not(:hover) > .linked > button:checked:not(:hover) {
    box-shadow: none;
  }
  .linked > combobox > .linked {
    border-color: transparent;
    box-shadow: none;
  }
  .linked > button:not(#_):checked,
  .linked > button:not(#_):hover:checked {
    background-color: transparent;
    box-shadow:
      1px 2px 2px mix(@base02, black, 0.35) inset,
      2px 4px 4px mix(@base02, black, 0.35) inset,
      -1px -1px 0 mix(@base02, white, 0.1) inset;
    animation: none;
  }
  .linked:not(buttonbox) > button:not(.text-button):not(#_):hover:checked * {
    color: @base0D;
  }

  .linked > button:focus:not(:hover):not(:active):not(:checked) {
    box-shadow: none;
  }
  /*  Linked widgets that function as tabs  */
  .linked:not(buttonbox) > button.text-button:nth-child(1):hover:not(:active):not(:checked),
  buttonbox.linked > button.text-button:nth-child(1):hover:not(:active) {
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0B, white, 0.4);
  }
  .linked > button.text-button:nth-child(1),
  .linked > button.text-button:nth-child(1):not(:hover) *,
  .linked > button.text-button:nth-child(1):active *,
  .linked > button.text-button:nth-child(1):checked * {
    color: @base0B;
  }
  .linked:not(buttonbox) > button.text-button:nth-child(2):hover:not(:active):not(:checked),
  buttonbox.linked > button.text-button:nth-child(2):hover:not(:active) {
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base08, white, 0.4);
  }
  .linked > button.text-button:nth-child(2),
  .linked > button.text-button:nth-child(2):not(:hover) *,
  .linked > button.text-button:nth-child(2):active *,
  .linked > button.text-button:nth-child(2):checked * {
    color: @base08;
  }
  .linked:not(buttonbox) > button.text-button:nth-child(3):hover:not(:active):not(:checked),
  buttonbox.linked > button.text-button:nth-child(3):hover:not(:active) {
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0A, white, 0.4);
  }
  .linked > button.text-button:nth-child(3),
  .linked > button.text-button:nth-child(3):not(:hover) *,
  .linked > button.text-button:nth-child(3):active *,
  .linked > button.text-button:nth-child(3):checked * {
    color: @base0A;
  }
  .linked:not(buttonbox) > button.text-button:nth-child(4):hover:not(:active):not(:checked),
  buttonbox.linked > button.text-button:nth-child(4):hover:not(:active) {
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base09, white, 0.4);
  }
  .linked > button.text-button:nth-child(4),
  .linked > button.text-button:nth-child(4):not(:hover) *,
  .linked > button.text-button:nth-child(4):active *,
  .linked > button.text-button:nth-child(4):checked * {
    color: @base09;
  }

  combobox arrow {
    min-width: 16px;
    min-height: 16px;

    -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
  }

  stack.view {
    background-color: @base00;
  }
  stack > button:not(:hover):not(.toggle):not(.image-button) {
    background-color: @base02;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0 rgba(255, 255, 255, 0.2);
  }
  stack > button:active {
    background-color: @base02;
    box-shadow:
      1px 2px 2px mix(@base02, black, 0.35) inset,
      2px 4px 4px mix(@base02, black, 0.35) inset,
      -1px -1px 0 mix(@base02, white, 0.1) inset;
  }
  stack > scrolledwindow > viewport {
    border-radius: 10px;
    background-color: @base00;
    box-shadow:
      1px 2px 2px mix(@base00, black, 0.3) inset,
      2px 4px 4px mix(@base00, black, 0.3) inset,
      -1px -1px 0 mix(@base00, white, 0.1) inset;
  }
  /*Because list covers the viewport and its box-shadow*/
  stack > scrolledwindow > viewport > list {
    background-color: transparent;
  }

  #pathbarbox {
    padding: 0px 0px 0px 0px;
    background-color: @base00;
  }
  #pathbarbox button {
    border-radius: 50px;
    background-color: transparent;
  }
  #pathbarbox button.text-button.radio,
  #pathbarbox button.text-button.toggle {
    min-width: 16px;
    color: @base0D;
  }
  #pathbarbox button.text-button.toggle:hover {
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }
  #pathbarbox button:active,
  #pathbarbox button:checked,
  #pathbarbox button:hover:active,
  #pathbarbox button:hover:checked,
  #pathbarbox button.toggle:active,
  #pathbarbox button.toggle:checked,
  #pathbarbox button.toggle:hover:active,
  #pathbarbox button.toggle:hover:checked,
  #pathbarbox button.text-button.toggle:active,
  #pathbarbox button.text-button.toggle:checked,
  #pathbarbox button.text-button.toggle:hover:active,
  #pathbarbox button.text-button.toggle:hover:checked {
    box-shadow:
      1px 2px 2px mix(@base00, black, 0.3) inset,
      2px 4px 4px mix(@base00, black, 0.3) inset,
      -1px -1px 0 mix(@base00, white, 0.1) inset;
  }
  #pathbarbox button:hover:checked {
    color: @base00;
  }
  #pathbarbox button *,
  #pathbarbox button:hover:active *,
  #pathbarbox button:hover:checked *,
  #pathbarbox button.text-button.toggle *,
  #pathbarbox button.text-button.toggle:hover:active *,
  #pathbarbox button.text-button.toggle:hover:checked * {
    color: @base0D;
  }
  #pathbarbox button:hover *,
  #pathbarbox button.text-button.toggle:hover * {
    color: @base01;
  }
  #pathbarbox button * + * {
    padding: 0px 0px 0px 4px;
  }

  stack.view scrolledwindow {
    background-color: @base00;
  }

  frame.border-inset border {
    border-style: solid inset inset solid;
    border-width: 1px;
  }
  frame.border-outset border {
    border-style: outset solid solid outset;
    border-width: 1px;
  }
  frame.border-inset border,
  frame.border-outset border,
  frame.border-groove border,
  frame.border-ridge border {
    border-color: @base02;
    border-radius: 10px;
  }
  frame.border-groove border {
    border-style: groove;
    border-width: 2px;
  }
  frame.border-ridge border {
    border-style: ridge;
    border-width: 2px;
  }

  button.popup {
    border: none;
    border-radius: 50px;
  }

  modelbutton {
    min-height: 24px;
    margin: 1px 0px 0px 1px;
    padding: 4px 16px 5px 15px;
    border-radius: 50px;
  }
  modelbutton:hover,
  modelbutton:hover:focus {
    background-color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }
  modelbutton:active,
  modelbutton:hover:active,
  modelbutton:focus {
    margin: 0px;
    padding: 5px 16px 5px 16px;
    background-color: @base01;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  modelbutton:hover:not(:active) > check:not(:checked),
  modelbutton:hover:not(:active) > radio:not(:checked) {
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
  }

  popover {
    min-width: 120px;
    /*13px margin-top so arrow above popover doesn't overlay the bow-shadow*/
    margin: 13px 55px 65px 25px;
    padding: 0px;
    border-width: 0px;
    border-radius: 10px;

    background-color: @base01;
    box-shadow:
      4px 12px 10px rgba(0, 0, 0, 0.2),
      7px 18px 14px rgba(0, 0, 0, 0.21),
      10px 24px 18px rgba(0, 0, 0, 0.25),
      14px 30px 24px rgba(0, 0, 0, 0.3),
      -1px -1px 0px mix(@base01, white, 0.1);
  }
  popover > stack {
    min-width: 120px;
    padding: 6px; /*Equivalent to the padding in gtk4 theme*/
  }
  popover > stack > box {
    margin: -9px; /*Normalizes boundaries from edge of popover to modelbuttons to meet gtk4 specs*/
    padding: 0px;
  }
  popover stack > box modelbutton accelerator {
    margin-left: 12px;
  }
  popover modelbutton,
  popover modelbutton:hover,
  popover modelbutton:hover:focus,
  button:hover popover modelbutton {
    min-width: 40px;
    min-height: 30px;
    margin: 1px 0px 0px 1px;
    padding: 1px 17px 2px 16px;
  }
  popover modelbutton:active,
  popover modelbutton:focus,
  popover modelbutton:hover:active,
  button:hover popover modelbutton,
  button:hover:active popover modelbutton:active,
  button:hover:active popover modelbutton:focus {
    margin: 0px;
    padding: 2px 17px 2px 17px;
    background-color: @base01;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  modelbutton:hover > box > *,
  modelbutton:hover:focus > box > *,
  popover modelbutton:hover > box > *,
  popover modelbutton:hover:focus > box > *,
  button:hover popover modelbutton > box > * {
    color: @base01;
  }
  modelbutton:active > box > *,
  modelbutton:focus > box > *,
  modelbutton:active:focus > box > *,
  popover modelbutton > box > *,
  popover modelbutton:active > box > *,
  popover modelbutton:hover:active > box > *,
  button:hover:active popover modelbutton:active > *,
  button:hover popover modelbutton > *,
  button:hover:active popover modelbutton:focus > * {
    color: @base0D;
  }
  popover > arrow {
    border: none;
    background-color: transparent;
    box-shadow: none;
  }

  button.radio:checked {
    border-radius: 50px;
  }

  calendar {
    color: @base0D;
  }
  calendar *:selected {
    border-radius: 50px;
    color: @base01;
    background-color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }

  expander title > arrow {
    min-width: 16px;
    min-height: 16px;
    color: @base0D;

    -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
  }

  expander title > arrow:dir(rtl) {
    -gtk-icon-source: -gtk-icontheme("pan-end-symbolic-rtl");
  }

  expander title > arrow:checked {
    -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
  }

  row {
    border-width: 0px;
    border-radius: 50px;
    background-color: transparent;
  }
  row.activatable:hover {
    color: @base01;
    background-color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }
  row.activatable:active {
    background-color: transparent;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  row.activatable:hover *,
  row.activatable:hover > box > *,
  row.activatable:hover button:hover > *,
  row.activatable:hover button.image-button.sidebar-button > *,
  row.activatable:hover box > button > *,
  row.activatable:hover:selected button:hover > * {
    color: @base01;
  }
  row.activatable:hover slider,
  row.activatable:hover button,
  row.activatable:hover button:hover,
  row.activatable:hover entry *,
  row.activatable:hover spinbutton > text,
  row.activatable:hover button > *,
  row.activatable:active *,
  row.activatable:selected *,
  row.activatable:hover:active *,
  row.activatable:hover:active button > *,
  row.activatable:hover:selected *,
  row.activatable:hover:selected button > *,
  row.activatable:hover:selected button:active > *,
  row.activatable:hover:selected button:hover:active > * {
    color: @base0D;
  }
  row.activatable:hover:not(:active):not(:selected) block.empty,
  row.activatable:hover:not(:active):not(:selected) progressbar trough,
  row.activatable:hover:not(:active):not(:selected) levelbar trough,
  row.activatable:hover:not(:active):not(:selected) scale trough,
  row.activatable:hover:not(:active):not(:selected) switch,
  row.activatable:hover:not(:active):not(:selected) radio,
  row.activatable:hover:not(:active):not(:selected) check {
    box-shadow:
      1px 1px 1px mix(@base0D, black, 0.2) inset,
      2px 2px 2px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
  }
  row.activatable:hover:not(:active):not(:selected) switch {
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
  }
  columnview row:selected,
  row.activatable.sidebar-row:selected,
  row.activatable:selected:backdrop,
  row.activatable:selected,
  row.activatable:hover:selected {
    color: @base0D;
    background-color: inherit;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  row.activatable:hover:not(:selected):not(:active) {
    color: @base01;
    background-color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }
  row > revealer {
    padding: 0px 14px 0px 14px;
  }
  row box > image {
    padding-right: 8px;
  }
  row box > label {
    padding-right: 2px;
  }
  row box > button {
    margin: 3px 0px 3px 0px;
  }
  row.activatable:hover entry {
    background-color: @base0D;
  }
  row.activatable:hover entry:focus {
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
  }
  row.activatable:hover selection:focus {
    background-color: @base02;
  }
  /*Sidebar in filechooser on third page in gtk-widget-factory*/
  .sidebar list row {
    min-height: 36px;
  }
  .sidebar list > row > label {
    padding: 0px 6px 0px 6px;
  }
  list > row {
    min-height: 35px;
    margin: 2px 6px 1px 7px;
    padding: 0px 1px 1px 0px;
  }
  list > row.activatable:active,
  list > row.activatable:selected {
    margin: 1px 6px 1px 6px;
    padding: 1px;
  }
  /*the row is acting as a button here, so no need to have styling for the button itself*/
  list > row.activatable > button.text-button,
  list > row.activatable:hover > button.text-button {
    background-color: transparent;
    box-shadow: none;
  }

  header {
    padding: 1px;
    background-color: transparent;
  }
  header > button {
    margin: 6px 0px 5px 1px;
  }
  header > button:hover:active {
    margin: 5px 0px 5px 0px;
    box-shadow:
      1px 2px 2px mix(@base00, black, 0.3) inset,
      2px 4px 4px mix(@base00, black, 0.3) inset,
      -1px -1px 0px mix(@base00, white, 0.1) inset;
  }

  /*Inspector global settings dropdowns, which I think were directly pasted from gtk 4 css*/
  stack:hover > row.activatable:hover {
    box-shadow: none;
  }
  row:hover button.text-button:checked,
  row:hover button.text-button:checked:hover,
  row:hover dropdown > button.toggle:checked,
  row:hover dropdown > button.toggle:checked:hover {
    box-shadow:
      1px 2px 2px mix(@base0D, black, 0.2) inset,
      2px 4px 4px mix(@base0D, black, 0.2) inset,
      -1px -1px 0px mix(@base0D, white, 0.4) inset;
  }
  row:hover button.text-button:checked *,
  row:hover dropdown > button.toggle:checked * {
    color: @base01;
  }
  row:not(:hover) button.text-button:checked:not(:hover),
  row:not(:hover) dropdown > button.toggle:checked:not(:hover) {
    background-color: @base02;
    box-shadow:
      1px 2px 2px mix(@base02, black, 0.3) inset,
      2px 4px 4px mix(@base02, black, 0.3) inset,
      -1px -1px 0px mix(@base02, white, 0.1) inset;
  }

  /*I don't even remember what a banner is*/
  banner widget {
    opacity: 1;
    background-color: @base0D;
  }
  banner label.heading {
    color: @base01;
  }

  filechooser paned {
    background-color: @base00;
  }
  placessidebar {
    margin-right: 5px;
    background-color: @base01;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base01, white, 0.1);
  }
  placessidebar + separator {
    all: unset;
  }

  popover list.view > row.activatable:selected:not(:hover) {
    box-shadow: unset;
  }
  popover list.view > row.activatable:hover {
    color: @base01;
    background-color: @base0D;
    box-shadow:
      1px 2px 2px rgba(0, 0, 0, 0.17),
      2px 4px 4px rgba(0, 0, 0, 0.2),
      -1px -1px 0px mix(@base0D, white, 0.4);
  }
  popover list.view > row.activatable:focus,
  popover list.view > row.activatable:focus:selected {
    color: @base0D;
    background-color: @base01;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }

  .view > row.activatable:selected,
  .view > child.activatable:selected,
  list:not(.navigation-sidebar) > row.activatable:not(.sidebar-row):selected {
    box-shadow:
      1px 2px 2px mix(@base00, black, 0.3) inset,
      2px 4px 4px mix(@base00, black, 0.3) inset,
      -1px -1px 0px mix(@base00, white, 0.1) inset;
  }
  /*New stuff not included in gtk 4 css*/
  /*Equivalent to list.rich-list in gtk 4*/
  stacksidebar.sidebar scrolledwindow {
    background-color: @base01;
  }
  scrolledwindow > viewport > list > row {
    min-height: 32px;
    margin: 2px 6px 1px 7px;
    padding: 0px 12px 1px 11px;
    border-bottom: none;
  }
  scrolledwindow > viewport > list > row.activatable:active,
  scrolledwindow > viewport > list > row.activatable:selected {
    margin: 1px 6px 1px 6px;
    padding: 1px 12px 1px 12px;
  }
  scrolledwindow > viewport > list > row > box {
    border-spacing: 12px;
  }
  scrolledwindow > viewport > list > header {
    padding-right: 12px;
    padding-left: 12px;
  }
  scrolledwindow > viewport > list > separator.horizontal {
    all: unset;
  }
''
