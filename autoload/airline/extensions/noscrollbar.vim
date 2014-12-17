" vim: et ts=2 sts=2 sw=2

if !get(g:, 'noscrollbar_loaded', 0)
  finish
endif

let s:spc = g:airline_symbols.space

function! airline#extensions#noscrollbar#init(ext)
  call airline#parts#define_raw('noscrollbar', '%{noscrollbar#statusline(12)}')
  call a:ext.add_statusline_func('airline#extensions#noscrollbar#apply')
endfunction

function! airline#extensions#noscrollbar#apply(...)
  call airline#extensions#append_to_section('z', s:spc . '%{noscrollbar#statusline(12)}')
endfunction

