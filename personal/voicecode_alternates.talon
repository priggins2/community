# VOICE ENGINE

# initiate dragon: 

# SPECIAL SHORTCUTS

sage: key(cmd-s)
(nope | dizzle): key(cmd-z)    
rizzle: key(cmd-shift-z)    
derek <user.text>: 
    insert(' ')
    insert(text)
darren <user.text>: 
    key(cmd-right)
    insert(' ')
    insert(text)
comma <user.prose>: 
    insert(', ')
    insert(prose)    
insert selection: insert(edit.selected_text())
(peachy | pitchy): key(cmd-w)
sky shock: key(shift-enter)

# EDITING

trough: key(alt-backspace)
kite: 
    key(alt-delete)
snipple:
    key(cmd-shift-left)
    edit.delete()
snipper:
    key(cmd-shift-right)
    edit.delete()

slapper:
    key(enter)
    key(enter)

stoosh: key(cmd-c)
spark: key(cmd-v)
skoopark: 
    insert(" ")
    key(cmd-v)
trail [<user.ordinals>] <user.navigation_target>:
    user.navigation("SELECT", "LEFT", "DEFAULT", "DEFAULT", navigation_target, ordinals or 1)

nudgle:
    edit.word_left()
    edit.delete()
    edit.word_right()

# MOVEMENT

chris: key(right)
crimp: key(left)
jeep: key(up)
doom: key(down)

ricky: key(cmd-right)
lefty: key(cmd-left)
jeepway: key(cmd-up)
doomway: key(cmd-down)

fran: key(alt-right)
peg: key(alt-left)

rixy: key(cmd-shift-right)
lexy: key(cmd-shift-left)



# COMPOUND SYMBOLS

coal gap: insert(": ")
swipe: insert(", ")
prexy: insert("()")
coal shock: insert(":\n")
divvy: insert(" / ")
dotsun: insert(". ")

# COMPLEX FUNCTIONS

creek: core.repeat_phrase(1)
gibby: app.window_next()
shibby: app.window_next()

# simple symbols

precose: insert("(")
precorp: insert(")")