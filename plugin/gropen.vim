" File: gropen.vim
" Author: Tiago Guedes <tiagopog@gmail.com>
" Description:  Open local files and directories on remote git repositories.
" Last Modified: April 17, 2021
"
if exists("g:loaded_gropen")
  finish
endif

let g:loaded_gropen = v:true

function s:gropen(file_path, start_line, end_line) abort
  let s:command = ":! gropen " . a:file_path

  if a:start_line isnot v:null
    let s:command = s:command . ":" . a:start_line
  endif

  if a:end_line isnot v:null
    let s:command = s:command . "," . a:end_line
  endif

  exe s:command
endfunction

function! GropenFile()
  call s:gropen(@%, v:null, v:null)
endfunction

function! GropenCurrentLine()
  call s:gropen(@%, line("."), v:null)
endfunction

function! GropenLineRange()
  call s:gropen(@%, getpos("'<")[1], getpos("'>")[1])
endfunction

" gropen the entire file:
nnoremap <leader>g :call GropenFile()<cr>

" gropen the current line in the file:
nnoremap <leader>gl :call GropenCurrentLine()<cr>

" gropen a line range from visual model:
nnoremap <leader>gr :call GropenLineRange()<cr>
