{
  env = {
    "TERM" = "xterm-256color";
  };

#  background_opacity = 0.95;

  window = {
    padding.x = 10;
    padding.y = 10;
    decorations = "buttonless";
  };

  font = {
    size = 14;
    #use_thin_strokes = true;

    normal.family = "DejaVu Sans Mono";
    bold.family = "DejaVu Sans Mono";
    italic.family = "DejaVu Sans Mono";
  };

  cursor.style = "Beam";

#  shell = {
#    program = "fish";
#    args = [
#      "-C"
#      "neofetch"
#    ];
#  };

  colors = {
    # Default colors
    primary = {
      background = "0x002b36";
      foreground = "0x839496";
    };

    # Normal colors
    normal = {
      black =   "0x073642";
      red =     "0xdc322f";
      green =   "0x859900";
      yellow =  "0xb58900";
      blue =    "0x268bd2";
      magenta = "0xd33682";
      cyan =    "0x2aa198";
      white =   "0xeee8d5";
    };

    # Bright colors
    bright = {
      black =   "0x002b36";
      red =     "0xcb4b16";
      green =   "0x586e75";
      yellow =  "0x657b83";
      blue =    "0x839496";
      magenta = "0x6c71c4";
      cyan =    "0x93a1a1";
      white =   "0xfdf6e3";
    };
  };
}
