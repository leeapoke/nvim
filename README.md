# 💤 LazyVim
My lazyvim config works on MacOS.
[LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to learn more about it.


![lazyvim-light](README.asserts/lazyvim-light.png)

![lazyvim-dark](README.asserts/lazyvim-dark.png)

## Neovim 配置快捷键总览

这份文档详细列出了您 Neovim 配置中定义的所有快捷键，按插件和功能进行分类，并提供了其作用的模式和详细描述。

### 前缀说明：

* `<leader>`: 在 LazyVim 默认配置下，通常是 **空格键**。
* `<leader><leader>`: 通常是 **空格键 + 空格键**。
* `<C->`: 表示 `Ctrl` 键。例如 `<C-j>` 是 `Ctrl + j`。
* `<S->`: 表示 `Shift` 键。例如 `<S-Tab>` 是 `Shift + Tab`。

### 模式说明：
* `n`: 普通模式 (Normal Mode)
* `i`: 插入模式 (Insert Mode)
* `v`: 可视模式 (Visual Mode)
* `x`: 选区模式 (Visual Line/Block Mode)
* `s`: 选择模式 (Select Mode)
* `t`: 终端模式 (Terminal Mode)

---

### 1. 通用操作与窗口管理

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| 通用 | `<leader>w` | n | 保存当前文件的修改 |
| 通用 | `<leader>q` | n | 关闭当前缓冲区 |
| 通用 | `]t` | n | 下一个 Tab 页面 |
| 通용 | `[t` | n | 上一个 Tab 页面 |
| 通用 | `<b` | n | 向左移动当前缓冲区 |
| 通用 | `>b` | n | 向右移动当前缓冲区 |
| 通用 | `<leader>h` | n | 取消高亮 (搜索结果等) |
| 文本操作 | `p` | x | 粘贴 (替换选中内容) |

### 2. VSCode 相关 (仅当在 VSCode Neovim 插件中运行时生效)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| VSCode | `<leader>qq` | n | 退出 VSCode 窗口 |
| VSCode | `<leader><leader>q` | n | 退出 VSCode 窗口 |
| VSCode | `<leader>c` | n | 关闭当前 Tab |
| VSCode | `<leader>e` | n | 切换侧边栏可见性 |
| VSCode | `<leader>E` | n | 在资源管理器中显示当前活动文件 |
| VSCode | `<leader>a` | n | 切换活动栏可见性 |
| VSCode | `<leader>js` | n | 用 bun 运行当前 JS 或 TS 文件 |
| VSCode | `<leader>py` | n | 运行当前 Python 脚本 |
| VSCode | `<leader>dd` | n | 执行 unix2dos 命令 |
| VSCode | `<leader>du` | n | 执行 dos2unix 命令 |

### 3. Neovide GUI 客户端专属 (仅在 Neovide 中生效)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| Neovide | `<F11>` | n | 切换 Neovide 全屏模式 |
| Neovide | `<C-=>` | n, v | 增大 Neovide 缩放比例 |
| Neovide | `<C-->` | n, v | 减小 Neovide 缩放比例 |
| Neovide | `<C-0>` | n, v | 重置 Neovide 缩放比例为 1 |

### 4. 其它自定义快捷键

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| 自定义 | `<leader><leader>t` | n | 切换 GUI 光标颜色 (雷姆蓝/拉姆粉) |

### 5. smoka7/hop.nvim 快速跳转

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| Hop.nvim | `<leader><leader>w` | n, v | 跳转到下一个词的开头 |
| Hop.nvim | `<leader><leader>e` | n, v | 跳转到下一个词的末尾 |
| Hop.nvim | `<leader><leader>b` | n, v | 跳转到上一个词的开头 |
| Hop.nvim | `<leader><leader>v` | n, v | 跳转到上一个词的末尾 |
| Hop.nvim | `<leader><leader>l` | n, v | 跳转到下一个驼峰命名单词的开头 |
| Hop.nvim | `<leader><leader>h` | n, v | 跳转到上一个驼峰命名单词的开头 |
| Hop.nvim | `<leader><leader>a` | n, v | 跳转到任意字符 (任意位置) |
| Hop.nvim | `<leader><leader>j` | n, v | 跳转到下一行 |
| Hop.nvim | `<leader><leader>k` | n, v | 跳转到上一行 |
| Hop.nvim | `s` | n, v | 快速跳转到单词（在可视模式下扩展选择） |
| Hop.nvim | `S` | n, v | 快速跳转到行（在可视模式下扩展选择） |

### 6. ToggleTerm 终端

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| ToggleTerm | `<leader>th` | n | 切换横向分屏终端 |
| ToggleTerm | `<leader>tf` | n | 切换浮动终端 |
| ToggleTerm | `<leader>tt` | n | 切换 Tab 页终端 |
| ToggleTerm | `<leader>tv` | n | 切换竖向分屏终端 |
| ToggleTerm | `<C-S-l>` | t | 清空终端缓冲区 |

### 7. 编程语言运行 (仅 Neovim 独立运行环境)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| 自定义 | `<leader>py` | n | 运行当前 Python 文件 |
| 自定义 | `<leader>rc` | n | 运行当前 CMake 文件 |
| 自定义 | `<leader>ru` | n | 执行 `cargo run` (Rust) |

### 8. persisted.nvim 会话管理

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| Persisted | `<leader>fs` | n | 搜索历史会话 |

### 9. nvim-lspconfig LSP (语言服务器协议)

此部分主要显示被禁用的 LazyVim 默认 LSP 快捷键。请参考“自定义 LSP 快捷键”部分查看实际可用的映射。

| 插件/功能 | 快捷键 | 模式 | 状态 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| LSP (禁用) | `<leader>ca` | n | 已禁用 | 代码动作 |
| LSP (禁用) | `<leader>cc` | n | 已禁用 | LSP 相关功能 |
| LSP (禁用) | `<leader>cC` | n | 已禁用 | LSP 相关功能 |
| LSP (禁用) | `<leader>cR` | n | 已禁用 | 重命名 |
| LSP (禁用) | `<leader>cr` | n | 已禁用 | LSP 相关功能 |
| LSP (禁用) | `<leader>cA` | n | 已禁用 | LSP 相关功能 |
| LSP (禁用) | `<leader>cl` | n | 已禁用 | LSP 相关功能 |
| LSP (禁用) | `<leader>cs` | n | 已禁用 | LSP 相关功能 |
| LSP (禁用) | `<leader>cS` | n | 已禁用 | LSP 相关功能 |

#### 自定义 LSP 快捷键 (来自 init.lua 等文件)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| LSP | `<leader>lA` | n | 代码源动作 (Source Action) |
| LSP | `<leader>la` | n, v | 代码动作 (Code Action) |
| LSP | `<leader>ld` | n | 打开当前行诊断信息 |
| LSP | `<leader>lf` | n, v | 格式化文档/选区 |
| LSP | `<leader>lF` | n, v | 格式化注入语言 |
| LSP | `<leader>ll` | n | 显示 LSP 信息 (LspInfo) |
| LSP | `<leader>lm` | n | 打开 Mason 管理器 |
| LSP | `<leader>lr` | n | 重命名符号 |

### 10. mrcjkb/rustaceanvim (仅 Rust 文件)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| RustaceanVim | `<leader>rr` | n | Rust: 运行代码 |
| RustaceanVim | `<leader>rd` | n | Rust: 调试代码 |
| RustaceanVim | `<leader>rf` | n | Rust: 格式化代码 |

### 11. nvim-telescope/telescope.nvim 搜索与导航

#### 11.1 Telescope 搜索命令

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| Telescope | `<leader>ff` | n | 查找文件 (忽略隐藏文件和 .gitignore 中的文件) |
| Telescope | `<leader>fF` | n | 查找所有文件 (包括隐藏文件和 .gitignore 中的文件) |
| Telescope | `<leader>fw` | n | 查找当前工作区中的单词 (实时 Grep) |
| Telescope | `<leader>fW` | n | 查找当前工作区中的所有单词 (包括隐藏文件和 .gitignore 中的文件，实时 Grep) |
| Telescope | `<leader>fc` | n | 查找 Neovim 命令 |
| Telescope | `<leader>fC` | n | 查找光标下的单词 (使用 grep_string) |
| Telescope | `<leader>fb` | n | 查找缓冲区 (显示所有打开的缓冲区) |

#### 11.2 Telescope 搜索窗口内部 (插入模式 i)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| Telescope | `<C-j>` | i | 切换到下一个历史记录 |
| Telescope | `<C-k>` | i | 切换到上一个历史记录 |

#### 11.3 Telescope 禁用的默认快捷键

| 插件/功能 | 快捷键 | 模式 | 状态 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| Telescope | `<leader><space>` | n | 已禁用 | 查找文件 |
| Telescope | `<leader>/` | n | 已禁用 | Grep 文件 |
| Telescope | `<leader>fp` | n | 已禁用 | 浏览插件文件 |

### 12. folke/todo-comments.nvim

| 插件/功能 | 快捷键 | 模式 | 状态 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| Todo-Comments | `]t` | n | 已禁用 | 跳转到下一个 TODO 或类似注释 |
| Todo-Comments | `[t` | n | 已禁用 | 跳转到上一个 TODO 或类似注释 |

### 13. folke/trouble.nvim 问题列表

| 插件/功能 | 快捷键 | 模式 | 状态 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| Trouble.nvim | `<leader>cs` | n | 已禁用 | (通常用于切换 Trouble 列表) |
| Trouble.nvim | `<leader>cS` | n | 已禁用 | (通常用于切换 Trouble 列表) |

### 14. Kurama622/llm.nvim LLM 交互

#### 14.1 LLM 插件全局快捷键

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| LLM.nvim | `<leader>ac` | n | 切换 LLM 会话窗口 |
| LLM.nvim | `<leader>ae` | v | 解释选中文本 |
| LLM.nvim | `<leader>ts` | x | 英译汉选中文本 |

#### 14.2 LLM 交互窗口内快捷键

##### 14.2.1 输入窗口快捷键 (Input Window)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| LLM.nvim | `<leader><cr>` | n | 提交消息 |
| LLM.nvim | `<C-c>` | n, i | 取消当前操作 |
| LLM.nvim | `<C-r>` | n, i | 重发消息 |
| LLM.nvim | `<C-j>` | n, i | 下一个历史消息 |
| LLM.nvim | `<C-k>` | n, i | 上一个历史消息 |

##### 14.2.2 输出窗口快捷键 (Output Window - split 样式)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| LLM.nvim | `i` | n | 继续提问 |
| LLM.nvim | `<C-c>` | n | 取消当前操作 |
| LLM.nvim | `<C-r>` | n | 重发消息 |

##### 14.2.3 会话窗口快捷键 (Session - float 样式)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| LLM.nvim | `<leader>ac` | n | 切换 LLM 会话窗口 |
| LLM.nvim | `<esc>` | n | 关闭会话窗口 |
| LLM.nvim | `Q` | n | 关闭会话窗口 |

##### 14.2.4 滚动快捷键 (在 LLM 窗口内)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| LLM.nvim | `<C-b>` | i, n | 向上翻页 |
| LLM.nvim | `<C-f>` | i, n | 向下翻页 |
| LLM.nvim | `<C-u>` | i, n | 向上滚动半页 |
| LLM.nvim | `<C-d>` | i, n | 向下滚动半页 |
| LLM.nvim | `gg` | n | 跳转到顶部 |
| LLM.nvim | `G` | n | 跳转到底部 |

### 15. iamcco/markdown-preview.nvim Markdown 预览

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| Markdown Preview | `<leader>mp` | n | 启动 Markdown 预览 |

### 16. echasnovski/mini.bufremove 关闭缓冲区

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| mini.bufremove | `<leader>bd` | n | 关闭当前缓冲区 (带保存提示) |
| mini.bufremove | `<leader>bD` | n | 强制关闭当前缓冲区 (不保存) |

### 17. nvim-neo-tree/neo-tree.nvim 文件浏览器

#### 17.1 NeoTree 外部快捷键

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| NeoTree | `<leader>fe` | n | 打开/切换文件浏览器 (项目根目录) |
| NeoTree | `<leader>fE` | n | 打开/切换文件浏览器 (当前工作目录) |
| NeoTree | `<leader>e` | n | 打开/切换文件浏览器 (项目根目录) |
| NeoTree | `<leader>E` | n | 打开/切换文件浏览器 (当前工作目录) |
| NeoTree | `<leader>ge` | n | 打开/切换 Git 状态浏览器 |
| NeoTree | `<leader>be` | n | 打开/切换缓冲区浏览器 |

#### 17.2 NeoTree 窗口内快捷键

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| NeoTree | `zz` | n | 滚动当前行到窗口中央 |
| NeoTree | `zt` | n | 滚动当前行到窗口顶部 |
| NeoTree | `zb` | n | 滚动当前行到窗口底部 |

### 18. hrsh7th/nvim-cmp 补全与代码片段

#### 18.1 补全菜单和代码片段跳转 (通用)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| nvim-cmp | `<Tab>` | i, s | 前进/跳转到下一个代码片段占位符 或 插入 Tab |
| nvim-cmp | `<S-Tab>` | i, s | 后退/跳转到上一个代码片段占位符 或 插入 Shift+Tab |

#### 18.2 nvim-cmp 补全菜单操作 (插入模式 i)

| 插件/功能 | 快捷键 | 模式 | 描述 |
| :--- | :--- | :--- | :--- |
| nvim-cmp | `<C-b>` | i | 向上滚动补全文档 |
| nvim-cmp | `<C-f>` | i | 向下滚动补全文档 |
| nvim-cmp | `<C-j>` | i | 选择下一个补全项 |
| nvim-cmp | `<C-k>` | i | 选择上一个补全项 |
| nvim-cmp | `<C-Space>` | i | 触发补全 |
| nvim-cmp | `<CR>` | i | 确认选中的补全项 |
| nvim-cmp | `<C-y>` | i | 确认并选择当前补全项 |
| nvim-cmp | `<S-CR>` | i | 替换确认 |
| nvim-cmp | `<C-CR>` | i | 取消补全，然后执行默认行为 |

### 19. cscope_maps.nvim Cscope/Gtags 导航

| 插件/功能 | 前缀 | 后缀快捷键 | 完整快捷键 (示例) | 查询类型 / 描述 |
| :--- | :--- | :--- | :--- | :--- |
| Cscope Maps | `<C-c>` | `s` | `<C-c>s` | **查找 C 符号 (Symbol)**：查找所有出现的符号（变量、函数等）。 |
| Cscope Maps | `<C-c>` | `g` | `<C-c>g` | **查找定义 (Definition)**：查找符号的定义位置。 |
| Cscope Maps | `<C-c>` | `c` | `<C-c>c` | **查找函数调用 (Call)**：查找某个函数被调用的地方。 |
| Cscope Maps | `<C-c>` | `t` | `<C-c>t` | **查找文本字符串 (Text string)**：查找任意文本字符串。 |
| Cscope Maps | `<C-c>` | `e` | `<C-c>e` | **查找正则表达式模式 (Egrep pattern)**：查找符合正则表达式的模式。 |
| Cscope Maps | `<C-c>` | `f` | `<C-c>f` | **查找文件 (File)**：根据文件名查找文件。 |
| Cscope Maps | `<C-c>` | `i` | `<C-c>i` | **查找包含此文件 (Include)**：查找哪些文件包含了当前文件或指定文件。 |
| Cscope Maps | `<C-c>` | `d` | `<C-c>d` | **查找被此函数调用的函数 (Called by)**：查找调用了当前函数或指定函数的其他函数。|
| Cscope Maps | `<C-c>` | `a` | `<C-c>a` | **添加数据库 (Add database)**：添加一个新的 cscope 数据库。 |
| Cscope Maps | `<C-c>` | `r` | `<C-c>r` | **重建数据库 (Rebuild database)**：重建当前的 cscope 数据库。 |
| Cscope Maps | `<C-c>` | `k` | `<C-c>k` | **杀死数据库 (Kill database)**：从列表中移除一个 cscope 数据库。 |
