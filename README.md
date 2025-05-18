# yueye.nvim

The [YueYe](https://github.com/74k1/yueye) colorscheme for Neovim, elegantly crafted using Nix.

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

## Requirements

- Neovim >= 0.8.0
- Nix (for building from source)
- [`just`](https://github.com/casey/just)

## Building from Source

```bash
just
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request
