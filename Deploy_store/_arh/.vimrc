"https://habr.com/ru/post/65518/"
"Чтобы добавить нумерацию строк добавьте такую команду:"
set number
"сделаем ещё небольшой отступ между левой частью окна:"
set foldcolumn=2
"Настроим кол-во символов пробелов, которые будут заменять \t"
set tabstop=4
set shiftwidth=4
set smarttab
"включим автозамену по умолчанию"
set et
"попросим Vim переносить длинные строки"
set wrap
"включим автоотступы для новых строк"
set ai
"включим отступы в стиле Си"
set cin
"настроим поиск и подсветку результатов поиска и совпадения скобок"
set showmatch
set hlsearch
set incsearch
set ignorecase
"ленивая перерисовка экрана при выполнении скриптов"
set lz
"Показываем табы в начале строки точками"
set listchars=tab:··
set list
"Порядок применения кодировок и формата файлов"
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
"Избавляемся от меню и тулбара"
set guioptions-=T
set guioptions-=m
"colorscheme"
colorscheme darkblue
syntax enable "Включает подсветку синтаксиса"
"Включает определение типа файла, загрузку соответствующих ему плагинов и файлов отступов"
filetype plugin indent on
"проигрывается специальный звук"
set noerrorbells
set novisualbell
"включить мышку во всех режимах"
set mouse=a 

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
call plug#end()

let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

let g:airline_theme='dark'






