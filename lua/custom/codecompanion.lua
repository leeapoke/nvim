require("codecompanion").setup({
  adapters = {
    siliconflow_deepseek = function()
      return require("codecompanion.adapters").extend("deepseek", {
        url = "https://api.siliconflow.cn/v1/chat/completions",
        env = {
          api_key = function()
            return os.getenv("LLM_KEY")
          end,
        },
        schema = {
          model = {
            default = "deepseek-ai/DeepSeek-R1-Distill-Qwen-7B",
          },
        },
      })
    end,
  },
  strategies = {
    chat = {
      adapter = "siliconflow_deepseek",
    },
    inline = {
      adapter = "siliconflow_deepseek",
    },
  },
  opts = {
    language = "Chinese",
  },
 })

