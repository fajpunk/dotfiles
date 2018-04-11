setlocal formatprg=stack\ exec\ hindent

let g:necoghc_use_stack = 1
let g:intero_use_neomake = 0

" Background process and window management
nnoremap <buffer> <silent> <LocalLeader>is :InteroStart<CR>
nnoremap <buffer> <silent> <LocalLeader>ik :InteroKill<CR>

" Open intero/GHCi split horizontally
nnoremap <buffer> <silent> <LocalLeader>io :InteroOpen<CR>
" Open intero/GHCi split vertically
nnoremap <buffer> <silent> <LocalLeader>iov :InteroOpen<CR><C-W>H
nnoremap <buffer> <silent> <LocalLeader>ih :InteroHide<CR>

" Reloading (pick one)
" Automatically reload on save
" au BufWritePost *.hs InteroReload
" Manually save and reload
nnoremap <buffer> <silent> <LocalLeader>wr :w \| :InteroReload<CR>

" Load individual modules
nnoremap <buffer> <silent> <LocalLeader>il :InteroLoadCurrentModule<CR>
nnoremap <buffer> <silent> <LocalLeader>if :InteroLoadCurrentFile<CR>

" Type-related information
" Heads up! These next two differ from the rest.
map <buffer> <silent> <LocalLeader>t <Plug>InteroGenericType
map <buffer> <silent> <LocalLeader>T <Plug>InteroType
nnoremap <buffer> <silent> <LocalLeader>it :InteroTypeInsert<CR>

" Navigation
nnoremap <buffer> <silent> <LocalLeader>jd :InteroGoToDef<CR>

" Managing targets
" Prompts you to enter targets (no silent):
nnoremap <buffer> <LocalLeader>ist :InteroSetTargets<SPACE>
