# Tsukiyo.nvim

A neat Base24 colorscheme for Neovim, elegantly crafted using Nix.

## Features

- Base24 color palette implementation
- Built with Nix for reproducible builds
- Optimized for Neovim

## Installation

**Using Lazy.nvim**
```lua
{
    "74k1/tsukiyo.nvim",
    lazy = false,
    priority = 1000,
}
```

**Using Packer**
```lua
use "74k1/tsukiyo.nvim"
```

## Usage

Add to your Neovim configuration:

```lua
vim.cmd[[colorscheme tsukiyo]]
```

## Requirements

- Neovim >= 0.8.0
- Nix (for building from source)

## Building from Source

```bash
make build
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request
