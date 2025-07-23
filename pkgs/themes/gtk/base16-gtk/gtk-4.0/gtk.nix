{}: ''
  @import url("colors.css");

  * {
    font:
      normal 16px "JetBrainsMono Nerd Font",
      sans-serif;
    text-decoration: none;
    outline: none;
    transition:
      0.1s linear background-color,
      border-color,
      opacity,
      transform,
      -gtk-icon-transform;
  }

  arrow {
    border-color: transparent;
    /*For triangles above popups*/
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

  label,
  text,
  image {
    color: var(--base0D);
  }

  label.title {
    padding: 0px 12px 0px 12px;
  }

  entry {
    min-height: 24px;
    margin: 1px 0px 0px 1px;
    padding: 4px 9px 5px 8px;
    border-radius: 50px;

    color: var(--base0D);

    background-color: var(--base02);
    background-clip: padding-box;
    outline: none;
    box-shadow: var(--shadow-thin-base02);
    caret-color: var(--base0D);
  }
  entry:focus-within,
  entry button:active,
  entry button:checked {
    margin: 0px 0px 0px 0px;
    padding: 5px 9px 5px 9px;
    box-shadow: var(--shadow-inset-base02);
  }
  entry.search image {
    color: @base0D;
  }
  entry.search > image:first-child {
    margin-right: 7px;
  }
  entry text + image {
    margin-left: 7px;
  }
  entry.search {
    border: none;
  }
  placeholder {
    opacity: 55%;
  }

  /*Ex: The back and forward button popover in nautilus*/
  popover modelbutton {
    min-width: 40px;
    min-height: 32px;
    padding: 0px 12px 0px 12px;
  }
  popover modelbutton * {
    color: var(--base0D);
  }
  popover modelbutton:focus {
    background-color: var(--base01);
    box-shadow: var(--shadow-inset-base01);
  }
  popover modelbutton:disabled {
    opacity: 0.5;
  }
  popover modelbutton:selected:focus:not(:hover) {
    background-color: var(--base01);
    box-shadow: var(--shadow-inset-base01);
  }
  popover modelbutton:hover *,
  popover modelbutton:hover:not(:focus) *,
  button:hover popover modelbutton * {
    color: var(--base01);
  }
  popover modelbutton:focus *,
  popover modelbutton:selected:focus:not(:hover) *,
  button:hover:active popover modelbutton:active *,
  button:hover popover modelbutton *,
  button:hover:active popover modelbutton:focus * {
    color: var(--base0D);
  }
  popover modelbutton:selected:focus:not(:hover) radio,
  button:hover:active popover modelbutton:active radio,
  button:hover popover modelbutton radio,
  button:hover:active popover modelbutton:focus radio,
  popover modelbutton:focus check,
  popover modelbutton:selected:focus:not(:hover) check,
  button:hover:active popover modelbutton:active check,
  button:hover popover modelbutton check,
  button:hover:active popover modelbutton:focus check {
    color: var(--base01);
  }
  popover modelbutton:hover:not(:active) {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  popover modelbutton:not(:selected):not(:hover) * {
    color: var(--base0D);
  }
  popover modelbutton:not(:selected):not(:hover) radio,
  popover modelbutton:not(:selected):not(:hover) check {
    color: var(--base01);
  }
  popover modelbutton:hover:selected:focus:not(:active) * {
    color: var(--base01);
  }

  selection {
    color: var(--base01);
    background-color: var(--base0D);
  }

  scrolledwindow treeview {
    background-color: var(--base01);
  }
  scrolledwindow treeview *:hover {
    border-radius: 50px;
    color: var(--base01);
    background-color: var(--base0D);
  }
  scrolledwindow treeview *:focus {
    color: var(--base0D);
    background-color: var(--base01);
    box-shadow: var(--shadow-inset-base01);
  }

  sort-indicator,
  button:active sort-indicator {
    color: var(--base0D);
  }
  button:hover:not(:active) sort-indicator {
    color: var(--base01);
  }

  child.activatable {
    border-radius: 10px;
  }
  child.activatable:hover {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  child.activatable:hover label,
  child.activatable:hover image {
    color: var(--base01);
  }
  child.activatable:selected {
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
  }
  child.activatable:selected label,
  child.activatable:selected image {
    color: var(--base0D);
  }
  row {
    border: none;
    border-radius: 50px;
    background-color: transparent;
  }
  row.activatable:hover {
    color: var(--base01);
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  row.activatable:active {
    background-color: transparent;
    box-shadow: var(--shadow-inset-base01);
  }
  row.activatable:hover label,
  row.activatable:hover image,
  row.activatable:hover sort-indicator,
  row.activatable:hover arrow,
  row.activatable:hover expander {
    color: var(--base01);
  }
  row.activatable:active label,
  row.activatable:active image,
  row.activatable:active sort-indicator,
  row.activatable:active arrow,
  row.activatable:active expander,
  row.activatable:selected label,
  row.activatable:selected image,
  row.activatable:selected sort-indicator,
  row.activatable:selected arrow,
  row.activatable:selected expander {
    color: var(--base0D);
  }
  columnview row:selected,
  row.activatable.sidebar-row:selected,
  row.activatable:selected:backdrop,
  row.activatable:selected {
    color: var(--base0D);
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
  }
  row.activatable:hover:not(:selected):not(:active) {
    color: var(--base01);
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  .list {
    background-color: var(--base00);
  }

  popover listview.view > row.activatable:selected:not(:hover) {
    box-shadow: unset;
  }
  popover listview.view > row.activatable:hover {
    color: var(--base01);
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  popover listview.view > row.activatable:focus,
  popover listview.view > row.activatable:focus:selected {
    color: var(--base0D);
    background-color: var(--base01);
    box-shadow: var(--shadow-inset-base01);
  }

  menubar {
    padding-bottom: 1px;
    box-shadow: inset 0 -1px
      color-mix(in srgb, currentColor var(--border-opacity), transparent);
  }
  menubar > item {
    margin: 3px;
    padding: 4px 8px 4px 8px;
    border-radius: 10px;
    color: var(--base0D);
  }
  menubar > item:hover {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  menubar > item:hover > label {
    color: var(--base01);
  }
  menubar > item:hover:selected:not(:focus) > label {
    color: var(--base0D);
  }
  menubar > item > popover modelbutton:hover {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  menubar > item > popover modelbutton:hover > * {
    color: var(--base01);
  }
  menubar > item > popover modelbutton:not(:hover) > * {
    color: var(--base0D);
  }
  item:selected:not(:focus) {
    color: var(--base0D);
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
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

  stack > button:not(:hover):not(.toggle):not(.image-button) {
    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  stack > button:active {
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
  }
  stack > scrolledwindow > viewport {
    border-radius: 10px;
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }
  /*Because list covers the viewport and its box-shadow*/
  stack > scrolledwindow > viewport > list {
    background-color: transparent;
  }
  stack modelbutton:focus label {
    color: var(--base01);
  }

  widget.cutout button {
    background-color: var(--base02);
  }
  button.text-button {
    color: var(--base0D);
    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  button.text-button:active {
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }
  button:hover,
  button:hover:checked,
  button:hover:focus:not(:active) {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  button:checked,
  button:active {
    color: var(--base0D);
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
  }
  button:active *,
  button:checked *,
  button:hover:active * {
    color: var(--base0D);
  }
  button:hover *,
  button:checked:active * {
    color: var(--base01);
  }
  header.activatable > button:active label {
    color: var(--base01);
  }
  header.activatable > button:active {
    box-shadow: var(--shadow-inset-base00);
  }
  row:hover button:hover:active,
  row:hover button.text:hover:active {
    background-color: transparent;
    box-shadow: var(--shadow-inset-base01);
  }
  row:hover button:hover:active *,
  row:hover button.text:hover:active * {
    color: var(--base01);
  }
  row.activatable button.text-button:active {
    box-shadow: var(--shadow-inset-base02);
  }
  row.activatable button.text-button:active * {
    color: var(--base0D);
  }

  modelbutton {
    border-radius: 50px;
  }
  modelbutton:hover,
  modelbutton:selected {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  modelbutton:active,
  modelbutton:hover:active {
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
  }

  modelbutton:active *,
  modelbutton:selected:active * {
    color: var(--base0D);
  }
  modelbutton:hover *,
  modelbutton:selected * {
    color: var(--base01);
  }

  splitbutton {
    border-radius: 50px;
  }
  splitbutton > separator {
    min-width: 1px;
    min-height: 1px;
    margin: 6px 1px 6px 0px;
    padding-right: 0px;

    background-image: none;
    background-repeat: repeat;
    background-position: left top;
    background-size: 0px 0px;
  }
  splitbutton:hover,
  splitbutton:hover:checked {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  splitbutton:active,
  splitbutton:checked,
  splitbutton:hover:active,
  splitbutton:active:checked {
    background-color: inherit;
    box-shadow: var(--shadow-inset-base01);
  }
  splitbutton > button:not(#_):hover,
  splitbutton > menubutton > button:not(#_):hover,
  splitbutton > menubutton > button:not(#_):checked {
    background: none;
    box-shadow: none;
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

  radio {
    border: 1px solid var(--base02);
    background-color: var(--base01);
    box-shadow: var(--shadow-thin-base01);
  }
  radio:checked {
    border-color: transparent;
    color: var(--base01);
    background-color: var(--base0D);
  }
  modelbutton:hover > box > radio:checked {
    color: var(--base01);
    background-color: var(--base0D);
  }

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

  switch {
    border-width: 1px;
    background: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }
  switch:checked {
    background: var(--base0D);
    box-shadow: var(--shadow-inset-base0D);
  }
  switch slider {
    border-radius: 100%;
    background: var(--base00);
    box-shadow: var(--shadow-thin-base00);
  }

  block.empty {
    border: none;
    background-color: transparent;
    box-shadow: var(--shadow-inset-base02);
  }
  row:hover block.empty {
    box-shadow: var(--shadow-inset-base0D);
  }
  block.filled {
    background-color: var(--base0B);
  }

  scale trough {
    background-color: transparent;
    box-shadow: var(--shadow-thin-base02);
  }
  row:hover scale trough {
    box-shadow: var(--shadow-thin-base0B);
  }
  scale highlight {
    background-color: var(--base0B);
  }
  scale slider {
    border-radius: 100%;
    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  scale slider:hover {
    background-color: var(--base0D);
  }

  scrolledwindow:not(.sidebar),
  textview {
    border-radius: 10px;
  }

  check:checked {
    color: var(--base01);
  }

  progresscell {
    border-radius: 50px;
    background-color: transparent;
    box-shadow: var(--shadow-inset-base00);
  }
  progresscell progress {
    border-radius: 50px;
    background-color: var(--base0B);
    box-shadow: var(--shadow-thin-base0B);
  }
  progresscell trough {
    background-color: transparent;
  }
  row:hover progresscell {
    box-shadow: var(--shadow-inset-base00);
  }
  label.in-progress {
    color: var(--base01);
  }

  row.activatable:hover entry {
    background-color: var(--base0D);
  }
  row.activatable:hover entry:focus-within {
    box-shadow: var(--shadow-inset-base0D);
  }
  row.activatable:hover selection:focus {
    background-color: var(--base02);
  }

  /*Inspector global settings dropdowns*/
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

  banner widget {
    opacity: 1;
    background-color: var(--base0D);
  }
  banner label.heading {
    color: var(--base01);
  }

  /*Experimental*/
  scale {
    min-width: 10px;
    min-height: 10px;
    padding: 12px 12px 12px 12px;
  }
  scale.marks-after {
    padding: 12px 12px 0px 12px;
  }
  scale trough {
    border-radius: 99px;
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02-thin);
  }
  scale highlight {
    border-radius: 99px;
    background-color: var(--base0B);
  }
  scale slider {
    min-width: 20px;
    min-height: 20px;
    margin: -8px;
    border-radius: 100%;

    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  scale slider:hover {
    background-color: var(--base0D);
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

  scrolledwindow,
  textview {
    border-radius: 10px;
  }

  progressbar,
  levelbar {
    background-color: transparent;
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
  progressbar text {
    color: var(--base0D);
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
    border-left: 1px solid var(--base02);
  }

  progressbar progress,
  levelbar block.filled {
    background-color: var(--base0B);
  }
  progressbar progress {
    margin: 0px -1px 0px -1px;
    border-radius: 50px;
  }
  progressbar trough,
  levelbar trough {
    border-radius: 50px;
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }
  levelbar.discrete > trough > block:last-child {
    border-top-right-radius: 50px;
    border-bottom-right-radius: 50px;
  }

  label.in-progress {
    color: var(--base01);
  }

  switch {
    padding: 3px;
    border-width: 1px;
    border-radius: 50px;

    color: transparent;

    background: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }
  switch:checked {
    background: var(--base0D);
    box-shadow: var(--shadow-inset-base0D);
  }
  switch slider {
    min-width: 20px;
    min-height: 20px;
    border-width: 1px;
    border-radius: 100%;

    background: var(--base00);
    box-shadow: var(--shadow-thin-base00);
  }

  radio {
    min-width: 14px;
    min-height: 14px;
    margin: 0px 4px 0px 4px;
    padding: 3px;
    border: 1px solid var(--base02);
    border-radius: 100%;

    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  radio:checked {
    border-color: var(--base0D);

    color: var(--base01);

    background-color: var(--base0D);
    box-shadow: var(--shadow-inset-base0D);

    -gtk-icon-source: -gtk-scaled(
      -gtk-recolor(url("assets/bullet-symbolic.symbolic.png")),
      -gtk-recolor(url("assets/bullet@2-symbolic.symbolic.png"))
    );
  }
  radio:indeterminate {
    border-color: var(--base0D);

    color: var(--base01);

    background-color: var(--base0D);
    box-shadow: var(--shadow-inset-base0D);

    -gtk-icon-source: -gtk-scaled(
      -gtk-recolor(url("assets/dash-symbolic.svg")),
      -gtk-recolor(url("assets/dash-symbolic.symbolic.png"))
    );
  }
  checkbutton {
    padding: 4px;
  }
  checkbutton > label {
    margin-right: 4px;
    color: var(--base0D);
  }

  check {
    min-width: 14px;
    min-height: 14px;
    margin: 0px 4px 0px 4px;
    padding: 3px;
    border: 1px solid var(--base02);
    border-radius: 6px;

    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }

  check:checked {
    border-color: var(--base0D);

    color: var(--base01);

    background-color: var(--base0D);
    box-shadow: var(--shadow-inset-base0D);

    -gtk-icon-source: -gtk-scaled(
      -gtk-recolor(url("assets/check-symbolic.svg")),
      -gtk-recolor(url("assets/check-symbolic.symbolic.png"))
    );
  }
  check:indeterminate {
    border-color: var(--base0D);

    color: var(--base01);

    background-color: var(--base0D);
    box-shadow: var(--shadow-inset-base0D);

    -gtk-icon-source: -gtk-scaled(
      -gtk-recolor(url("assets/dash-symbolic.svg")),
      -gtk-recolor(url("assets/dash-symbolic.symbolic.png"))
    );
  }

  spinbutton {
    min-height: 35px;
    border-radius: 50px;

    color: var(--base0D);

    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  spinbutton:focus {
    box-shadow: none;
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
    margin: 0px;
    padding: 1px 5px 0px 6px;
    border-color: transparent;
  }
  spinbutton button:hover {
    margin: 1px 0px 0px 1px;
    padding: 0px 5px 0px 5px;
    color: var(--base01);
    box-shadow: var(--shadow-thin-base0D);
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

  button {
    min-width: 24px; /*.linked modification, .image-button*/
    min-height: 24px;
    padding: 4px 5px 5px 4px; /*.linked modification, .image-button*/
    border-radius: 50px;

    color: var(--base0D);

    background-color: transparent;
  }
  button:checked,
  button:active,
  button:hover:active,
  button.image-button:checked,
  button.image-button:active,
  button.image-button:hover:active,
  button.image-button:hover:active:checked {
    margin: 0px 0px 0px 0px;
    padding: 5px 5px 5px 5px;
    background-color: transparent;
    box-shadow: var(--shadow-inset-base01);
  }
  button.image-button:hover:checked {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  button:hover {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  button:hover:active {
    background-color: transparent;
  }
  button.text-button,
  button.font,
  button.file {
    min-width: 16px;
    min-height: 24px;
    margin: 1px 0px 0px 1px;
    padding: 4px 17px 5px 16px;

    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  button.text-button:active,
  button.font:active,
  button.file:active,
  button.text-button:checked,
  button.text-button:hover:active,
  button.text-button:active:checked,
  button.text-button:hover:active:checked,
  button.font:hover:active:checked,
  button.font:hover:active {
    margin: 0px 0px 0px 0px;
    padding: 5px 17px 5px 17px;
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }
  button.text-button:hover,
  button.font:hover,
  button.file:hover,
  button.text-button:hover:checked,
  button.font:hover:checked,
  button.file:hover:checked {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  button:active label {
    color: var(--base0D);
  }
  button.image-button {
    margin: 1px 0px 0px 1px;
    padding: 4px 5px 5px 4px;
    background-color: transparent;
    box-shadow: none;
  }
  button.image-button:hover {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  button.image-button:active {
    background-color: transparent;
  }
  button:active *,
  button:checked *,
  button:hover:active *,
  button:checked:active * {
    color: var(--base0D);
  }
  button:hover *,
  button:hover:not(:active) *,
  button:hover:checked:not(:active) * {
    color: var(--base01);
  }
  button.combo {
    padding: 4px 10px 5px 9px;
  }

  toolbar {
    background-color: var(--base01);
  }
  toolbutton > button {
    min-width: 24px;
    min-height: 24px;
    margin-right: 5px;
    padding: 4px 5px 5px 4px;

    outline-offset: 4px;
  }
  toolbar > button:active {
    box-shadow: var(--shadow-inset-base01);
  }

  button separator,
  button:hover:active separator {
    margin: 0px 0px 0px 10px;
    opacity: 0.8;
    background-image: image(var(--base0D));
  }
  button:hover separator {
    background-image: image(var(--base01));
  }

  separator {
    min-width: 1px;
    min-height: 1px;
    margin: 6px -7px 6px 0px;
    padding-right: 8px;

    background-image: image(var(--base02));
    background-repeat: repeat-y;
    background-position: left;
    background-size: 1px 1px;
  }
  separator.horizontal {
    margin: 6px 16px 6px 16px;
    background-color: var(--base02);
  }

  button.text-button.toggle {
    min-width: 100px;
  }

  tabs {
    margin: -1px -1px -2px -1px;
    padding: 0px 4px 0px 4px;
  }
  tab {
    min-width: 100px;
    min-height: 24px;
    margin: 5px 0px 5px 0px;
    padding: 5px 17px 5px 17px;
    border-radius: 50px;

    color: var(--base0D);

    background-color: inherit;
  }
  tab:hover label {
    color: var(--base01);
  }
  tab:checked {
    box-shadow: var(--shadow-inset-base01);
  }
  tab:hover:not(:checked) {
    margin: 6px 0px 5px 1px;
    padding: 4px 17px 5px 16px;

    color: var(--base01);

    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  tab:hover:checked > label {
    color: var(--base0D);
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

  frame {
    margin: 5px;
    border-radius: 10px;
    background-color: @base00;
    box-shadow: var(--shadow-inset-base00);
  }
  frame > label {
    margin: 4px;
  }
  frame > scrolledwindow {
    margin: 4px;
    background-color: transparent;
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
    padding-top: 5px;
    padding-right: 8px;
    padding-bottom: 5px;
    padding-left: 8px;
  }
  treeview.view * {
    color: @base0D;
  }
  treeview.view *:hover {
    color: @base01;
  }
  treeview.view *:hover:not(check) {
    background-color: @base0D;
  }
  treeview.view *:focus {
    color: @base0D;
  }
  treeview.view *:focus:not(check),
  treeview.view button:active {
    color: @base0D;
    background-color: transparent;
    box-shadow:
      1px 2px 2px mix(@base01, black, 0.3) inset,
      2px 4px 4px mix(@base01, black, 0.3) inset,
      -1px -1px 0px mix(@base01, white, 0.1) inset;
  }
  treeview.view button:hover:focus * {
    color: @base0D;
  }
  treeview.view radio:checked,
  treeview.view check:checked {
    color: @base01;
  }
  treeview.view button:hover:not(:active):not(:focus) * {
    color: @base01;
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
    margin: 6px;
  }

  frame > scrolledwindow {
    background-color: var(--base00);
  }

  row.activatable {
    margin: 2px 2px 2px 2px;
    padding: 2px;
  }

  scrolledwindow.frame row.activatable:active {
    background-color: transparent;
    box-shadow: var(--shadow-inset-base00);
  }

  grid.dim-label {
    opacity: 55%;
  }
  scrolledwindow.frame {
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }
  scrolledwindow > columnview.view {
    background-color: var(--base00);
  }
  /*Necessary for Nautilus file view*/
  .nautilus-window scrolledwindow listview.view {
    padding: 0px;
  }
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

    background-color: color-mix(in srgb, currentColor 50%, transparent);
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
  scrollbar.overlay-indicator.horizontal:not(.hovering)
    > range
    > trough
    > slider {
    min-width: 40px;
    min-height: 3px;
  }
  scrollbar.overlay-indicator.vertical:not(.hovering) > range > trough > slider {
    min-width: 3px;
    min-height: 40px;
  }
  scrollbar.overlay-indicator.hovering > range > trough {
    background-color: color-mix(in srgb, currentColor 10%, transparent);
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

  /*TODO: NAUTILUS HEADER BOX_SHADOW*/

  columnview.view > header.activatable button:active {
    box-shadow: var(--shadow-inset-base00);
  }
  columnview.view > header.activatable button:active > box > label {
    color: var(--base0D);
  }

  row.activatable > revealer > box > button.image-button:active,
  row.activatable > revealer > box > button.image-button:hover:active {
    box-shadow: var(--shadow-inset-base01);
  }
  row button.image-button:hover:active > image {
    color: var(--base0D);
  }

  button.image-button.up:checked,
  button.image-button.down:checked,
  button.image-button.radio:checked,
  button.image-button.up:active,
  button.image-button.down:active,
  button.image-button.radio:active,
  button.image-button.up:hover:active,
  button.image-button.down:hover:active,
  button.image-button.radio:hover:active,
  button.image-button.up:hover:active:checked,
  button.image-button.down:hover:active:checked,
  button.image-button.radio:hover:active:checked {
    background-color: transparent;
    box-shadow: var(--shadow-inset-base02);
  }
  button.image-button.up:hover:checked,
  button.image-button.down:hover:checked,
  button.image-button.radio:hover:checked {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base01);
  }

  popover stack > box {
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

  row:not(.activatable) {
    background-color: transparent;
    box-shadow: none;
  }
  row:not(.activatable) scale > trough {
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }

  box.toolbar.horizontal {
    padding: 6px;
  }
  box.toolbar.horizontal > button {
    outline-offset: 4px;
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
  calendar > grid > label:hover {
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
    color: color-mix(in srgb, currentColor 30%, transparent);
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
    filter: Opacity(var(--disabled-opacity));
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
  scrolledwindow.frame,
  frame {
    border-radius: 10px;
    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }
  scrolledwindow.frame textview,
  frame textview {
    box-shadow: none;
  }

  textview {
    margin: 5px;
    border-radius: 10px;

    color: var(--base0D);

    background-color: var(--base00);
    box-shadow: var(--shadow-inset-base00);
  }

  columnview > listview > row.activatable:active {
    box-shadow: var(--shadow-inset-base00);
  }

  columnview.data-table.list.view {
    padding: 2px;
    border-radius: 10px;
    box-shadow: var(--shadow-inset-base00);
  }

  list.navigation-sidebar {
    background-color: var(--base01);
  }
  list.navigation-sidebar > row:first-child {
    margin-top: 2px;
  }
  .sidebar list row {
    min-height: 36px;
  }
  .sidebar list > row > label {
    padding: 0px 6px 0px 6px;
  }
  stack > widget > scrolledwindow > viewport {
    margin-top: 10px;
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
    background-color: @base01;
  }
  box.view
    > scrolledwindow:first-child
    + separator
    + stack
    > paned
    > separator.wide,
  box.horizontal > stack > box.vertical > paned.horizontal > separator.wide {
    all: unset;
    padding-right: 5px;
  }
  box.horizontal > stack > paned.horizontal > paned.vertical > separator.wide {
    all: unset;
    padding-bottom: 5px;
  }
  box.view > scrolledwindow:first-child + separator + stack > paned > picture,
  box.view
    > scrolledwindow:first-child
    + separator
    + stack
    > paned
    > paned
    > picture {
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

  /* header > button { */
  /*   margin: 1px 1px 2px 1px; */
  /* } */
  /* header > button:active { */
  /*   margin: 0px 1px 2px 0px; */
  /* } */

  list.rich-list > row {
    min-height: 32px;
    margin: 2px;
    padding: 8px 12px;
  }
  list.rich-list.separators > row {
    border-bottom: none;
  }
  list.rich-list > row > box {
    border-spacing: 12px;
  }
  list.rich-list > header {
    padding-right: 12px;
    padding-left: 12px;
  }

  row > box > entry:hover {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  row > box > entry:hover > text {
    color: var(--base01);
  }
  row > box > entry:hover:focus-within {
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }

  row > box > spinbutton > text:hover {
    color: var(--base01);
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  row > box > spinbutton > text:hover:focus {
    color: var(--base0D);
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }

  row button.toggle:hover row.activatable:hover {
    background-color: transparent;
    box-shadow: none;
  }
  row:hover > box > dropdown > button.toggle:hover:checked * {
    color: var(--base01);
  }
  row:hover > box > dropdown > button.toggle:active,
  row:hover > box > dropdown > button.toggle:checked {
    box-shadow: var(--shadow-inset-base02);
  }
  row:hover > box > dropdown > button.toggle:active *,
  row:hover > box > dropdown > button.toggle:checked * {
    color: var(--base0D);
  }
  row > box > dropdown > button.toggle > box {
    margin-top: -3px;
    margin-bottom: -3px;
  }
  popover listview.view row {
    min-width: 40px;
    min-height: 32px;
    margin: 0px;
    padding: 0px 12px;
  }
  popover listview.view row.activatable:hover,
  popover listview.view row.activatable:hover:selected {
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  popover listview.view row.activatable:active:selected {
    background-color: var(--base01);
    box-shadow: var(--shadow-inset-base01);
  }
  popover listview.view row.activatable:hover:active:selected * {
    color: var(--base0D);
  }
  popover listview.view row.activatable:hover *,
  popover listview.view row.activatable:hover:selected * {
    color: var(--base01);
  }
  popover scrolledwindow > listview.view {
    padding: 6px;
  }

  entry > menubutton > button.image-button:active,
  entry > menubutton > button.image-button:checked,
  entry > menubutton > button.image-button:hover:active,
  entry > menubutton > button.image-button:active:checked,
  entry > menubutton > button.image-button:hover:active:checked {
    box-shadow: var(--shadow-inset-base02);
  }

  box.pathbar {
    min-height: 35px;
    padding: 0px;
    border-radius: 50px;

    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  /*bar is 35px high, button is 24px min-height + 10px pad + 1px marg = 35px high*/
  box.pathbar button {
    min-height: 24px;
    margin: 1px 1px 0px 1px;
    padding: 5px;
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

  viewswitcher > button:active,
  viewswitcher > button:checked,
  viewswitcher > button:hover:active,
  viewswitcher > button:hover:checked {
    border-radius: 50px;
  }

  popover box.vertical > separator.horizontal {
    min-height: 1px;
    margin: 6px 16px 6px 16px;
  }

  #NautilusPathBar {
    min-height: 35px;
  }
  #NautilusPathBar + .linked {
    box-shadow: none;
  }
  #NautilusPathBar + .linked > button {
    box-shadow: var(--shadow-thin-base02);
  }
  #NautilusPathBar scrolledwindow {
    border-radius: 50px;
  }
  #NautilusPathBar > scrolledwindow:hover {
    background-color: var(--base0D);
  }
  #NautilusPathBar > scrolledwindow:hover,
  #NautilusPathBar > scrolledwindow:hover * {
    color: var(--base01);
  }
  #NautilusPathBar > scrolledwindow:active * {
    color: var(--base0D);
  }
  #NautilusPathBar > scrolledwindow:active {
    color: var(--base0D);
    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }
  #NautilusPathBar > menubutton > button {
    min-height: 24px;
    margin: 1px 1px 0px 1px;
    padding: 5px;
  }
  #NautilusPathBar > menubutton > button:active,
  #NautilusPathBar > menubutton > button:checked:not(:hover) {
    box-shadow: var(--shadow-inset-base02);
  }

  #NautilusPathButton {
    min-height: 24px;
    margin: 1px 1px 0px 1px;
    padding: 5px;
  }
  #NautilusPathButton:active {
    box-shadow: var(--shadow-inset-base02);
  }

  #NautilusPathBar > scrolledwindow {
    border-radius: 50px 0px 0px 50px;
  }
  #NautilusPathBar > menubutton > button {
    border-radius: 0px 50px 50px 0px;
  }
  #NautilusPathBar > menubutton:hover {
    border-left-color: transparent;
  }
  #NautilusPathBar > scrolledwindow > viewport {
    border-radius: 50px 0px 0px 50px;
  }
  #NautilusPathBar:active > scrolledwindow {
    box-shadow: none;
  }

  #NautilusQueryEditor > * {
    margin-top: 0px;
    margin-bottom: 0px;
  }

  stackswitcher,
  viewswitcher,
  box.linked {
    min-height: 34px;
  }
  stackswitcher.linked {
    margin: 7px 0px 6px 0px;
  }
  /*Haven't tested when there are borders*/
  .linked button.text-button:checked,
  .linked button.text-button:hover:active,
  .linked button.text-button:hover:checked,
  .linked button.text-button:last-child:checked  /*Needed, otherwise margin-left is -1px*/ {
    min-height: 24px;
    margin: 0px;
    padding: 5px 17px 5px 17px;
  }
  .linked button.text-button:hover {
    margin: 1px 0px 0px 1px;
    padding: 4px 17px 5px 16px;
  }
  .linked button.combo:checked,
  .linked button.combo:hover:active,
  .linked button.combo:hover:checked,
  .linked button.combo:last-child:checked {
    min-height: 30px;
    margin: 0px;
    padding: 2px 10px 2px 10px;
  }
  .linked button.combo:hover {
    margin: 1px 0px 0px 1px;
    padding: 1px 10px 2px 9px;
  }
  .linked button.image-button,
  .linked button.image-button:hover {
    min-height: 24px;
    margin: 1px 0px 0px 1px;
    padding: 4px 5px 5px 4px;
  }
  .linked button.image-button:active,
  .linked button.image-button:checked,
  .linked button.image-button:hover:active,
  .linked button.image-button:hover:checked {
    margin: 0px 0px 0px 0px;
    padding: 5px 5px 5px 5px;
    box-shadow: var(--shadow-inset-base02);
  }
  .linked button.image-button:active:checked {
    box-shadow: var(--shadow-inset-base02);
  }

  stackswitcher.linked > button.image-button:hover {
    border-radius: 50px;
  }
  stackswitcher.linked > button.image-button:hover:checked * {
    color: var(--base0D);
  }

  box.linked > entry:focus-within + button,
  box.linked > entry + button:hover,
  box.linked > entry + button:active,
  box.linked > entry + button:checked {
    border-left-width: 0px;
  }
  box.linked > entry + button:active,
  box.linked > entry + button:checked {
    box-shadow: var(--shadow-inset-base02);
  }
  box.linked > entry + button:hover:checked image,
  box.linked > entry + button:hover:checked label,
  box.linked > entry + button:hover:checked arrow {
    color: var(--base0D);
  }
  box.linked > button:first-child:last-child {
    border-radius: 50px;
  }

  combobox > box.linked > button {
    min-width: 16px;
    min-height: 30px;
    margin: 1px 0px 0px 1px;
    padding: 1px 10px 2px 9px;
  }
  combobox > box.linked > *.combo:active,
  combobox > box.linked > *.combo:checked,
  combobox > box.linked > *.combo:focus-within {
    margin: 0px 0px 0px 0px;
    padding: 2px 10px 2px 10px;
    border-radius: 0px;
  }
  combobox > box.linked > *.combo:active:last-child,
  combobox > box.linked > *.combo:checked:last-child,
  combobox > box.linked > *.combo:focus-within:last-child {
    border-top-right-radius: 50px;
    border-bottom-right-radius: 50px;
  }
  combobox > box.linked > *.combo:active:first-child,
  combobox > box.linked > *.combo:checked:first-child,
  combobox > box.linked > *.combo:focus-within:first-child {
    border-top-left-radius: 50px;
    border-bottom-left-radius: 50px;
  }
  box.linked > button.image-button.model:hover {
    border-color: var(--base0D);
    border-radius: 50px;
  }

  viewswitcher,
  .linked {
    border-radius: 50px;
    background-color: var(--base02);
    box-shadow: var(--shadow-thin-base02);
  }
  .linked > button.text-button,
  viewswitcher > button.flat {
    background-color: transparent;
    box-shadow: none;
  }
  .linked > button.text-button:hover,
  viewswitcher > button.flat:hover {
    border-color: transparent;
    border-radius: 50px;
    background-color: var(--base0D);
    box-shadow: var(--shadow-thin-base0D);
  }
  .linked > button.text-button:hover + button.text-button,
  .linked > button.text-button:active + button.text-button,
  .linked > button.text-button:checked + button.text-button,
  .linked > button.text-button:hover:active + button.text-button,
  .linked > button.text-button:hover:checked + button.text-button,
  viewswitcher > button.flat:hover + button.flat,
  viewswitcher > button.flat:active + button.flat,
  viewswitcher > button.flat:checked + button.flat,
  viewswitcher > button.flat:hover:active + button.flat,
  viewswitcher > button.flat:hover:checked + button.flat {
    border-color: transparent;
  }

  .linked > :first-child {
    border-top-left-radius: 50px;
    border-bottom-left-radius: 50px;
  }
  .linked > :last-child {
    border-top-right-radius: 50px;
    border-bottom-right-radius: 50px;
  }
  /*GTK widget factory 2nd page popover*/
  box.linked.horizontal-buttons > button:hover + button {
    border-color: transparent;
  }
  box.linked.horizontal-buttons > button:active {
    border-width: 0px;
    box-shadow: var(--shadow-inset-base02);
  }

  .linked > *:not(:checked) + *,
  viewswitcher > * + * {
    border-left: 1px dotted var(--base00);
  }
  .linked > * + * {
    border-left: 1px dotted transparent;
    border-top-left-radius: 0px;
    border-bottom-left-radius: 0px;
  }

  .linked > button:hover,
  viewswitcher > button:hover {
    background-color: var(--base0D);
  }
  .linked > button:active,
  .linked > button:checked,
  .linked > button:hover:active,
  .linked > button:hover:checked,
  viewswitcher > button:active,
  viewswitcher > button:checked,
  viewswitcher > button:hover:active,
  viewswitcher > button:hover:checked,
  stackswitcher.linked > button:active,
  stackswitcher.linked > button:checked,
  stackswitcher.linked > button:hover:active,
  stackswitcher.linked > button:hover:checked {
    border-color: transparent;
    border-radius: 50px;

    color: var(--base0D);

    background-color: var(--base02);
    box-shadow: var(--shadow-inset-base02);
  }
  .linked > button:active *,
  .linked > button:checked *,
  .linked > button:hover:active *,
  .linked > button:hover:checked *,
  .linked > button:hover:active:checked *,
  viewswitcher > button:active *,
  viewswitcher > button:checked *,
  viewswitcher > button:hover:active *,
  viewswitcher > button:hover:checked *,
  viewswitcher > button:hover:active:checked * {
    color: var(--base0D);
  }
  .linked > entry:not(:focus-within) {
    box-shadow: none;
  }

  .linked > .popup > button.image-button.toggle {
    border-top-left-radius: 0px;
    border-bottom-left-radius: 0px;
  }
  .linked > .popup > button.image-button.toggle:hover,
  .linked > .popup > button.image-button.toggle:hover:checked {
    background-color: var(--base0D);
    box-shadow: none;
  }
  .linked > .popup > button.image-button.toggle:hover:active:not(:checked),
  .linked > .popup > button.image-button.toggle:checked:not(:hover) {
    box-shadow: var(--shadow-inset-base02);
  }

  .linked > button.text-button:nth-child(1):hover:not(:active):not(:checked),
  viewswitcher > button.flat:nth-child(1):hover:not(:active):not(:checked) {
    background-color: var(--base0B);
    box-shadow: var(--shadow-thin-base0B);
  }
  .linked > button.text-button:nth-child(1):not(:hover) *,
  .linked > button.text-button:nth-child(1):active *,
  .linked > button.text-button:nth-child(1):checked *,
  viewswitcher > button.flat:nth-child(1):not(:hover) *,
  viewswitcher > button.flat:nth-child(1):active *,
  viewswitcher > button.flat:nth-child(1):checked * {
    color: var(--base0B);
  }
  .linked > button.text-button:nth-child(2):hover:not(:active):not(:checked),
  viewswitcher > button.flat:nth-child(2):hover:not(:active):not(:checked) {
    background-color: var(--base08);
    box-shadow: var(--shadow-thin-base08);
  }
  .linked > button.text-button:nth-child(2):not(:hover) *,
  .linked > button.text-button:nth-child(2):active *,
  .linked > button.text-button:nth-child(2):checked *,
  viewswitcher > button.flat:nth-child(2):not(:hover) *,
  viewswitcher > button.flat:nth-child(2):active *,
  viewswitcher > button.flat:nth-child(2):checked * {
    color: var(--base08);
  }
  .linked > button.text-button:nth-child(3):hover:not(:active):not(:checked),
  viewswitcher > button.flat:nth-child(3):hover:not(:active):not(:checked) {
    background-color: var(--base0A);
    box-shadow: var(--shadow-thin-base0A);
  }
  .linked > button.text-button:nth-child(3):not(:hover) *,
  .linked > button.text-button:nth-child(3):active *,
  .linked > button.text-button:nth-child(3):checked *,
  viewswitcher > button.flat:nth-child(3):not(:hover) *,
  viewswitcher > button.flat:nth-child(3):active *,
  viewswitcher > button.flat:nth-child(3):checked * {
    color: var(--base0A);
  }
  .linked > button.text-button:nth-child(4):hover:not(:active):not(:checked),
  viewswitcher > button.flat:nth-child(4):hover:not(:active):not(:checked) {
    background-color: var(--base09);
    box-shadow: var(--shadow-thin-base09);
  }
  .linked > button.text-button:nth-child(4):not(:hover) *,
  .linked > button.text-button:nth-child(4):active *,
  .linked > button.text-button:nth-child(4):checked *,
  viewswitcher > button.flat:nth-child(4):not(:hover) *,
  viewswitcher > button.flat:nth-child(4):active *,
  viewswitcher > button.flat:nth-child(4):checked * {
    color: var(--base09);
  }
''
