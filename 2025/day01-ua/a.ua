# uiua 0.17.3

# 01a
Parse ← ⍣(
  ⋕°$"R_"
| ¯⋕°$"L_"
| ⍤ "No match found"0
)

&fras"input" # input
⊜□⊸≠@\n      # parses lines to rows
°□/⍚⊂⍚Parse  # parses rows of L55 to -55 unboxed
⍜(⊡0|+50)    # adds initial 50
◿100\+       # reduce (intermediate) then mod 100 all
/+= 0        # adds all equivalents to 0
