app: MacVim
-

# leader:
#     insert("\\")

# shortcuts for deleting in insert mode
# action(edit.delete_word):
#     key(ctrl-o)
#     insert('diw')

# action(user.delete_word_left):
#     key(ctrl-w)

# action(user.delete_word_right):
#     key(ctrl-o)
#     insert('de')

# basics
(vim | venom) save quit: "\\Twqq"
	# :wq<CR>
(vim | venom) quit: "\\Tqqq"
	# :q<CR>
(vim | venom) force quit: "\\TqqQ"
	# :q!<CR>
# (vim | venom) help [<dgndictation>]: [":help ", text]

#### UPDATE THESE WITH ACTIONS FROM ELSEWHERE AS NEEDED

# marco: Key('/')
# dizzle: Key('u')
# rizzle: Key('ctrl-r')
window: key(ctrl-w)
# kite: [Key("ctrl-o"), "de"]
# nudgle: [Key("alt-left"), Key("backspace")]
jolt: "yyp"
# yank line: "yy"
# shabble: Key("cmd-[")
#     # nmap <D-[> <<
#     # vmap <D-[> <gv
# shabber: Key("cmd-]")
#     # nmap <D-]> >>
#     # vmap <D-]> >gv
# moment: Key("ctrl-o")
# auto complete: [Key("ctrl-x"), Key("ctrl-o")]

# # duplicating from generic editor:
# # meta
# (save it | sage): [Key("escape"), Key("cmd-s")]
# randall sage: lambda m: app.notify('Just say "sage"!')
# (undo it | dizzle): Key("cmd-z")
# (redo it | rizzle): Key("cmd-shift-z")
# # clipboard
# (clip cut | snatch): Key("cmd-x")
# (clip copy | stoosh): Key("cmd-c")
# (clip paste | spark): Key("cmd-v")
# # motions
# peg: Key("alt-left")
# fran: Key("alt-right")
# ricky: Key("cmd-right")
# lefty: Key("cmd-left")

# from vim-impaired
[insert] line above: "[ "
[insert] line below: "] "
switchee: "[e"
switcho: "]e"

# commentary.vim
trundle: key('cmd-/')
# nmap <D-/> gcc
# vmap <D-/> gc

#####################################

# various command shortcuts

# miscellaneous helpers
current directory: "\\Tpwd" 
    # :pwd<CR>
working directory: "\\Tcwd"
	# :echo getcwd()<CR>
[change] local directory here: "\\Tlcd"
	# :lcd %%<CR>
[change] local directory parent: "\\Tlcp"
	# :lcd ..<CR>
[change] local directory talon: "\\Tlct"
	# :lcd ~/.talon/user/<CR>
(vim | venom) grep [<user.text>]: "\\Tvim"
    # user.insert_cursor(":vimgrep /[|]/ **")
	# :vim // **<Left><Left><Left><Left>
source config: "\\Tvrc"
	# :source $MYVIMRC<CR>

# for correcting accidental 6G instead of 6j/6k
line oops down: "\\Gj"
    # map <leader>Gj :let @g=v:prevcount<CR>'':norm <c-r>gj<CR>zz
line oops up: "\\Gk"
    # map <leader>Gk :let @g=v:prevcount<CR>'':norm <c-r>gk<CR>zz


# aesthetics
# TODO: add shortcuts to favorite color schemes
color scheme: ":colorscheme "

# Plugins
toggle nerdy [tree]: "\\n"
	# :NERDTreeToggle<CR>
nerd tree find: "\\nf"
	# :NERDTreeFind<CR>
startify: "\\st"
    # map <leader>st :Startify<CR>
airline refresh: "\\Talr"
	# :AirlineRefresh<CR>
Pomodoro today: "\\pt"
	# :PomodoroToDoToday<CR>
Pomodoro open archive: "\\pa"
	# :PomodoroOpenArchive<CR>
Pomodoro perform archive: "\\pp"
	# :PomodoroPerformArchive<CR>

# vundle
plugin install: "\\Tpli"
	# :PluginInstall<CR>
plugin update: "\\Tplu"
	# :PluginUpdate<CR>
plugin clean: "\\Tplc"
	# :PluginClean<CR>

# vim-unimpaired.vim
buffer previous: "[b"
buffer next: "]b"
quick previous: "[q"
quick next: "]q"
tab unimpaired previous: "[t"
tab unimpaired next: "]t"

[toggle] background: "yob"
[toggle] cursor line: "yoc"
[toggle] diff this: "yod"
[toggle] highlight: "yoh"
([toggle] invisibles | toggle list): "yol"
[toggle] relative: "yor"
toggle spell: "yos"
[toggle] cursor column: "you"
toggle wrap: "you"
[toggle] crosshairs: "yox"

# buffer shortcuts
buffer name [<user.text>]$: 
    insert(":b ")
    insert(text or "")
buffer alternate: "\\Tbfa"
	# :b#<CR>

# quickfix shortcuts
quick open: "\\qo"
	# :cope<CR>
quick close: "\\qc"
	# :ccl<CR>
quick max: "\\qm"
	# :cope<CR><c-w>_

# diff shortcuts
previous diff: "[c"
next diff: "]c"
diff put: "dp"
range diff put: "\\Tdpr"
	# :diffp<M-Left>
diff (get | obtain): "do"
range diff get: "\\Tdgr"
	# :diffg<M-Left>

# # jupyter interaction
# start jupyter: "\\Tjpy"
# 	# :!jupyter qtconsole &
# connect to jupyter: "\\Tjcn"
# 	# :JupyterConnect<cr>

# # tree style notes
# level one: [Key("escape"), "\\Tnl1"]
# 	# o\|-- 
# new level: [Key("escape"), "\\Tnlv"]
# 	# yypf-C-- ... sorta 
# new sublevel: [Key("escape"), "\\Tnsl"]
# 	# yypI\|   <Esc>f-C-- 
# level up: [Key("escape"), "\\Tnlu"]
# 	# I\|   <Esc>A
# level down: [Key("escape"), "\\Tnld"]
# 	# 0dt\|A
# new line: [Key("escape"), "\\Tnnl"]
# 	# yyp^f-C   

# # checklist shortcuts
# new checkbox: [Key("escape"), "\\Tchn"]
# 	# o[ ] 
# check off item: [Key("escape"), "\\Tchx"]
# 	# gmc^lrx`c
# uncheck item: [Key("escape"), "\\Tchu"]
# 	# gmc^lr `c

# sixty one a check: "\\Tcsa"
	# [[w:lcd %%<CR>:!python3 ok -q <c-r><c-w><CR>
# create included file: "\\Tlcf"
	# :lcd %:h<cr>f{yi{:E <c-r>".tex<cr>i%! TEX root = ../ProjectDocument_v2.tex<c-r><c-r>\\chapter{}<esc>:w<cr>:b#<cr>
