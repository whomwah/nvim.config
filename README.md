# Neovim Configuration

This repository contains a customized Neovim configuration setup optimized for development.

## Prerequisites

- [Neovim](https://neovim.io/) (version 0.8.0 or higher recommended)
- [Git](https://git-scm.com/)
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for improved search)
- [fd](https://github.com/sharkdp/fd) (for improved file finding)

## Setup Instructions for macOS

### 1. Install Required Dependencies

Using Homebrew:

```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Neovim
brew install neovim

# Install supporting tools
brew install git ripgrep fd

# Install a Nerd Font (example: JetBrains Mono)
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

### 2. Clone Configuration (If Using Version Control)

If you're managing this configuration with Git:

```bash
# Backup existing config if needed
mv ~/.config/nvim ~/.config/nvim.bak

# Clone repository
git clone https://github.com/your-username/neovim-config.git ~/.config/nvim
```

### 3. First Launch

When you first launch Neovim, the plugin manager will automatically install all plugins:

```bash
nvim
```

Wait for the plugin installation to complete before starting to use Neovim.

## Key Features

- Modern UI with status line and tabline
- LSP (Language Server Protocol) integration for code intelligence
- Fuzzy finder for files, buffers, and more
- Syntax highlighting and auto-completion
- Git integration
- Terminal integration

## Key Mappings

| Mapping      | Mode   | Description            |
| ------------ | ------ | ---------------------- |
| `<Space>`    | Normal | Leader key             |
| `<Leader>ff` | Normal | Find files             |
| `<Leader>fg` | Normal | Live grep              |
| `<Leader>fb` | Normal | Browse buffers         |
| `<Leader>e`  | Normal | Toggle file explorer   |
| `gd`         | Normal | Go to definition       |
| `K`          | Normal | Show hover information |
| `<Leader>ca` | Normal | Code actions           |
| `[d` / `]d`  | Normal | Navigate diagnostics   |

## Customization

You can customize this configuration by editing the files in the `~/.config/nvim` directory:

- `init.lua`: Main configuration file
- `lua/plugins/*.lua`: Plugin configurations
- `lua/options.lua`: Neovim options
- `lua/keymaps.lua`: Key mappings

## Troubleshooting

If you encounter issues:

1. Update Neovim to the latest version
2. Run `:checkhealth` in Neovim to diagnose problems
3. Try removing the plugin cache: `rm -rf ~/.local/share/nvim/`

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements.

## License

[MIT License](LICENSE)
