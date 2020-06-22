source "%val{config}/plugins/plug.kak/rc/plug.kak"
source "%val{config}/plugins/kakoune-easymotion/easymotion.kak"
colorscheme base16-summerfruit

evaluate-commands %sh{
    find "${kak_runtime}"~/.config/kak/kakoune-extra-filetypes/rc -type f -name \*\\.kak -exec printf 'source %s\n' '{}' \;
}addhl global/ wrap


set global ui_options ncurses_assistant=none

plug "lePerdu/kakboard" %{
    hook global WinCreate .* %{ kakboard-enable }
}

map global user w :easy-motion-w<ret>
map global user W :easy-motion-W<ret>
map global user j :easy-motion-j<ret>

plug 'delapouite/kakoune-livedown'




























