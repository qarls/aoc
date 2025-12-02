# uiua 0.17.3

# 01a
Parse ← ⍣(
  ⋕°$"R_"
| ¯⋕°$"L_"
| ⍤ "No match found"0
)
&fras"input"
# "R23\nL5\nR72" # test input
⊜□⊸≠@\n     # parses lines to rows
°□/⍚⊂⍚Parse # parses rows of L55 to -55 unboxed
50          # initialize start of dial
### [4424 ℝ: ¯997-997 μ¯3.7186]
### 50
# bad attempts
# ⍢⊂⍥(+1)0 ⟜△ # make an array of [50..d]
# ⊃(⋅⋅⋅∘|⊙⊙∘)(⊸⊙⊙△⊃(<⊙⋅∘⊸△(⊸⊙△)|(∘))) # This should stop when equal to n+1
# good attempt? with help
˜⍜(⊡0|+) # adds initial 50
### [4424 ℝ: ¯997-997 μ¯3.7073]
◿100\+ # reduce (intermediate) then mod 100 all
### [4424 ℝ: 0-99 μ37.8189]
/+= 0 # adds all equivalents to 0
