-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- ── Language Packs ────────────────────────────────────────────────
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.markdown" },

  -- ── AI / Copilot ──────────────────────────────────────────────────
  -- Inline Copilot completions via blink.cmp
  { import = "astrocommunity.completion.blink-copilot" },
  -- Cursor-style AI sidebar (Copilot, Claude, ChatGPT, Gemini)
  { import = "astrocommunity.ai.avante-nvim" },
  -- Chat/action-focused AI (Claude, ChatGPT, Copilot, Ollama)
  { import = "astrocommunity.ai.codecompanion-nvim" },
  -- Dedicated Copilot Chat window
  { import = "astrocommunity.ai.copilotchat-nvim" },

  -- ── Git ───────────────────────────────────────────────────────────
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.git.diffview-nvim" },

  -- ── Diagnostics ───────────────────────────────────────────────────
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- ── Editing ───────────────────────────────────────────────────────
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  -- ── Motion ────────────────────────────────────────────────────────
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.harpoon" },

  -- ── LSP ───────────────────────────────────────────────────────────
  { import = "astrocommunity.lsp.inc-rename-nvim" },

  -- ── Git (extended) ────────────────────────────────────────────────
  { import = "astrocommunity.git.octo-nvim" },

  -- ── Editing (extended) ────────────────────────────────────────────
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- ── Utility ───────────────────────────────────────────────────────
  { import = "astrocommunity.utility.noice-nvim" },
}
