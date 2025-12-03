# uiua 0.18.0-dev.3 (git)

# 02b
# Helper functions that determine if number is valid
# takes input n number i.e. 2121212121 and 2 number
Pattern ← |2 (˜↙⊥10) # subpattern as digit array
Expected ← |2 ⌝⊥10°□/⍚⊂▽⊃(
  ⊢˜÷△⊥10 # length of number / pattern
| □Pattern)
IsInvalid ← |2 =⟜Expected # forms the expected match if invalid

# Gives us lengths to check through
Lengths ← |1 ▽⊸(=0◿1˜÷)⟜(↘1⇡+1⌊÷2)⊢△⊥10

Solve ← /↥(˜≡IsInvalid⊸(Lengths)) # true if string half is duplicated in itself
R     ← ▽⍜⇌\↥≠@\n⟜∘               # removes trailing newline
P     ← +⊃(⇡+1⋅∘|∘)⟜-∩⋕°$"_-_"    # parses "21-321" to an 1-rank array of start to end, keeping in mind exclusive range

# &fras"input" # input
&fras"sample.txt"
⊜□⊸≠@,R # parses lines to rows
°□/⍚⊂⍚P # parses it into an array of 1 rank [11 12 ... 22 95 ...]
▽⊸≡Solve
/+
