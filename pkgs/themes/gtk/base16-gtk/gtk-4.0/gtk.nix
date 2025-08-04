{}: ''
  @import url("colors.css");

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
      normal 16px "jetbrainsmono nerd font",
      sans-serif;
    text-decoration: none;
    outline: none;
    transition:
      opacity,
      transform,
      -gtk-icon-transform;
  }

  .background {
    color: var(--window-fg-color);
  }

  arrow {
    border-color: transparent;
    /*for triangles above popups*/
    background-color: transparent;

    -gtk-icon-source: -gtk-icontheme("go-next-symbolic");
  }
  arrow.left {
    -gtk-icon-source: -gtk-icontheme("go-previous-symbolic");
  }

  arrow.right {
  }

  *:disabled {
    opacity: 0.6;
  }

  window {
    background-color: var(--base01);
  }

  headerbar {
    min-height: 46px;
    margin: 0px -1px 0px -1px;

    color: var(--base0D);

    background-color: var(--base01);
    box-shadow:
      0px 1px 1px rgba(0, 0, 0, 0.17),
      0px 2px 4px rgba(0, 0, 0, 0.2);
  }
  headerbar windowhandle > box {
    padding: 6px 7px 6px 7px;
  }
  headerbar > windowhandle > box > box.start,
  headerbar > windowhandle > box > box.end {
    border-spacing: 6px;
  }

  label,
  text,
  image {
    color: var(--base0D);
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

    color: var(--base0D);

    background-color: var(--base02);
    background-clip: padding-box;
    outline: none;
    box-shadow: var(--shadow-thin-base02);
    caret-color: var(--base0D);
  }
  entry:focus-within,
  entry > button:active,
  entry > button:checked {
    margin: 0px 0px 0px 0px;
    padding: 2px 9px 2px 9px;
    box-shadow: var(--shadow-inset-base02);
  }
  entry > image {
    color: var(--base0D);
    opacity: 50%;
  }
  entry > image:hover {
    opacity: 100%;
  }
  entry > image.left {
    margin-right: 7px;
  }
  entry > image.right {
    margin-left: 7px;
  }
  entry.search {
    border: none;
  }
  placeholder {
    opacity: 55%;
  }

  selection {
    color: var(--base01);
    background-color: var(--base0D);
  }

  sort-indicator,
  button:active sort-indicator {
    color: var(--base0D);
  }
  button:hover:not(:active) sort-indicator {
    color: var(--base01);
  }

  menubar {
    padding-bottom: 1px;
    box-shadow: inset 0 -1px color-mix(in srgb, currentcolor var(--border-opacity), transparent);
  }
  menubar > item {
    margin: 4px 3px 3px 4px;
    padding: 3px 8px 4px 7px;
    border-radius: 10px;
    color: var(--base0D);
  }
  menubar > item:hover {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  menubar > item:selected {
    margin: 3px 3px 3px 3px;
    padding: 4px 8px 4px 8px;
  }
  menubar > item:hover > label {
    color: var(--base01);
  }
  menubar > item:hover:selected:not(:focus) > label {
    color: var(--base0D);
  }
  item:selected:not(:focus) {
    color: var(--base0D);
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
  }

  widget.cutout button {
    background-color: var(--base02);
  }

  banner widget {
    opacity: 1;
    background-color: var(--base0D);
  }
  banner label.heading {
    color: var(--base01);
  }

  progressbar,
  levelbar {
    background-color: transparent;
  }
  progressbar text {
    color: var(--base0D);
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
    border-left: 1px solid var(--base01);
  }
  block.empty {
    border: none;
    background-color: transparent;
    box-shadow: var(--shadow-inset-base01-thin);
  }
  row:hover block.empty {
    box-shadow: var(--shadow-inset-base0D);
  }
  block.filled {
    background-color: var(--base0B);
  }

  progressbar progress,
  levelbar block.filled {
    background-color: var(--base0B);
  }
  progressbar progress {
    margin: 0px -1px 0px -1px;
    border-radius: 50px;
  }
  levelbar.discrete > trough > block:last-child {
    border-top-right-radius: 50px;
    border-bottom-right-radius: 50px;
  }
  progresscell progress {
    border-radius: 50px;
    background-color: var(--base0B);
    box-shadow: var(--shadow-thin-base0B);
  }
  label.in-progress {
    color: var(--base01);
  }

  scale slider,
  switch slider {
    min-width: 20px;
    min-height: 20px;
    border-radius: 100%;

    background: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }

  /*experimental*/
  scale {
    min-width: 10px;
    min-height: 10px;
    padding: 12px;
  }
  scale.marks-after {
    padding: 12px 12px 0px 12px;
  }
  scale highlight {
    border-radius: 99px;
    background-color: var(--base0B);
  }
  scale slider {
    margin: -8px;
    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  scale slider:hover {
    box-shadow: var(--shadow-thin-base0D);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  scale value {
    color: var(--base0D);
  }
  scale marks {
    margin: 6px 0px 0px 0px;
  }
  scale marks indicator {
    min-width: 1px;
    min-height: 6px;
    color: var(--base0B);
    background-color: var(--base0B);
  }
  scale.vertical trough {
    min-width: 4px;
  }
  progressbar trough,
  levelbar trough,
  progresscell trough,
  scale trough,
  progresscell {
    border-radius: 50px;
    background-color: transparent;
    box-shadow: var(--shadow-inset-base01-thin);
  }

  switch {
    padding: 3px;
    border-radius: 50px;

    color: var(--base0D);

    background: transparent;
    box-shadow: var(--shadow-inset-base01);

    animation: slide-left 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  switch:checked {
    color: var(--base0D);
    box-shadow: var(--shadow-inset-base0D);
    animation: slide-right 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  switch image {
    color: transparent;
  }

  checkbutton {
    padding: 4px;
  }
  checkbutton > label {
    margin-right: 4px;
    color: var(--base0D);
  }
  check,
  radio {
    min-width: 14px;
    min-height: 14px;
    margin: 0px 4px 0px 4px;
    padding: 3px;
    border-width: 0px;

    background-color: transparent;
    box-shadow: var(--shadow-inset-base01-thin);

    animation: ripple-in-base0D 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  check:checked,
  check:indeterminate,
  radio:checked,
  radio:indeterminate {
    color: var(--base01);
    box-shadow: var(--shadow-inset-base0D);
    animation: ripple-out-base0D 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  radio {
    border-radius: 100%;
  }
  radio:checked {
    -gtk-icon-source: -gtk-scaled(-gtk-recolor(url("assets/bullet-symbolic.symbolic.png")), -gtk-recolor(url("assets/bullet@2-symbolic.symbolic.png")));
  }
  radio:indeterminate {
    -gtk-icon-source: -gtk-scaled(-gtk-recolor(url("assets/dash-symbolic.svg")), -gtk-recolor(url("assets/dash-symbolic.symbolic.png")));
  }
  check {
    border-radius: 6px;
  }
  check:checked {
    -gtk-icon-source: -gtk-scaled(-gtk-recolor(url("assets/check-symbolic.svg")), -gtk-recolor(url("assets/check-symbolic.symbolic.png")));
  }
  check:indeterminate {
    -gtk-icon-source: -gtk-scaled(-gtk-recolor(url("assets/dash-symbolic.svg")), -gtk-recolor(url("assets/dash-symbolic.symbolic.png")));
  }

  spinbutton {
    min-height: 35px;
    border-radius: 50px;

    color: var(--base0D);

    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  spinbutton > text {
    min-width: 30px;
    padding: 0px 6px 0px 6px;
    border-radius: 50px;

    background-color: transparent;
    box-shadow: none;
  }
  spinbutton > text:focus-within {
    box-shadow: var(--shadow-inset-base02);
  }
  spinbutton button.up,
  spinbutton button.down {
    min-width: 24px;
    min-height: 24px;
    padding: 0px 5px 0px 5px;
    border-color: transparent;
  }
  spinbutton button.up:active,
  spinbutton button.up:hover:active,
  spinbutton button.down:active,
  spinbutton button.down:hover:active {
    margin: 0px;
    padding: 1px 5px 0px 6px;
    box-shadow: var(--shadow-inset-base02);
  }
  spinbutton.vertical button {
    min-height: 40px;
  }
  spinbutton.vertical > text {
    padding: 6px 0px 6px 0px;
  }
  spinbutton.vertical > entry {
    padding: 0px;
  }

  splitbutton {
    margin: 1px 0px 0px 1px;
    padding: 0px;
    border-radius: 50px;

    background-color: transparent;

    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  splitbutton:active,
  splitbutton:checked,
  splitbutton:hover:active,
  splitbutton:active:checked,
  splitbutton:hover:active:checked {
    margin: 0px;
    padding: 1px 0px 0px 1px;
    box-shadow: var(--shadow-inset-base01);
    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  splitbutton > separator {
    margin: 6px 1px 6px 0px;
    padding-right: 0px;
    background-color: var(--base0D);
    background-size: 0px 0px;
  }
  splitbutton:hover {
    box-shadow: var(--shadow-thin-base0D);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  splitbutton:hover:checked {
    margin: 0px;
    padding: 1px 0px 0px 1px;
    box-shadow: var(--shadow-inset-base0D);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  splitbutton > button:not(#_),
  splitbutton > button:not(#_):hover,
  splitbutton > menubutton > button:not(#_),
  splitbutton > menubutton > button:not(#_):hover,
  splitbutton > menubutton > button:not(#_):checked {
    background: none;
    box-shadow: none;
    animation: none;
  }

  splitbutton:active > button > image,
  splitbutton:active arrow,
  splitbutton:checked > button > image,
  splitbutton:checked arrow,
  splitbutton:hover:active > button > image,
  splitbutton:hover:active arrow,
  splitbutton:hover:active:checked > button > image,
  splitbutton:hover:active:checked arrow {
    color: var(--base0D);
  }
  splitbutton:hover > button > image,
  splitbutton:hover arrow,
  splitbutton:hover:checked > button > image,
  splitbutton:hover:checked arrow {
    color: var(--base01);
  }
  splitbutton:hover > separator,
  splitbutton:hover:checked > separator {
    background-color: var(--base01);
  }
  splitbutton:checked > separator,
  splitbutton:hover:active > separator {
    background-color: var(--base0D);
  }

  button {
    min-width: 16px;
    min-height: 30px;
    margin: 1px 0px 0px 1px;
    padding: 1px 9px 2px 8px;
    border-radius: 50px;

    color: var(--base0D);

    background-color: transparent;

    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  button.destructive-action {
    color: var(--base08);
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
  }
  button:checked,
  button:active,
  button:hover:active,
  button:active:checked,
  button:hover:active:checked {
    margin: 0px;
    padding: 2px 9px 2px 9px;
    box-shadow: var(--shadow-inset-base01);
    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  button:hover {
    color: var(--base0D); /*the ripple keyframe inherits this for use in the background-image, which is why background-color isn't needed*/
    box-shadow: var(--shadow-thin-base0D);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  button:hover:checked {
    margin: 0px;
    padding: 2px 9px 2px 9px;
    box-shadow: var(--shadow-inset-base0D);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  stack > button:not(.image-button),
  button.text-button,
  button.font,
  button.file {
    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  stack > button:not(.image-button):active,
  stack > button:not(.image-button):hover:active,
  button.file:active,
  button.text-button:active,
  button.text-button:checked,
  button.text-button:hover:active,
  button.text-button:active:checked,
  button.text-button:hover:active:checked,
  button.font:active,
  button.font:hover:active,
  button.font:hover:active:checked {
    box-shadow: var(--shadow-inset-base02);
  }
  stack > button:hover,
  button.text-button:hover,
  button.font:hover,
  button.file:hover {
    box-shadow: var(--shadow-thin-base0D);
  }
  button.destructive-action:hover {
    color: var(--base08);
    box-shadow: var(--shadow-thin-base08);
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
    color: var(--base0D);
  }
  button:hover > *,
  button:hover > box > *,
  button:hover > box > * > * {
    color: var(--base01);
  }
  button.destructive-action > *,
  button.destructive-action:active > *,
  button.destructive-action:hover:active > *,
  button.destructive-action > box > *,
  button.destructive-action:active > box > *,
  button.destructive-action:hover:active > box > *,
  button.destructive-action:hover:active > box > * > * {
    color: var(--base08);
  }
  button.destructive-action:hover > *,
  button.destructive-action:hover > box > *,
  button.destructive-action:hover > box > * > * {
    color: var(--base01);
  }
  button.text-button.toggle {
    min-width: 100px;
  }

  button separator,
  button:hover:active separator {
    opacity: 0.8;
    background-image: image(var(--base0D));
  }
  button:hover separator {
    background-image: image(var(--base01));
  }

  toolbar {
    background-color: var(--base01);
  }
  toolbutton > button {
    margin-right: 5px;
    outline-offset: 4px;
  }
  box.toolbar.horizontal {
    padding: 6px;
  }
  box.toolbar.horizontal > button {
    outline-offset: 4px;
  }

  separator,
  box.toolbar.horizontal > separator.horizontal {
    min-width: 1px;
    min-height: 1px;
    margin: 6px -1px 6px 7px;
    padding-right: 8px;

    background-color: transparent;
    background-image: image(var(--base02));
    background-repeat: repeat-y;
    background-position: left;
    background-size: 1px 1px;
  }
  separator.horizontal {
    margin: 6px 16px 6px 16px;
    background-color: var(--base02);
  }
  separator.vertical {
    margin-top: 6px;
    margin-bottom: 6px;
  }

  tabs {
    padding: 0px 4px 0px 4px;
  }
  tab {
    min-width: 100px;
    min-height: 24px;
    margin: 6px 0px 5px 1px;
    padding: 4px 17px 5px 16px;
    border-radius: 50px;

    color: var(--base0D);

    background-color: inherit;

    animation: ripple-in 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  tab:checked {
    margin: 5px 0px 5px 0px;
    padding: 5px 17px 5px 17px;
    box-shadow: var(--shadow-inset-base01);
  }
  tab:hover:not(:checked) {
    color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
    animation: ripple-out 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  }
  tab:hover:not(:checked) label,
  tab:hover:not(:checked) image {
    color: var(--base01);
  }

  tooltip {
    margin: 1px 30px 45px 15px;
    padding: 6px 10px;
    border-width: 0px;
    border-radius: 50px;

    color: var(--base0D);

    background-color: var(--base02);
    box-shadow: var(--shadow-wide-base02);
  }
  tooltip label {
    padding: 0px 6px 0px 6px;
  }

  spinner {
    color: var(--base0D);

    animation-name: spin;
    animation-duration: 1s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;

    -gtk-icon-source: -gtk-icontheme("process-working-symbolic");
  }

  treeview.view {
    margin-bottom: 2px;
    padding: 5px 8px 5px 8px;
    background-color: transparent;
  }
  treeview.view .cell {
    color: var(--base0D);
  }
  treeview.view radio:checked,
  treeview.view check:checked,
  treeview .cell:hover:not(:focus) {
    color: var(--base01);
    background-color: var(--base0D);
  }
  treeview.view check.cell:hover:not(:focus),
  treeview.view radio.cell:hover:not(:focus) {
    box-shadow: var(--shadow-inset-base0D);
  }
  treeview.view .cell:focus:not(check):not(radio) {
    /*Need :not(check):not(radio) so check and radio byttons don't receive this box-shadow too*/
    box-shadow: var(--shadow-inset-base01);
  }
  scrolledwindow treeview.view .cell:focus:not(check):not(radio),
  scrolledwindow treeview.view button:hover:active {
    box-shadow: var(--shadow-inset-base00);
  }

  colorswatch {
    border-radius: 50px;
  }

  box.start {
    margin-right: 6px;
  }
  box.end {
    margin-left: 6px;
  }
  box.dialog-action-area {
    border-spacing: 5px;
    margin: 6px;
  }

  grid.dim-label {
    opacity: 55%;
  }

  scrollbar {
    margin: 0px;
    padding: 0px;
    color: var(--base0D);
  }
  scrollbar > range {
    margin: 0px;
    padding: 0px;
  }
  scrollbar > range > trough {
    border-radius: 50px;
  }
  scrollbar > range > trough > slider {
    min-width: 8px;
    min-height: 8px;
    margin: -8px;
    border: 8px solid transparent;
    border-radius: 50px;

    background-color: color-mix(in srgb, currentcolor 50%, transparent);
    background-clip: padding-box;

    transition: all 200ms linear;
  }
  scrollbar.bottom.horizontal > range > trough {
    margin: 4px 9px 4px 9px;
  }
  scrollbar.right.vertical > range > trough {
    margin: 9px 4px 9px 4px;
  }
  scrollbar > range > trough > slider:disabled {
    opacity: 0;
  }
  scrollbar.overlay-indicator.horizontal:not(.hovering) > range > trough > slider {
    min-width: 40px;
    min-height: 3px;
  }
  scrollbar.overlay-indicator.vertical:not(.hovering) > range > trough > slider {
    min-width: 3px;
    min-height: 40px;
  }
  scrollbar.overlay-indicator.hovering > range > trough {
    background-color: color-mix(in srgb, currentcolor 10%, transparent);
  }
  scrollbar.overlay-indicator.horizontal.hovering > range > trough > slider {
    min-height: 8px;
  }
  scrollbar.overlay-indicator.vertical.hovering > range > trough > slider {
    min-height: 40px;
  }

  .sidebar-pane {
    box-shadow: var(--shadow-thin-base01);
  }

  spinbutton button.image-button:checked,
  button.image-button.radio:checked,
  spinbutton button.image-button:active,
  button.image-button.radio:active,
  spinbutton button.image-button:hover:active,
  button.image-button.radio:hover:active,
  spinbutton button.image-button:hover:active:checked,
  button.image-button.radio:hover:active:checked {
    background-color: transparent;
    box-shadow: var(--shadow-inset-base02);
  }

  video {
    margin: 8px;
    border-radius: 50px;
    background-color: transparent;
  }
  video revealer {
    background-color: var(--base00);
  }
  video controls {
    padding: 2px;
    border-radius: 0px;
    background-color: transparent;
  }
  video controls button.image-button:hover:active {
    box-shadow: var(--shadow-inset-base00);
  }

  searchbar revealer > box {
    padding: 6px;
  }

  statusbar {
    padding: 6px 10px 6px 10px;
  }

  calendar > grid {
    padding-bottom: 2px;
    padding-left: 2px;
  }
  calendar > grid > label {
    margin-top: 3px;
    margin-right: 3px;
    border-radius: 50px;
  }
  calendar > grid > label:hover,
  calendar > grid > label.day-number.other-month:hover {
    color: var(--base01);
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  calendar > grid > label:selected {
    color: var(--base0D);
    background-color: var(--base01);
    box-shadow: var(--shadow-inset-base01);
  }
  calendar > grid > label.today {
    color: var(--base01);
    background-color: var(--base0B);
    box-shadow: var(--shadow-thin-base0B);
  }
  calendar > grid > label.today:selected {
    color: var(--base01);
    background-color: var(--base0B);
    box-shadow: var(--shadow-thin-base0B);
  }
  calendar > grid > label.day-number {
    padding: 3px;
  }
  calendar > grid > label.day-number.other-month {
    color: color-mix(in srgb, currentcolor 30%, transparent);
  }
  calendar.view:disabled,
  window.print:not(.ssd-frame) calendar.dialog-action-box:disabled {
    color: var(--view-fg-color);
  }

  expander {
    min-width: 16px;
    min-height: 16px;
    color: var(--base0D);

    -gtk-icon-source: -gtk-icontheme("pan-end-symbolic");
  }
  expander:dir(rtl) {
    -gtk-icon-source: -gtk-icontheme("pan-end-symbolic-rtl");
  }
  expander:disabled {
    filter: opacity(var(--disabled-opacity));
  }
  expander:checked {
    -gtk-icon-source: -gtk-icontheme("pan-down-symbolic");
  }

  iconview {
    padding: 5px;
    border-radius: 10px;
    color: var(--base0D);
    background-color: transparent;
  }
  iconview *:hover {
    padding: 5px;
    border-radius: 10px;

    color: var(--base01);

    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }

  actionbar > revealer > box > box {
    padding: 6px;
  }

  frame {
    margin: 5px;
    border-radius: 10px;
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }
  frame button.image-button:hover:checked {
    box-shadow: var(--shadow-inset-base0D);
  }
  frame frame > label {
    margin: 4px;
  }
  scrolledwindow:not(.sidebar),
  textview {
    border-radius: 10px;
  }
  scrolledwindow.frame,
  frame {
    border-radius: 10px;
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }
  frame > scrolledwindow {
    margin: 0px;
    background-color: transparent;
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
    box-shadow: var(--shadow-inset-base00-thin);
  }
  frame button.image-button:active,
  frame button.image-button:checked,
  frame button.image-button:hover:active,
  frame button.image-button:hover:active:checked,
  frame tab:checked,
  frame tab:active,
  scrolledwindow.frame switch:not(:checked),
  scrolledwindow.frame row.activatable:active {
    background-color: transparent;
    box-shadow: var(--shadow-inset-base00);
  }
  scrolledwindow.frame textview,
  frame textview {
    box-shadow: none;
  }
  scrolledwindow > columnview.view {
    background-color: var(--base00);
  }

  textview {
    margin: 5px;
    border-radius: 10px;

    color: var(--base0D);

    /*background-color and box-shadow only applies when textview isn't inside a frame, otherwise it's overridden via more speicificity above*/
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }

  /*unsure about these, prob in the inspector as well*/
  stack > widget > scrolledwindow > viewport,
  stack > box > scrolledwindow > viewport {
    margin-top: 6px;
    border-radius: 10px;
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }
  box.view {
    background-color: var(--base00);
  }
  box.view > scrolledwindow:first-child {
    border-radius: 0px;
    background-color: var(--base01);
  }
  box.view > scrolledwindow:first-child > listview.view {
    border-radius: 0px;
    background-color: var(--base01);
  }
  box.view > scrolledwindow:first-child > listview.view > row:selected {
    box-shadow: var(--shadow-inset-base01);
  }
  box.view.horizontal separator.horizontal {
    all: unset;
  }
  box.view > stack > paned > scrolledwindow > listview.view {
    border-radius: 10px;
    box-shadow: var(--shadow-inset-base00);
  }
  box.view > scrolledwindow:first-child + separator + stack {
    border-radius: 0px;
    background-color: var(--base01);
  }
  box.view > scrolledwindow:first-child + separator + stack > paned > separator.wide,
  box.horizontal > stack > box.vertical > paned.horizontal > separator.wide {
    all: unset;
    padding-right: 5px;
  }
  box.horizontal > stack > paned.horizontal > paned.vertical > separator.wide {
    all: unset;
    padding-bottom: 5px;
  }
  box.view > scrolledwindow:first-child + separator + stack > paned > picture,
  box.view > scrolledwindow:first-child + separator + stack > paned > paned > picture {
    border-radius: 10px;
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }

  box.toolbar + separator.horizontal {
    min-height: 0px;
    margin: 0px;
  }

  box.vertical > separator.horizontal {
    min-height: 0px;
    margin: 0px;
  }

  stacksidebar.sidebar {
    border-right-width: 0px;
  }

  modelbutton {
    border-radius: 50px;
  }
  modelbutton:hover:not(:active) > box > check:not(:checked),
  modelbutton:hover:not(:active) > box > radio:not(:checked) {
    box-shadow: var(--shadow-inset-base0D);
  }
  modelbutton:active,
  modelbutton:hover:active {
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
  }
  /*ex: the back and forward button popover in nautilus*/
  popover modelbutton,
  popover modelbutton:hover,
  popover modelbutton:hover:focus {
    min-width: 40px;
    min-height: 30px;
    margin: 1px 0px 0px 1px;
    padding: 1px 9px 2px 8px;
  }
  popover modelbutton:focus,
  popover modelbutton:selected:focus:not(:hover) {
    margin: 0px;
    padding: 2px 9px 2px 9px;
    background-color: var(--base01);
    box-shadow: var(--shadow-inset-base01);
  }
  modelbutton:active > *,
  modelbutton:hover:active > *,
  modelbutton:selected:active > *,
  popover modelbutton > *,
  popover modelbutton:focus > *,
  popover modelbutton:hover:focus > *,
  popover modelbutton:hover:active:selected:focus > *,
  button:hover popover modelbutton > *,
  button:hover:active popover modelbutton:active > *,
  button:hover:active popover modelbutton:focus > * {
    color: var(--base0D);
  }
  modelbutton:hover > *,
  modelbutton:selected > *,
  popover modelbutton:hover > *,
  popover modelbutton:hover:selected > *,
  popover modelbutton:hover:selected:focus > * {
    color: var(--base01);
  }
  modelbutton:hover,
  modelbutton:selected,
  popover modelbutton:hover:not(:active) {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  popover stack > box {
    /*inside the nautlius pathbar search with the two buttons*/
    padding: 0px;
  }
  popover stack {
    padding: 6px;
  }
  popover contents {
    min-width: 120px;
    border-width: 0px;
    border-radius: 10px;

    background-color: var(--base01);
    box-shadow: var(--shadow-wide-base01);
  }
  popover > arrow {
    min-width: 16px;
    min-height: 16px;
  }
  popover stack > box modelbutton accelerator {
    margin-left: 12px;
  }
  popover.emoji-picker entry {
    margin: 6px 6px 0px 6px;
  }
  popover.emoji-picker flowboxchild {
    margin: 6px 3px 0px 3px;
  }
  stack > scrolledwindow > viewport {
    border-radius: 10px;
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }
  /*because list covers the viewport and its box-shadow*/
  stack > scrolledwindow > viewport > list {
    background-color: transparent;
  }

  /*------------------row and list stuff----------------------*/
  row {
    border-width: 0px;
    border-radius: 50px;
    background-color: transparent;
  }
  child.activatable {
    border-radius: 10px;
  }
  row.activatable:hover,
  child.activatable:hover {
    color: var(--base01);
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  row.activatable:active,
  row.activatable.sidebar-row:selected,
  row.activatable:selected:backdrop,
  row.activatable:selected,
  child.activatable:selected,
  columnview row:selected {
    color: var(--base0D);
    background-color: transparent;
    box-shadow: var(--shadow-inset-base01);
  }
  row.activatable:hover *,
  row.activatable:hover > box > *,
  row.activatable:hover button:hover > *,
  row.activatable:hover button.image-button.sidebar-button > *,
  row.activatable:hover box > button > *,
  row.activatable:hover:selected button:hover > *,
  child.activatable:hover label,
  child.activatable:hover image,
  header.activatable > button:active label {
    color: var(--base01);
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
  row.activatable:hover:selected button:hover:active > *,
  child.activatable:selected label,
  child.activatable:selected image {
    color: var(--base0D);
  }
  row.activatable:hover:not(:active):not(:selected) block.empty,
  row.activatable:hover:not(:active):not(:selected) progressbar trough,
  row.activatable:hover:not(:active):not(:selected) levelbar trough,
  row.activatable:hover:not(:active):not(:selected) scale trough,
  row.activatable:hover:not(:active):not(:selected) radio,
  row.activatable:hover:not(:active):not(:selected) check {
    box-shadow: var(--shadow-inset-base0D-thin);
  }
  row.activatable:hover:not(:active):not(:selected) switch,
  row.activatable:hover:not(:selected):not(:active) {
    color: var(--base01);
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  /*mostly stuff from the global settings section of the inspector window iirc*/
  row button.toggle:hover row.activatable:hover {
    background-color: transparent;
    box-shadow: none;
  }
  row:hover button:hover:active,
  row:hover button.text:hover:active {
    background-color: transparent;
    box-shadow: var(--shadow-inset-base01);
  }

  /*TODO; Check if there's redundancy*/
  /* row.activatable:hover entry { */
  /*   background-color: var(--base0D); */
  /* } */
  /* row.activatable:hover entry:focus-within { */
  /*   box-shadow: var(--shadow-inset-base0D); */
  /* } */
  /* row.activatable:hover selection:focus { */
  /*   background-color: var(--base02); */
  /* } */

  /*inspector global settings dropdowns.*/
  stack:hover > row.activatable:hover {
    box-shadow: none;
  }
  row:hover dropdown > button.toggle:checked {
    box-shadow: var(--shadow-inset-base0D);
  }
  row:hover dropdown > button.toggle:checked:hover {
    box-shadow: var(--shadow-thin-base0D);
  }
  row:hover dropdown > button.toggle:checked * {
    color: var(--base01);
  }
  row:not(:hover) dropdown > button.toggle:checked:not(:hover) {
    box-shadow: var(--shadow-inset-base02);
  }
  row:hover button.text-button:checked,
  row:hover button.text-button:checked:hover {
    box-shadow: var(--shadow-inset-base0D);
  }
  row:hover button.text-button:checked * {
    color: var(--base01);
  }
  row:not(:hover) button.text-button:checked:not(:hover) {
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }
  /*End check for redundancy*/

  /*next few blocks might be nautilus related*/
  row:hover > box > dropdown > button.toggle:hover:checked * {
    color: var(--base01);
  }
  row.activatable button.text-button:active,
  row:hover > box > dropdown > button.toggle:active,
  row:hover > box > dropdown > button.toggle:checked {
    box-shadow: var(--shadow-inset-base02);
  }
  row.activatable button.text-button:active *,
  row:hover > box > dropdown > button.toggle:active *,
  row:hover > box > dropdown > button.toggle:checked * {
    color: var(--base0D);
  }
  row > box > dropdown > button.toggle > box {
    margin-top: -3px;
    margin-bottom: -3px;
  }
  /*end*/

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
  /*todo: find an example that is a .boxed-list*/
  .boxed-list {
    border-radius: 30px;
    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  .boxed-list > row.activatable:active {
    box-shadow: var(--shadow-inset-base02);
  }
  .boxed-list > row:hover button:active {
    box-shadow: var(--shadow-inset-base02);
  }
  .boxed-list > row:hover button:active * {
    color: var(--base0D);
  }
  .boxed-list > row.activatable:hover levelbar .empty {
    background-color: var(--base0D);
  }
  list.rich-list > row {
    min-height: 32px;
    margin: 2px 6px 1px 7px;
    padding: 7px 12px 8px 11px;
  }
  list.rich-list.separators > row {
    border-bottom: none;
  }
  list.rich-list > row.activatable:active,
  list.rich-list > row.activatable:selected {
    margin: 1px 6px 1px 6px;
    padding: 8px 12px;
  }
  list.rich-list > row > box {
    border-spacing: 12px;
  }
  list.rich-list > header {
    padding-right: 12px;
    padding-left: 12px;
  }
  .list {
    background-color: var(--base00);
  }

  scrolledwindow > listview.view {
    padding: 3px;
  }
  listview.view {
    border-spacing: 4px 4px;
  }
  listview > row {
    margin: 2px 3px 1px 4px;
    padding: 1px 2px 2px 1px;
  }
  listview > row > :first-child {
    margin-left: 3px;
  }
  listview > row > :last-child {
    margin-right: 3px;
  }
  listview > row.activatable:active,
  listview > row.activatable:selected {
    margin: 1px 3px 1px 3px;
    padding: 2px;
    box-shadow: var(--shadow-inset-base00);
  }
  /*end*/
  header.activatable button:active,
  header.activatable > button:active {
    box-shadow: var(--shadow-inset-base00);
  }
  header.activatable button:active > box > label {
    color: var(--base0D);
  }
  /*ex: the css nodes table in the objects section in gtk inspector*/
  columnview.data-table.list.view {
    padding: 2px;
    border-radius: 10px;
    box-shadow: var(--shadow-inset-base00);
  }

  /*ex: the sidebar in the objects section of gtk inpsector*/
  list.navigation-sidebar {
    background-color: var(--base01);
  }
  /*end*/
  .sidebar list row {
    min-height: 36px;
  }
  .sidebar list > row > label {
    padding: 0px 6px 0px 6px;
  }
  .view > row.activatable:not(.sidebar-row):selected,
  .view > child.activatable:selected,
  list:not(.navigation-sidebar) > row.activatable:not(.sidebar-row):selected {
    box-shadow: var(--shadow-inset-base00);
  }
  .star,
  listview .star image,
  listview row.activatable:selected .star:hover:active image,
  listview row.activatable:hover:selected .star image {
    color: var(--base0A);
  }
  listview row.activatable:hover .star image,
  listview row.activatable:selected .star:hover image {
    color: var(--base01);
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
  /*------------------end of row and list stuff----------------------*/

  entry > menubutton > button.image-button:active,
  entry > menubutton > button.image-button:checked,
  entry > menubutton > button.image-button:hover:active,
  entry > menubutton > button.image-button:active:checked,
  entry > menubutton > button.image-button:hover:active:checked {
    box-shadow: var(--shadow-inset-base02);
  }
  entry > menubutton > button.image-button:hover:checked {
    box-shadow: var(--shadow-inset-base0D);
  }

  box.pathbar {
    min-height: 35px;
    padding: 0px;
    border-radius: 50px;

    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  box.pathbar button {
    min-width: 16px;
    /* min-height: 24px; */
    min-height: 30px;
    margin: 1px 1px 0px 1px;
    padding: 2px 9px 9px 2px;
  }
  box.pathbar button:not(.current-dir):hover {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  box.pathbar button:hover:active {
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }

  widget.sidebar-pane > box > box + separator {
    all: unset;
  }

  popover box.vertical > separator.horizontal {
    min-height: 1px;
    margin: 6px 16px 6px 16px;
  }

  stackswitcher,
  viewswitcher,
  box.linked {
    min-height: 24px;
  }
  stackswitcher.linked {
    margin: 7px 0px 6px 1px;
  }
  viewswitcher,
  .linked {
    border-radius: 50px;
    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  .linked > *:not(entry):not(:hover):not(:active):not(:checked),
  .linked > entry:not(:focus-within) {
    box-shadow: none;
  }
  .linked.horizontal > *:hover {
    border-left: 0px dotted var(--base00);
    border-radius: 50px;
  }
  .linked.vertical > *:hover {
    border-top: 0px dotted var(--base00);
    border-radius: 50px;
  }
  .linked.horizontal > *:active,
  .linked.horizontal > *:checked,
  .linked.horizontal > *:hover:active,
  .linked.horizontal > *:hover:checked,
  .linked.horizontal > entry:focus-within {
    border-left-width: 0px;
    border-radius: 50px;
  }
  .linked.vertical > *:active,
  .linked.vertical > *:checked,
  .linked.vertical > *:hover:active,
  .linked.vertical > *:hover:checked,
  .linked.vertical > entry:focus-within {
    border-top-width: 0px;
    border-radius: 50px;
  }
  .linked > button:active,
  .linked > button:checked,
  .linked > button:hover:active,
  .linked > button:hover:checked,
  .linked > button:hover:active:checked,
  .linked > button.image-button:active,
  .linked > button.image-button:checked,
  .linked > button.image-button:hover:active,
  .linked > button.image-button:active:checked,
  .linked > button.image-button:hover:active:checked {
    box-shadow: var(--shadow-inset-base02);
  }
  .linked > button:hover:checked,
  .linked > button.image-button:hover:checked {
    padding: 2px 9px 2px 9px;
    box-shadow: var(--shadow-inset-base0D);
  }
  .linked.horizontal > * + button:hover {
    margin: 1px 0px 0px 2px;
  }
  .linked.vertical > * + button:hover {
    margin: 2px 0px 0px 1px;
  }
  .linked.horizontal > * + button:active,
  .linked.horizontal > * + button:checked,
  .linked.horizontal > * + button:hover:active,
  .linked.horizontal > * + button:hover:checked,
  .linked.horizontal > * + button:hover:active:checked {
    margin: 0px 0px 0px 1px;
  }
  .linked.vertical > * + button:active,
  .linked.vertical > * + button:checked,
  .linked.vertical > * + button:hover:active,
  .linked.vertical > * + button:hover:checked,
  .linked.vertical > * + button:hover:active:checked {
    margin: 1px 0px 0px 0px;
  }
  .linked.horizontal > * + * {
    border-left: 1px dotted var(--base00);
    border-top-left-radius: 0px;
    border-bottom-left-radius: 0px;
  }
  .linked.horizontal > *:first-child {
    border-top-left-radius: 50px;
    border-bottom-left-radius: 50px;
  }
  .linked.horizontal > *:last-child {
    border-top-right-radius: 50px;
    border-bottom-right-radius: 50px;
  }
  .linked.vertical > * + * {
    border-top: 1px dotted var(--base00);
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
  }
  .linked.vertical > *:first-child {
    border-top-left-radius: 50px;
    border-top-right-radius: 50px;
  }
  .linked.vertical > *:last-child {
    border-bottom-right-radius: 50px;
    border-bottom-left-radius: 50px;
  }
  .linked.horizontal > scrolledwindow:hover + *,
  .linked.horizontal > entry:focus-within + *,
  .linked.horizontal > button:hover + *,
  .linked.horizontal > button:active + *,
  .linked.horizontal > button:checked + *,
  .linked.horizontal > button:hover:active + *,
  .linked.horizontal > button:hover:checked + *,
  .linked.horizontal > *:not(entry):hover + * {
    border-left-color: transparent;
    border-radius: 50px;
  }
  .linked.vertical > scrolledwindow:hover + *,
  .linked.vertical > entry:focus-within + *,
  .linked.vertical > button:hover + *,
  .linked.vertical > button:active + *,
  .linked.vertical > button:checked + *,
  .linked.vertical > button:hover:active + *,
  .linked.vertical > button:hover:checked + *,
  .linked.vertical > *:not(entry):hover + * {
    border-top-color: transparent;
    border-radius: 50px;
  }
  .linked > combobox,
  .linked > combobox:active {
    padding: 0px;
    box-shadow: none;
  }
  .linked > * + combobox:hover,
  .linked > * + combobox:hover:checked {
    padding-left: 1px;
  }
  .linked > combobox:not(:hover) > .linked > button:checked:not(:hover) {
    box-shadow: none;
  }
  .linked > combobox > .linked {
    border-color: transparent;
    box-shadow: none;
  }
  .linked > button:not(.combo):checked,
  .linked > button:not(.combo):hover:checked {
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
    animation: none;
  }
  .linked > button:not(.combo):hover:checked * {
    color: var(--base0D);
  }

  .linked > button.text-button:nth-child(1):hover:not(:active):not(:checked),
  viewswitcher > button.flat:nth-child(1):hover:not(:active):not(:checked),
  box.dialog-action-area > button.text-button.default:hover:not(:active) {
    box-shadow: var(--shadow-thin-base0B);
  }
  .linked > button.text-button:nth-child(1),
  .linked > button.text-button:nth-child(1):not(:hover) *,
  .linked > button.text-button:nth-child(1):active *,
  .linked > button.text-button:nth-child(1):checked *,
  viewswitcher > button.flat:nth-child(1),
  viewswitcher > button.flat:nth-child(1):not(:hover) *,
  viewswitcher > button.flat:nth-child(1):active *,
  viewswitcher > button.flat:nth-child(1):checked *,
  box.dialog-action-area > button.text-button.default,
  box.dialog-action-area > button.text-button.default:hover,
  box.dialog-action-area > button.text-button.default:active,
  box.dialog-action-area > button.text-button.default:hover:active *,
  box.dialog-action-area > button.text-button.default:not(:hover) * {
    color: var(--base0B);
  }
  .linked > button.text-button:nth-child(2):hover:not(:active):not(:checked),
  viewswitcher > button.flat:nth-child(2):hover:not(:active):not(:checked),
  box.dialog-action-area > button.text-button:first-child:hover:not(:active) {
    box-shadow: var(--shadow-thin-base08);
  }
  .linked > button.text-button:nth-child(2),
  .linked > button.text-button:nth-child(2):not(:hover) *,
  .linked > button.text-button:nth-child(2):active *,
  .linked > button.text-button:nth-child(2):checked *,
  viewswitcher > button.flat:nth-child(2),
  viewswitcher > button.flat:nth-child(2):not(:hover) *,
  viewswitcher > button.flat:nth-child(2):active *,
  viewswitcher > button.flat:nth-child(2):checked *,
  box.dialog-action-area > button.text-button:first-child,
  box.dialog-action-area > button.text-button:first-child:hover,
  box.dialog-action-area > button.text-button:first-child:active,
  box.dialog-action-area > button.text-button:first-child:hover:active *,
  box.dialog-action-area > button.text-button:first-child:not(:hover) * {
    color: var(--base08);
  }
  .linked > button.text-button:nth-child(3):hover:not(:active):not(:checked),
  viewswitcher > button.flat:nth-child(3):hover:not(:active):not(:checked) {
    box-shadow: var(--shadow-thin-base0A);
  }
  .linked > button.text-button:nth-child(3),
  .linked > button.text-button:nth-child(3):not(:hover) *,
  .linked > button.text-button:nth-child(3):active *,
  .linked > button.text-button:nth-child(3):checked *,
  viewswitcher > button.flat:nth-child(3),
  viewswitcher > button.flat:nth-child(3):not(:hover) *,
  viewswitcher > button.flat:nth-child(3):active *,
  viewswitcher > button.flat:nth-child(3):checked * {
    color: var(--base0A);
  }
  .linked > button.text-button:nth-child(4):hover:not(:active):not(:checked),
  viewswitcher > button.flat:nth-child(4):hover:not(:active):not(:checked) {
    box-shadow: var(--shadow-thin-base09);
  }
  .linked > button.text-button:nth-child(4),
  .linked > button.text-button:nth-child(4):not(:hover) *,
  .linked > button.text-button:nth-child(4):active *,
  .linked > button.text-button:nth-child(4):checked *,
  viewswitcher > button.flat:nth-child(4),
  viewswitcher > button.flat:nth-child(4):not(:hover) *,
  viewswitcher > button.flat:nth-child(4):active *,
  viewswitcher > button.flat:nth-child(4):checked * {
    color: var(--base09);
  }

  /*there be dragons - do not touch unless you have to*/
  .nautilus-window headerbar > windowhandle > box > widget > box > stack > box > entry {
    padding: 0px 9px 0px 8px;
  }
  .nautilus-window headerbar > windowhandle > box > widget > box > stack > box > entry:focus-within {
    padding: 1px 9px 0px 9px;
  }
  .nautilus-window headerbar > windowhandle > box > widget > box > stack > box.linked:not(#NautilusPathBar) {
    margin: 0px 0px 0px 1px;
    padding: 0px 0px 0px 0px;
  }
  .nautilus-window headerbar > windowhandle > box > widget > box > stack > box.vertical {
    margin: -1px 0px 0px 0px;
    padding: 0px 0px 0px 0px;
  }
  #NautilusPathBar {
    min-height: 24px;
    margin: 0px 0px 0px 1px;
  }
  /*end*/

  .nautilus-window widget.content-pane toolbarview {
    background-color: var(--base00);
  }
  .nautilus-window headerbar {
    box-shadow: none;
  }
  .nautilus-window widget.content-pane headerbar {
    background-color: var(--base00);
  }
  .nautilus-window widget.content-pane .collapse-spacing.vertical {
    padding: 0px;
  }
  .nautilus-window widget.content-pane headerbar windowhandle > box {
    padding: 0px 7px 0px 7px;
  }

  #NautilusQueryEditor > * {
    margin-top: 0px;
    margin-bottom: 0px;
  }
  #NautilusQueryEditorTag,
  #NautilusQueryEditorTag button:active {
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02-thin);
  }
''
