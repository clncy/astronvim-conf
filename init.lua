return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",     -- remote to use
    channel = "stable",    -- "stable" or "nightly"
    version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly",    -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,     -- automatically quit the current session after a successful update
    remotes = {            -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },
  -- Set colorscheme to use
  colorscheme = "astrodark",
  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  lsp = {
    -- Add overrides for LSP server settings, the keys are the name of the server
    config = {
      -- example for addings schemas to yamlls
      yaml = {
        schemastore = {
          enable = true,
        },
        customTags = {
          "!And scalar",
          "!And mapping",
          "!And sequence",
          "!If scalar",
          "!If mapping",
          "!If sequence",
          "!Not scalar",
          "!Not mapping",
          "!Not sequence",
          "!Equals scalar",
          "!Equals mapping",
          "!Equals sequence",
          "!Or scalar",
          "!Or mapping",
          "!Or sequence",
          "!FindInMap scalar",
          "!FindInMap mappping",
          "!FindInMap sequence",
          "!Base64 scalar",
          "!Base64 mapping",
          "!Base64 sequence",
          "!Cidr scalar",
          "!Cidr mapping",
          "!Cidr sequence",
          "!Ref scalar",
          "!Ref mapping",
          "!Ref sequence",
          "!Sub",
          "!GetAtt scalar",
          "!GetAtt mapping",
          "!GetAtt sequence",
          "!GetAZs scalar",
          "!GetAZs mapping",
          "!GetAZs sequence",
          "!ImportValue scalar",
          "!ImportValue mapping",
          "!ImportValue sequence",
          "!Select scalar",
          "!Select mapping",
          "!Select sequence",
          "!Split scalar",
          "!Split mapping",
          "!Split sequence",
          "!Join scalar",
          "!Join mapping",
          "!Join sequence",
        },
        schemas = {
          ["https://raw.githubusercontent.com/aws/serverless-application-model/main/samtranslator/schema/schema.json"] = "template.yaml",
          ["https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json"] = "cloudformation.yaml",
        },
      },
    },
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true,     -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- "sumneko_lua",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
  },
  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
