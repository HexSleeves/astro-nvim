# astro-nvim

Personal [AstroNvim](https://github.com/AstroNvim/AstroNvim) v6 configuration managed with [lazy.nvim](https://github.com/folke/lazy.nvim). Focused on full-stack development (TypeScript, Go, Rust, Lua) with AI-assisted coding, a modern completion engine, and a polished UI.

## Versions

- **AstroNvim**: `^6` (pinned to v6 stable releases)
- **lazy.nvim**: `stable` branch
- **AstroCommunity**: `main` branch (community plugin packs)

Core AstroNvim modules:

- **astrocore** — central options, mappings, and autocommands
- **astrolsp** — LSP configuration engine
- **astroui** — UI / highlight / icon configuration
- **astrotheme** — default colorscheme (`astrodark`)

## Installation

### 1. Back up any existing Neovim config

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### 2. Clone this repo

```shell
git clone git@github.com:HexSleeves/astro-nvim.git ~/.config/nvim
```

### 3. Launch Neovim

```shell
nvim
```

lazy.nvim will bootstrap itself and install all plugins on first run.

## Plugins

All community plugins are imported via `lua/community.lua` from [AstroCommunity](https://github.com/AstroNvim/astrocommunity). Additional plugins are pulled in transitively by those packs.

### Language Packs

Each pack bundles the LSP server, Treesitter parser, formatter, linter, and DAP adapter for its language.

- **Lua** — `astrocommunity.pack.lua`
- **TypeScript** — `astrocommunity.pack.typescript-all-in-one` (includes `nvim-vtsls`, `tsc.nvim`, `nvim-ts-autotag`, `package-info.nvim`)
- **Go** — `astrocommunity.pack.go` (includes `gopher.nvim`, `nvim-dap-go`)
- **Rust** — `astrocommunity.pack.rust` (includes `rustaceanvim`, `crates.nvim`)
- **JSON** — `astrocommunity.pack.json` (includes `schemastore.nvim`)
- **TOML** — `astrocommunity.pack.toml`
- **YAML** — `astrocommunity.pack.yaml`
- **Markdown** — `astrocommunity.pack.markdown`

### AI / Copilot

- **[avante.nvim](https://github.com/yetone/avante.nvim)** — Cursor-style AI sidebar (Claude, ChatGPT, Copilot, Gemini)
- **[codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim)** — chat / action-focused AI (Claude, ChatGPT, Copilot, Ollama)
- **[CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim)** — dedicated Copilot Chat window
- **[copilot.lua](https://github.com/zbirenbaum/copilot.lua)** — GitHub Copilot inline suggestions
- **[blink-copilot](https://github.com/giuxtaposition/blink-cmp-copilot)** — Copilot source for blink.cmp
- **[blink-cmp-avante](https://github.com/Kaiser-Yang/blink-cmp-avante)** — Avante source for blink.cmp

### Completion & Snippets

- **[blink.cmp](https://github.com/Saghen/blink.cmp)** — primary completion engine
- **[blink.compat](https://github.com/Saghen/blink.compat)** — nvim-cmp source compatibility layer
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** — snippet engine
- **[friendly-snippets](https://github.com/rafamadriz/friendly-snippets)** — community snippet collection

### Git

- **[neogit](https://github.com/NeogitOrg/neogit)** — Magit-style git interface
- **[diffview.nvim](https://github.com/sindrets/diffview.nvim)** — tabbed diff / merge viewer
- **[octo.nvim](https://github.com/pwntester/octo.nvim)** — GitHub PRs & issues inside Neovim
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** — git gutter signs, blame, hunk actions

### Diagnostics & LSP

- **[trouble.nvim](https://github.com/folke/trouble.nvim)** — diagnostics / quickfix list
- **[inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim)** — incremental LSP rename with live preview
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** — portable LSP / DAP / linter / formatter installer
- **[none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)** — inject diagnostics, formatting, and code actions from non-LSP sources

### Editing & Motion

- **[flash.nvim](https://github.com/folke/flash.nvim)** — label-based navigation and search
- **[harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)** (v2) — fast file bookmarks
- **[vim-visual-multi](https://github.com/mg979/vim-visual-multi)** — multi-cursor editing
- **[nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)** — sticky function / class context
- **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim)** — highlight and search TODO/FIXME/HACK
- **[rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim)** — rainbow brackets
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** — auto close brackets & quotes
- **[better-escape.nvim](https://github.com/max397574/better-escape.nvim)** — jk / jj escape without delay
- **[guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim)** — auto detect indentation

### Debugging

- **[nvim-dap](https://github.com/mfussenegger/nvim-dap)** — Debug Adapter Protocol client
- **[nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)** — DAP UI panels
- **[nvim-dap-go](https://github.com/leoluz/nvim-dap-go)** — Go debug configuration

### UI

- **[noice.nvim](https://github.com/folke/noice.nvim)** — replaces cmdline, messages, and popupmenu
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** — file explorer
- **[heirline.nvim](https://github.com/rebelot/heirline.nvim)** — statusline & tabline
- **[snacks.nvim](https://github.com/folke/snacks.nvim)** — dashboard & utility collection
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** — keybinding popup hints
- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)** — toggleable terminal
- **[smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim)** — seamless window/tmux split navigation
- **[aerial.nvim](https://github.com/stevearc/aerial.nvim)** — code outline / symbol sidebar
- **[mini.icons](https://github.com/echasnovski/mini.icons)** — icon provider
- **[nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors)** — inline color previews

### Treesitter

- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** — syntax highlighting, indentation, and folding
- **[nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)** — syntax-aware text objects

### Session & Utilities

- **[resession.nvim](https://github.com/stevearc/resession.nvim)** — session management
- **[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)** — Lua utility library (dependency for many plugins)
- **[nui.nvim](https://github.com/MunifTanjim/nui.nvim)** — UI component library (dependency for noice, neo-tree, etc.)

## Project Structure

```
.
├── init.lua              # Bootstraps lazy.nvim, loads lazy_setup and polish
├── lua/
│   ├── lazy_setup.lua    # lazy.nvim setup — loads AstroNvim, community, and plugins
│   ├── community.lua     # AstroCommunity pack imports
│   ├── polish.lua        # Runs last — custom Lua that doesn't fit elsewhere
│   └── plugins/          # User plugin specs (override or extend defaults)
│       ├── astrocore.lua
│       ├── astrolsp.lua
│       ├── astroui.lua
│       ├── mason.lua
│       ├── none-ls.lua
│       ├── treesitter.lua
│       └── user.lua
├── lazy-lock.json        # Pinned plugin versions
├── selene.toml           # Selene linter config
├── .stylua.toml          # StyLua formatter config
├── .neoconf.json         # LSP / neodev settings
├── .luarc.json           # lua_ls settings
└── neovim.yml            # Neovim Lua globals definition
```

## Customization

The files under `lua/plugins/` ship with a guard (`if true then return {} end`) that disables them by default. Remove the guard line at the top of any file to activate your overrides:

- `astrocore.lua` — keymaps, vim options, autocommands
- `astrolsp.lua` — LSP features, formatting, server config
- `astroui.lua` — colorscheme, highlights, icons
- `mason.lua` — auto-install additional Mason packages
- `none-ls.lua` — extra formatters / diagnostics
- `treesitter.lua` — ensure specific parsers are installed
- `user.lua` — add any additional plugins

## Tooling

- **StyLua** — Lua formatter (config in `.stylua.toml`: 120 col, 2-space indent)
- **Selene** — Lua linter (config in `selene.toml`: neovim std library)

## License

This is a personal configuration. Feel free to fork and adapt.
