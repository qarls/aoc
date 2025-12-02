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
⍜(⊡0|+50)    # adds initial 50
\+           # reduce (intermediate) to current dials unmod'ed

# ⊂50⊂¯200⍜(⊏8|×0)↙25↘20 ## [50 ¯200 123 143 132 85 49 5 ¯1 33 ¯0 ¯51 ¯96 ¯103 ¯144 ¯122 ¯152 ¯108 ¯78 ¯93 ¯115 ¯72 ¯24 ¯41 ¯63 ¯28 ¯70]

# ⊂0˜⊂100˜⊂150↙ 25
⊸(
  ⊂50       # needed to count first int
  ×⊙⌈°×÷100 # euclidian division
  ⌵(-⊃(↘1|↘¯1))
  # Now we're at 6386 (answer: 6289)
  # We're over due to counting counts i.e. from (actual, expected)
  # [-299,-201] going to -200 (+1,+0)
  # [101,199] going to 100.   (-1,+0)
  # 100 going to [101,199].   (+1,+0)
  # 200 going to [101,199].   (+0,+0)
  # 100 going to [001,099].   (+0,+0)
  /+
)

⊙(
  ⊂50 # needed to count first int
  ↧⊃(
    ↘1=⊃(×⊙⌈°×÷100|×⊙⌊°×÷100) # true 100n except 0 as 1
  | ↧1↥0(-⊃(↘1|↘¯1)×⊙⌈°×÷100) # true if [200,300) -> [100,200)
  )
  /+
)

˜-

# # adds every time it touches 0 from 1..100
# ⊸dip(⊂50
#   ≡⊟(⊃(⌈|⌊)÷100) # [1_0] = 1..100, [0_0] = 0
#   -⊃(↘1|↘¯1)     # [-1 0] are our occurrences of count
#   /+⊢⍉⌕¯1_0)

# +
