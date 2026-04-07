-- 代码补全配置：自动显示补全，但默认不选中，按 Tab 选中
return {
  {
    "saghen/blink.cmp",
    opts = {
      -- 按键映射配置
      keymap = {
        -- 使用默认预设作为基础
        preset = "default",
        -- Tab 选中并确认，如果没有选中则选择第一个再确认
        ["<Tab>"] = { "select_next", "accept", "fallback" },
        -- Shift+Tab 向上选择
        ["<S-Tab>"] = { "select_prev", "fallback" },
        -- Enter 仅确认已选中的（不会自动选第一个）
        ["<CR>"] = { "accept", "fallback" },
        -- 方向键选择
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },
        -- 取消补全
        ["<C-e>"] = { "cancel", "fallback" },
        -- 手动触发补全
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      },
      completion = {
        -- 触发配置
        trigger = {
          -- 输入关键字时自动显示补全
          show_on_keyword = true,
          -- 只在输入触发字符时显示
          show_on_trigger_character = true,
          -- 插入模式下也自动显示
          show_on_insert_on_trigger_character = true,
        },
        -- 列表选择行为
        list = {
          selection = {
            -- 不自动预选第一个选项（关键配置）
            preselect = false,
            -- 不自动插入
            auto_insert = false,
          },
        },
        -- 菜单显示
        menu = {
          auto_show = true,
          max_height = 10,
        },
        -- 文档显示
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 300,
        },
      },
      -- 签名帮助
      signature = {
        enabled = true,
      },
    },
  },
}
