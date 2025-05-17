{
  description = "The YueYe Colorscheme for Neovim";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs @ { self, nixpkgs, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [ ./nix ];
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      
      perSystem = { pkgs, ... }: {
        # Development shell with necessary tools
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            gnumake
            just
            luajit
            luajitPackages.luacheck
            stylua
          ];
        };
      };
    };
}
