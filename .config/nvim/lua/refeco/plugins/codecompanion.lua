local anthropic_api_key = os.getenv("ANTHROPIC_API_KEY")
local openai_api_key = os.getenv("OPENAI_API_KEY")

return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("codecompanion").setup({
            adapters = {
                claude = function()
                    return require("codecompanion.adapters").extend("anthropic", {
                        schema = {
                            model = {
                                default = "claude-3-5-sonnet-20241022",
                                -- default = "claude-3-haiku-20240307"
                            },
                        },
                        env = {
                            api_key = anthropic_api_key,
                        },
                    })
                end,
                gpt = function()
                    return require("codecompanion.adapters").extend("openai", {
                        schema = {
                            model = { default = "gpt-4-turbo" }
                            -- model = { default = "gpt-3.5-turbo" }
                        },
                        env = { api_key = openai_api_key }
                    })
                end,
            },
            strategies = {
                -- default
                chat = { adapter = "claude" },
            }
        })
    end
}
