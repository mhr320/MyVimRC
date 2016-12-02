set number
filetype plugin indent on
syntax on
colo industry
if has("autocmd")
	augroup content
		autocmd BufNewFile *.pl
		   \ 0put = '#!/usr/bin/perl'  |
		   \ 1put = '################################################' |
		   \ 2put = '# Script Name:     '  . expand('%:t') |
		   \ 3put = '# Written by:      Michael H. Roberts' |
		   \ 4put = '# Creation Date:   ' . strftime('%a %d %b %Y') . ' ' .  '@'. ' ' . strftime('%T') |
		   \ 5put = '################################################' | 
		   \ 6put = 'use warnings;' |
 		   \ 7put = 'use strict;' |
		   \ 8put = '' |
		   \ norm gg10jf]
		autocmd BufNewFile *.sh
		   \ 0put = '#!/bin/sh' |
	           \ 1put = '################################################' |
	           \ 2put = '# Script Name:     '  . expand('%:t') |
	           \ 3put = '# Written by:      Michael H. Roberts' |
	           \ 4put = '# Creation Date:   ' . strftime('%a %d %b %Y') . ' ' .  '@'. ' ' . strftime('%T') |
	           \ 5put = '################################################' | 
		   \ norm gg10jf]
		autocmd BufNewFile *.txt
	           \ 0put = 'File Name:       '  . expand('%:t') |
	           \ 1put = 'Written by:      Michael H. Roberts' |
	           \ 2put = 'Creation Date:   ' . strftime('%a %d %b %Y') . ' ' .  '@'. ' ' . strftime('%T') |
		   \ norm gg10jf]
		autocmd BufNewFile *.ksh
		   \ 0put = '#!/bin/ksh' |
		   \ 1put = '################################################' |
		   \ 2put = '# Script Name:     '  . expand('%:t') |
		   \ 3put = '# Written by:      Michael H. Roberts' |
		   \ 4put = '# Creation Date:   ' . strftime('%a %d %b %Y') . ' ' .  '@'. ' ' . strftime('%T') |
		   \ 5put = '################################################' |
		   \ norm gg10jf]
		autocmd BufNewFile *.py
		   \ 0put = '#!/usr/bin/env python' |
		   \ 1put = '################################################' |
		   \ 2put = '# Problem Set '  |
		   \ 3put = '# Name: Michael H. Roberts' |
		   \ 4put = '# Collaborators: None'  |
		   \ 5put = '# Time: '  |
		   \ 6put = '################################################' |
		   \ norm gg10jf]

	augroup END
endif
set mouse=a
set ruler
set ignorecase
set smartcase
set hlsearch
set lazyredraw
set autoindent
set showmatch
set ttymouse=xterm2
set cmdheight=2
set tabstop=2
set shiftwidth=2
