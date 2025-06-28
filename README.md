# Macnolo0x7D4's Emacs Configuration

A modern, modular Emacs configuration focused on evil-mode and development productivity.

## Features

- **Evil Mode**: Vim-like keybindings with `evil-collection` integration
- **Modern UI**: Catppuccin theme with Doom modeline and dashboard
- **Language Support**: Clojure, Elixir, Java with tree-sitter modes
- **Development Tools**: Projectile, Magit, completion frameworks
- **Modular Architecture**: Organized configuration files in `lisp/`

## Structure

```
emacs.d/
├── init.el                    # Entry point
├── lisp/
│   ├── core/                  # Core functionality
│   │   ├── core-packages.el   # Package management & evil setup
│   │   ├── core-ui.el         # UI configuration & theming
│   │   ├── core-editor.el     # Editor behavior
│   │   └── core-keybindings.el # Key bindings
│   ├── modules/               # Feature modules
│   │   ├── completion.el      # Completion framework
│   │   ├── version-control.el # Git integration
│   │   └── windows.el         # Window management
│   └── langs/                 # Language-specific configs
│       ├── clojure.el         # Clojure + CIDER
│       ├── elixir.el          # Elixir development
│       └── java.el            # Java support
└── themes/                    # Custom themes
```

## Key Packages

- **Evil**: Vim emulation with evil-collection
- **General**: Keybinding framework
- **Projectile**: Project management
- **Dashboard**: Startup dashboard
- **Doom Modeline**: Modern modeline
- **Catppuccin**: Color theme
- **CIDER**: Clojure development
- **Tree-sitter**: Enhanced syntax highlighting

## Installation

1. Clone to your Emacs directory:
   ```bash
   git clone https://github.com/yourusername/emacs.d ~/.emacs.d
   ```

2. Start Emacs - packages will be installed automatically

3. Install nerd fonts for proper icon display:
   ```bash
   # Example for BerkeleyMono Nerd Font (configured font)
   ```

## Keybindings

Leader key: `SPC` (Space)

Common bindings are defined in `core-keybindings.el` and follow Spacemacs-like conventions.

## Requirements

- Emacs 30.1+ (for tree-sitter support)
- Git (for version control features)
- Language servers (for development features)

## Customization

The configuration is modular - modify individual files in `lisp/` to customize behavior. Custom settings are stored in `custom.el`.
