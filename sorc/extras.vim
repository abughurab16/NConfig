set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:lightline = {'colorscheme' : 'tokyonight'}
let g:airline_theme = "tokyonight"

colorscheme tokyonight

let mapleader = " "


"AIRLINE"
let g:airline_skip_empty_sections = 1
let g:airline_section_warning = ''
let g:airline_section_x=''
let g:airline_section_z = airline#section#create(['%3p%% ', 'linenr', ':%c'])
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 2   " show tabline only if there is more than 1 buffer
let g:airline#extensions#tabline#fnamemod = ':t'        " show only file name on tabs
let airline#extensions#coc#error_symbol = '✘:'
let airline#extensions#coc#warning_symbol = '⚠:'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.dirty= ''

"" coc

" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" list of the extensions to make sure are always installed
let g:coc_global_extensions = [
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-css',
            \'coc-html',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-clangd',
            \'coc-xml',
            \'coc-syntax',
            \'coc-git',
            \'coc-go',
            \]
" custom banner
let g:startify_custom_header = [
 \ '',
 \ '                                                    ▟▙            ',
 \ '                                                    ▝▘            ',
 \ '            ██▃▅▇█▆▖  ▗▟████▙▖   ▄████▄   ██▄  ▄██  ██  ▗▟█▆▄▄▆█▙▖',
 \ '            ██▛▔ ▝██  ██▄▄▄▄██  ██▛▔▔▜██  ▝██  ██▘  ██  ██▛▜██▛▜██',
 \ '            ██    ██  ██▀▀▀▀▀▘  ██▖  ▗██   ▜█▙▟█▛   ██  ██  ██  ██',
 \ '            ██    ██  ▜█▙▄▄▄▟▊  ▀██▙▟██▀   ▝████▘   ██  ██  ██  ██',
 \ '            ▀▀    ▀▀   ▝▀▀▀▀▀     ▀▀▀▀       ▀▀     ▀▀  ▀▀  ▀▀  ▀▀',
 \ '',
 \ '',
 \ '',
 \]

" <---------------------------- Code Syntax --------------------------->
filetype on
filetype plugin on
filetype plugin indent on
syntax on

"V lang settings

" Disable highlight white space after "[]".
let g:v_highlight_array_whitespace_error = 0

" Disable highlight white space around the communications operator that don't follow the standard style.
let g:v_highlight_chan_whitespace_error = 0

" Disable highlight instances of tabs following spaces.
let g:v_highlight_space_tab_error = 0

" Disable highlight trailing white space.
let g:v_highlight_trailing_whitespace_error = 0

" Disable highlight function calls.
let g:v_highlight_function_calls = 0

let g:v_highlight_fields = 0

" Enable automatically formatting file via "v fmt -" before writing buffer.
let g:v_autofmt_bufwritepre = 1
