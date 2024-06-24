# VOICE ENGINE

# initiate dragon: 

# SPECIAL SHORTCUTS

sage: key(cmd-s)
(nope | dizzle): key(cmd-z)    
rizzle: key(cmd-shift-z)    
derek <user.text>: 
    insert(' ')
    insert(text)
comma <user.prose>: 
    insert(', ')
    insert(prose)    
insert selection: insert(edit.selected_text())
peachy: key(cmd-w)

# EDITING

trough: key(alt-backspace)
kite: 
    key(alt-right)
    key(alt-backspace)

stoosh: key(cmd-c)
spark: key(cmd-v)
skoopark: 
    insert(" ")
    key(cmd-v)
trail [<user.ordinals>] <user.navigation_target_word>:
    user.navigation("SELECT", "LEFT", "DEFAULT", "DEFAULT", navigation_target_word, ordinals or 1)

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

# COMPLEX FUNCTIONS

creek: core.repeat_command(1)
gibby: app.window_next()
shibby: app.window_next()

# simple symbols

precose: insert("(")
precorp: insert(")")