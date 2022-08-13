-- vim.o.background = 'dark'

local cache_dir = os.getenv('HOME') .. '/.cache/nvim/'

vim.opt.termguicolors = true
vim.opt.hidden = true
vim.opt.fileformats = 'unix,mac,dos'
vim.opt.magic = true
vim.opt.virtualedit = 'block'
vim.opt.encoding = 'utf-8'
vim.opt.viewoptions = 'folds,cursor,curdir,slash,unix,options'
vim.opt.sessionoptions = 'curdir,help,tabpages,winsize'
vim.opt.clipboard = 'unnamedplus'
vim.opt.wildignorecase = true
vim.opt.wildignore =
  '.git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**'
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.directory = cache_dir .. 'swag/'
vim.opt.undodir = cache_dir .. 'undo/'
vim.opt.backupdir = cache_dir .. 'backup/'
vim.opt.viewdir = cache_dir .. 'view/'
vim.opt.spellfile = cache_dir .. 'spell/en.uft-8.add'
vim.opt.history = 2000
vim.opt.shada = "!,'300,<50,@100,s10,h"
vim.opt.backupskip = '/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim'
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.timeout = true
vim.opt.ttimeout = true
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 10
vim.opt.updatetime = 100
vim.opt.redrawtime = 1500
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.complete = '.,w,b,k'
vim.opt.inccommand = 'nosplit'
vim.opt.grepformat = '%f:%l:%c:%m'
vim.opt.grepprg = 'rg --hidden --vimgrep --smart-case --'
vim.opt.breakat = [[\ \	;:,!?]]
vim.opt.startofline = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.switchbuf = 'useopen'
vim.opt.backspace = 'indent,eol,start'
vim.opt.diffopt = 'filler,iwhite,internal,algorithm:patience'
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.jumpoptions = 'stack'
vim.opt.showmode = false
vim.opt.shortmess = 'aoOTIcF'
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 5
vim.opt.foldlevelstart = 99
vim.opt.ruler = false
vim.opt.list = true
vim.opt.showtabline = 2
vim.opt.winwidth = 30
vim.opt.winminwidth = 10
vim.opt.pumheight = 15
vim.opt.helpheight = 12
vim.opt.previewheight = 12
vim.opt.showcmd = false
-- just for nightly
vim.opt.cmdheight = 2
vim.opt.cmdwinheight = 5
vim.opt.equalalways = false
vim.opt.laststatus = 2
vim.opt.display = 'lastline'
vim.opt.showbreak = '↳  '
vim.opt.listchars = 'tab:»·,nbsp:+,trail:·,extends:→,precedes:←'
vim.opt.pumblend = 10
vim.opt.winblend = 10

vim.opt.undofile = true
vim.opt.synmaxcol = 2500
vim.opt.formatoptions = '1jcroql'
vim.opt.textwidth = 80
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1
vim.opt.breakindentopt = 'shift:2,min:20'
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.number = true
-- vim.opt.colorcolumn = '80'
vim.opt.foldenable = true
vim.opt.signcolumn = 'yes'
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'niv'
vim.opt.relativenumber = true

vim.g.colors_name = 'dracula'

vim.g.mapleader = ' '
vim.g.rooter_patters = {'.git', '.svn', 'package.json', '!node_modules'}

-- Github Copilot
vim.g.copilot_node_command = '~/.local/share/nvm/v17.9.0/bin/node'
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

-- Git
vim.g.gitblame_enabled = 0

-- Views
-- vim.cmd [[autocmd BufWinLeave *.* silent mkview!]]
-- vim.cmd [[autocmd BufWinEnter *.* silent loadview]]

--local colorscheme = "gruvbox-material"
local colorscheme = "dracula"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
