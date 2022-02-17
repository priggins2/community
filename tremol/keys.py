# original author: splondike

# Description: 
# Needed to use my own alphabet, instead of knauss

# What it does:
# Overrides a different list in a more specific context
# You can apply this same kind of process to overriding any other lists, captures, or actions. Just make the context matcher 'more specific' than the thing you're overriding. 



from talon import Context, app


ctx = Context()
ctx.matches = r"""
os: mac
"""

##### ALPHABET #####

# default_alphabet = "arch bat cap drum each fine gust harp sit jury crunch look made near odd pit quench red sun trap urge vest whale plex yank zip".split(
#     " "
# )
default_alphabet = "air bat cap drum each fine gust harp sit jury crunch look made near toy pit quench red sun trap urge vest whale plex yank fizz".split(
    " "
)
uppercase_alphabet = "ash baker chain dog egg fox gig horse ice jake king lash mule net oak page quail raft scout tide usurp vessel wicker xray yacht zoo".split(
    " "
)
default_alphabet = default_alphabet + uppercase_alphabet
letters_string = "abcdefghijklmnopqrstuvwxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
alphabet = dict(zip(default_alphabet, letters_string))
ctx.lists["self.letter"] = alphabet


##### PUNCTUATION AND SYMBOLS #####

modifier_keys = {
    # If you find 'alt' is often misrecognized, try using 'alter'.
    "alt": "alt",  #'alter': 'alt',
    "control": "ctrl",  
    'troll':   'ctrl', # ADDED THIS
    "shift": "shift",  #'sky':     'shift',
    "super": "super",
}
if app.platform  == "mac":
    modifier_keys["command"] = "cmd"
    modifier_keys["option"] = "alt"
ctx.lists["self.modifier_key"] = modifier_keys

# `punctuation_words` is for words you want available BOTH in dictation and as key names in command mode.
# `symbol_key_words` is for key names that should be available in command mode, but NOT during dictation.
punctuation_words = {
    # TODO: I'm not sure why we need these, I think it has something to do with
    # Dragon. Possibly it has been fixed by later improvements to talon? -rntz
    "`": "`",
    ",": ",",  # <== these things
    "back tick": "`",
    # "grave": "`",
    "comma": ",",
    "period": ".",
    # "full stop": ".",
    "semicolon": ";",
    "colon": ":",
    "forward slash": "/",
    "slash": "/", # ADDED THIS
    "question mark": "?",
    "exclamation mark": "!",
    "exclamation point": "!",
    "asterisk": "*",
    "hash sign": "#",
    "number sign": "#",
    "percent sign": "%",
    "at sign": "@",
    "and sign": "&",
    "ampersand": "&",

    # Currencies
    "dollar sign": "$",
    # "pound sign": "£",
}
symbol_key_words = {
    "dot": ".",
    "point": ".",
    # "quote": "'",
    "apostrophe": "'",
    "prime": "'", # ADDED THIS
    "L square": "[",
    "left square": "[",
    "square": "[",
    "R square": "]",
    "right square": "]",
    "L bracket": "[", # ADDED THIS
    "left bracket": "[", # ADDED THIS
    "bracket": "[", # ADDED THIS
    "R bracket": "]", # ADDED THIS
    "right bracket": "]", # ADDED THIS
    "slash": "/",
    "backslash": "\\",
    "leader": "\\", # ADDED THIS
    "minus": "-",
    "dash": "-",
    "equals": "=",
    "plus": "+",
    "tilde": "~",
    "bang": "!",
    "down score": "_",
    "under score": "_",
    "crunder": "_", # ADDED THIS
    "paren": "(",
    "L paren": "(",
    "left paren": "(",
    "R paren": ")",
    "right paren": ")",
    "brace": "{",
    "left brace": "{",
    "R brace": "}",
    "right brace": "}",
    "angle": "<",
    "left angle": "<",
    "less than": "<",
    "rangle": ">",
    "R angle": ">",
    "right angle": ">",
    "greater than": ">",
    "star": "*",
    "hash": "#",
    "pound": "#", # ADDED THIS
    "percent": "%",
    "caret": "^",
    "amper": "&",
    "pipe": "|",
    "dubquote": '"',
    "double quote": '"',
    "quote": '"', # ADDED THIS

    # Currencies
    "dollar": "$",
    "dolly": "$", # ADDED THIS
    # "pound": "£",
}

# make punctuation words also included in {user.symbol_keys}
symbol_key_words.update(punctuation_words)
ctx.lists["self.punctuation"] = punctuation_words
ctx.lists["self.symbol_key"] = symbol_key_words


##### SPECIAL KEYS #####

simple_keys = [
    "end",
    "enter",
    "escape",
    "home",
    "insert",
    "pagedown",
    "pageup",
    "space",
    "tab",
    'backspace', # ADDED THIS
]

alternate_keys = {
    # "delete": "backspace",
    "forward delete": "delete",
    'junk': 'backspace', # ADDED THIS
    "page up": "pageup",
    "page down": "pagedown",
    'randall': 'escape', # ADDED THIS
    'tarp': 'tab', # ADDED THIS
    'shock': 'enter', # ADDED THIS
}

special_keys = {k: k for k in simple_keys}
special_keys.update(alternate_keys)
ctx.lists["self.special_key"] = special_keys