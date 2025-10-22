return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    config = function()
        local get_normal_bg = function()
            local normal_bg_hex = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Normal")), "bg#")

            if normal_bg_hex and normal_bg_hex ~= "" then
                return normal_bg_hex
            end
            return vim.o.background == 'dark' and '#000000' or '#ffffff'
        end

        local function create_custom_theme(base_theme_name)
            local is_light = base_theme_name:find('light')

            local colors = {
                purple = '#c678dd',
                blue = '#4293c6',
                light_blue = '#007ACC',
                cyan = '#56b6c2',
                red = '#e06c75',
                fg_high_contrast = is_light and '#222831' or '#ffffff',
                black = '#000000',
                normal_bg = get_normal_bg(),
                accent_bg = is_light and '#D3D3D3' or '#333842',
            }

            return {
                normal = {
                    a = { fg = colors.black, bg = is_light and colors.light_blue or colors.purple, gui = 'bold' },
                    b = { fg = colors.fg_high_contrast, bg = colors.accent_bg },
                    c = { fg = colors.fg_high_contrast, bg = 'None', },
                    x = { fg = colors.fg_high_contrast, bg = colors.accent_bg },
                    y = { fg = colors.fg_high_contrast, bg = colors.accent_bg },
                    z = { fg = colors.black, bg = is_light and colors.light_blue or colors.purple, gui = 'bold' },
                },
                insert = { a = { fg = colors.black, bg = colors.cyan, gui = 'bold' } },
                visual = { a = { fg = colors.black, bg = colors.red, gui = 'bold' } },
                replace = { a = { fg = colors.black, bg = colors.red, gui = 'bold' } },

                inactive = {
                    a = { fg = colors.fg_high_contrast, bg = 'None' },
                    b = { fg = colors.fg_high_contrast, bg = 'None' },
                    c = { fg = colors.fg_high_contrast, bg = 'None' },
                },
            }
        end

        local function get_lualine_theme()
            local current_colorscheme = vim.g.colors_name or vim.o.colorscheme
            if current_colorscheme:find('onelight') or current_colorscheme:find('onedark') or current_colorscheme:find('onenight') then
                return create_custom_theme(current_colorscheme)
            else
                return 'auto'
            end
        end

        local function setup_lualine()
            require('lualine').setup {
                options = {
                    theme = get_lualine_theme(),
                    icons_enabled = true,
                    component_separators = '',
                    section_separators = { left = '', right = '' },
                    globalstatus = true,
                },
                sections = {
                    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 1 } },
                    lualine_b = {
                        'branch', 'diff', 'diagnostics',
                        { 'filename', path = 1 , separator = { right = '' }, left_padding = 1 }
                    },
                    lualine_c = { ' ' },
                    lualine_x = { { 'encoding', separator = { left = '' }, right_padding = 1 },
                        'filetype', 'lsp_progress', },
                    lualine_y = { 'progress' },
                    lualine_z = { { 'location', separator = { right = '' }, left_padding = 1 } },
                },
                inactive_sections = {
                    lualine_a = { 'filename' },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = { 'location' },
                },
                tabline = {},
                extensions = {},
            }
        end

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = function()
                setup_lualine()
            end,
        })

        setup_lualine()

    end,
}
