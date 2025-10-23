local options = {
      model = 'gpt-4.1',
      temperature = 0.1,
      window = {
        layout = 'vertical',
        width = 0.5,
        title = '🤖 AI Assistant',
        zindex = 100,
      },

      headers = {
        user = '👤 You',
        assistant = '🤖 Copilot',
        tool = '🔧 Tool',
      },
      auto_insert_mode = true,
    }

return options
