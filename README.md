## nix-darwin

get an equivalent of NixOS' `/etc/nixos/configuration.nix` for macOS

### install

using [nix-darwin](https://github.com/LnL7/nix-darwin)

installed via (at commit rev 47fe6db9c9cd22c4ba57df3281f98f454880bea7):

```
nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
./result/bin/darwin-installer
```

initial config generated in `~/.nixpkgs/darwin-configuration.nix`

replace it with the one in this repo: `ln -s ~/.nixos/darwin-configuration.nix ~/.nixpkgs/darwin-configuration.nix`

### update

```
nix-channel --update darwin
darwin-rebuild switch
```


## home-manager

manage home directory dot files using nix. home-manager can be used [from inside nix-darwin](https://rycee.gitlab.io/home-manager/#sec-install-nix-darwin-module)

```
nix-channel --add https://github.com/rycee/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```

then add `imports = [ <home-manager/nix-darwin> ];` to `darwin-configuration.nix`
