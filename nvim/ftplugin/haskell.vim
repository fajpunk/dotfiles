" Process management:
nnoremap <buffer> <LocalLeader>so :InteroOpen<CR>
nnoremap <buffer> <LocalLeader>sk :InteroKill<CR>
nnoremap <buffer> <LocalLeader>sh :InteroHide<CR>
nnoremap <buffer> <LocalLeader>sl :InteroLoadCurrentModule<CR>
nnoremap <buffer> <LocalLeader>sr :InteroReload<CR>

" REPL commands
nnoremap <buffer> <LocalLeader>e :InteroEval<CR>
nnoremap <buffer> <LocalLeader>t :InteroGenericType<CR>
nnoremap <buffer> <LocalLeader>T :InteroType<CR>
nnoremap <buffer> <LocalLeader>i :InteroInfo<CR>
nnoremap <buffer> <LocalLeader>I :InteroTypeInsert<CR>

" Go to definition:
nnoremap <buffer> <LocalLeader>g :InteroGoToDef<CR>

" Highlight uses of identifier:
nnoremap <buffer> <LocalLeader>u :InteroUses<CR>

" Hindent
nnoremap <buffer> <LocalLeader>h :Hindent<CR>:w<CR>

" Reload the file in Intero after saving
" autocmd! BufWritePost *.hs InteroReload

setlocal tabstop=8                   "A tab is 8 spaces
setlocal expandtab                   "Always uses spaces instead of tabs
setlocal softtabstop=2               "Insert 4 spaces when tab is pressed
setlocal shiftwidth=2                "An indent is 4 spaces
" setlocal shiftround                  "Round indent to nearest shiftwidth multiple

" Hdevtools
" nnoremap <buffer> <LocalLeader>t :HdevtoolsType<CR>
" nnoremap <buffer> <LocalLeader>i :HdevtoolsInfo<CR>
