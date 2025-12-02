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

# ⊂30⊂250⊂400⊂250˜⊂100˜⊂150↙ 25
# ⊂30⊂0⊂¯99⊂0⊂¯98⊂¯100˜⊂150↙ 25↘25
⊂50⊂100⊂200⊂¯100⊂¯300⊂¯350⊂¯400⊂¯350⊂¯300⊂300⊂¯300⊂0⊂95⊂0↙12
⊂¯100⊂300⊂¯500⊂300⊂¯100⊂50⊂¯50
⟜(
  ⊂50 # needed to count first int
  ⌊÷100
  ⌵(-⊃(↘1|↘¯1))
  # Now we're at 6357 (answer: 6289)
  # /+
)

≡⊟

( # false if dial <= 0 => count += (dial / DIAL_MAX).abs() + 1,
 # _ => count += (dial / DIAL_MAX).abs(),
 # ⊂50                     # needed to count first int
 # ⊃(=¯1(±-⊃(↘1|↘¯1))⌊÷100 # true if turned negatively past 0
 #  | ↘¯1⌈÷100◿100         # true if dial *was* *not* at 0
 #  )
 # ↧

 #  ⊃(↘1>0⌵◿100|±-⊃(↘1|↘¯1)
 #   ) # true if mod 100 value = 0

 #  #     ↘1=⊃(×⊙⌈°×÷100|×⊙⌊°×÷100) # true 100n except 0 as 1
 #  #   | ↥0(-⊃(↘1|↘¯1)×⊙⌈°×÷100)   # true if (200,300] -> (100,200]
 #  #   )
 # /+
 #  ⟜&p
)
# +

# ≡⊟≡⊟≡⊟
