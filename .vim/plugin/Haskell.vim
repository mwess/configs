set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

let s:width = 80

function! HaskellModuleSection(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Section name: ")

    return repeat('-', s:width) . "\n"
    \      . "-- " . name . "\n"
    \      . "\n"

endfunction

nmap <silent> --s "=HaskellModuleSection()<CR>gp


function! HaskellModuleHeader(...)
    let name = 0 < a:0 ? a:1 : inputdialog("Module: ")
    let note = 1 < a:0 ? a:1 : inputdialog("Note: ")
    let description = 2 < a:0 ? a:3 : inputdialog("Describe this module: ")

    return  repeat('-', s:width) . "\n"
                \   . "-- | \n"
                \   . "-- Module    : " . name . "\n"
                \   . "-- Note      : " . note . "\n"
                \   . "-- \n"
                \   . "-- " . description . "\n"
                \   . "-- \n"
                \   . repeat('-', s:width) . "\n"
                \   . "\n"

endfunction

nmap <silent> --h "=HaskellModuleHeader()<CR>gp
