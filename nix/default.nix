{ ... }:
let
  colorFile = import ./colors.nix;
  colors = colorFile.colors;
  
  # Import all plugin pieces
  pluginFiles = {
    init = import ./init.nix { inherit colors; };
    cmp = import ./plugins/cmp.nix { inherit colors; };
    dadbod = import ./plugins/dadbod.nix { inherit colors; };
    indentBlankline = import ./plugins/indent-blankline.nix { inherit colors; };
    indentmini = import ./plugins/indentmini.nix { inherit colors; };
    miniIndentscope = import ./plugins/mini-indentscope.nix { inherit colors; };
    lsp = import ./plugins/lsp.nix { inherit colors; };
    oil = import ./plugins/oil.nix { inherit colors; };
    telescope = import ./plugins/telescope.nix { inherit colors; };
    treesitter = import ./plugins/treesitter.nix { inherit colors; };
    fidget = import ./plugins/fidget.nix { inherit colors; };
  };

  # Create a script that generates all the files
  generateFiles = ''
    # Create plugin structure
    mkdir -p $out/lua/tsukiyo/highlights/plugins
    mkdir -p $out/colors

    # Generate the main colorscheme file in colors/
    cat > $out/colors/tsukiyo.vim <<EOF
    " Vim color file
    " Maintainer: 74k1
    " Last Change: 2024
    
    set background=dark
    highlight clear
    if exists("syntax_on")
      syntax reset
    endif
    let g:colors_name="tsukiyo"
    
    lua require('tsukiyo').setup()
    EOF
    
    # Generate all plugin files
    cd $out
    ${pluginFiles.init}
    ${pluginFiles.cmp}
    ${pluginFiles.dadbod}
    ${pluginFiles.indentBlankline}
    ${pluginFiles.indentmini}
    ${pluginFiles.miniIndentscope}
    ${pluginFiles.lsp}
    ${pluginFiles.oil}
    ${pluginFiles.telescope}
    ${pluginFiles.treesitter}
    ${pluginFiles.fidget}
  '';
in {
  perSystem = { pkgs, ... }: {
    # For local development (make build)
    packages.generator = pkgs.writeShellScriptBin "generate-lua" ''
      mkdir -p lua/tsukiyo/highlights/plugins
      mkdir -p colors
      ${builtins.replaceStrings ["$out"] ["."] generateFiles}
    '';

    # For distribution as a vim plugin
    packages.default = pkgs.vimUtils.buildVimPlugin {
      pname = "tsukiyo-nvim";
      version = "0.1.0";
      src = ./..;

      preBuild = builtins.replaceStrings ["$out"] ["."] generateFiles;
    };
  };
}
