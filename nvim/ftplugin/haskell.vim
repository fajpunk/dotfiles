setlocal formatprg=stack\ exec\ hindent

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
