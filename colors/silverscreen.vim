let g:colors_name="silverscreen"
lua require('lush')(require('silverscreen'))

augroup WhichKeyColors
    autocmd!
    autocmd ColorScheme * highlight WhichKey          guifg=#565454
    autocmd ColorScheme * highlight WhichKeyValue     guifg=#565454
    autocmd ColorScheme * highlight WhichKeyGroup     guifg=#868383
    autocmd ColorScheme * highlight WhichKeySeparator guifg=#868383
    autocmd ColorScheme * highlight WhichKeyDesc      guifg=#565454
augroup END

augroup DiagnosticColors
    autocmd!
    autocmd ColorScheme * highlight link DiagnosticInfo ModeMsg
    autocmd ColorScheme * highlight link DiagnosticWarn WarningMsg
    autocmd ColorScheme * highlight link DiagnosticError DiffDelete
    autocmd ColorScheme * highlight link DiagnosticHint DiffAdd
    autocmd ColorScheme * highlight link DiagnosticSignInfo ModeMsg
    autocmd ColorScheme * highlight link DiagnosticSignWarn WarningMsg
    autocmd ColorScheme * highlight link DiagnosticSignError DiffDelete
    autocmd ColorScheme * highlight link DiagnosticSignHint DiffAdd
    autocmd ColorScheme * highlight link DiagnosticVirtualTextInfo DiagnosticSignInfo
    autocmd ColorScheme * highlight link DiagnosticVirtualTextWarn DiagnosticSignWarn
    autocmd ColorScheme * highlight link DiagnosticVirtualTextError DiagnosticSignError
    autocmd ColorScheme * highlight link DiagnosticVirtualTextHint DiagnosticSignHint
augroup END

augroup LualineColors
    autocmd!
    autocmd ColorScheme * highlight lualine_x_diagnostics_error_terminal guifg=#B66A5f guibg=#868383
    autocmd ColorScheme * highlight lualine_x_diagnostics_error_inactive guifg=#B66A5f guibg=#868383
    autocmd ColorScheme * highlight lualine_x_diagnostics_error_replace guifg=#B66A5f guibg=#868383
    autocmd ColorScheme * highlight lualine_x_diagnostics_error_command guifg=#B66A5f guibg=#868383
    autocmd ColorScheme * highlight lualine_x_diagnostics_error_visual guifg=#B66A5f guibg=#868383
    autocmd ColorScheme * highlight lualine_x_diagnostics_error_insert guifg=#B66A5f guibg=#868383
    autocmd ColorScheme * highlight lualine_x_diagnostics_error_normal guifg=#B66A5F guibg=#868383
augroup END

augroup CmpColors
    autocmd!
    autocmd ColorScheme * highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
    " Selection
    autocmd ColorScheme * highlight! CmpItemAbbrMatch      guibg=NONE, guifg=#1A1919
    autocmd ColorScheme * highlight! CmpItemAbbrMatchFuzzy guibg=NONE, guifg=#1A1919
    " Snippet
    autocmd ColorScheme * vim.cmd[[highlight! CmpItemKindSnippet    guibg=NONE
    " LSP things
    autocmd ColorScheme * highlight! CmpItemKindVariable   guibg=NONE gui=bold
    autocmd ColorScheme * highlight! CmpItemKindInterface  guibg=NONE gui=bold
    autocmd ColorScheme * highlight! CmpItemKindField      guibg=NONE gui=bold
    autocmd ColorScheme * highlight! CmpItemKindEnum       guibg=NONE gui=bold
    autocmd ColorScheme * highlight! CmpItemKindFunction   guibg=NONE gui=bold
    autocmd ColorScheme * highlight! CmpItemKindMethod     guibg=NONE gui=bold
    autocmd ColorScheme * highlight! CmpItemKindKeyword    guibg=NONE gui=bold
    autocmd ColorScheme * highlight! CmpItemKindProperty   guibg=NONE gui=bold
    autocmd ColorScheme * highlight! CmpItemKindUnit       guibg=NONE gui=bold
augroup END
