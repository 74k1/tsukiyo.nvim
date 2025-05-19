# yueye.nvim

The [YueYe](https://github.com/74k1/yueye) colorscheme for Neovim.

Greatly inspired by [nyoom-engineering/oxocarbon](https://github.com/nyoom-engineering/oxocarbon.nvim). ❤️

## Features

- YueYe color palette implementation
- Built with Nix for reproducible builds
- Optimized for Neovim

## Installation

**Using Lazy.nvim**
```lua
{
    "74k1/yueye.nvim",
    lazy = false,
    priority = 1000,
}
```

**Using Packer**
```lua
use "74k1/yueye.nvim"
```

## Usage

Add to your Neovim configuration:

```lua
vim.cmd[[colorscheme yueye]]
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request
