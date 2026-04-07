-- 代码补全配置：自动显示并默认选中第一个，按 Tab 确认
return {
  {
    "saghen/blink.cmp",
    opts = {
      -- 按键映射配置
      keymap = {
        -- 使用 enter 预设：Tab 接受建议，Enter 插入新行
        preset = "enter",
        -- Tab 接受当前选中的（默认第一个是选中的）
        ["<Tab>"] = { "accept", "fallback" },
        -- Shift+Tab 接受并向上选择
        ["<S-Tab>"] = { "select_prev", "accept", "fallback" },
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
          show_on_trigger_character = true,
          show_on_insert_on_trigger_character = true,
        },
        -- 列表选择行为
        list = {
          selection = {
            -- 自动预选第一个选项
            preselect = true,
            -- 不自动插入，等待确认
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
