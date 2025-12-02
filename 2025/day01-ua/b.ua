# uiua 0.17.3

# 01b
Parse ← ⍣(
  ⋕°$"R_"
| ¯⋕°$"L_"
| ⍤ "No match found"0
)

&fras"input" # input
⊜□⊸≠@\n      # parses lines to rows
°□/⍚⊂⍚Parse  # parses rows of L55 to -55 unboxed
\+⍜(⊡0|+50)  # adds initial 50

# this gives us the next dial position relative
# to the previous one
(+⊃(⌵↘¯1◿100⊂50|(-⊃(⊂50↘¯1|∘))))

# the actual count
+⊃(
  ⌊⌵÷100 # gives us the main bulk of rotations
| ×⊃(
    (⌈÷100◿100⊂50↘¯1) # checks values come from initial non-zero
  | ≤0                # checks for negative value
  )
)

/+
