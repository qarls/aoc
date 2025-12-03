# uiua 0.18.0-dev.3

# 02b
R ← ▽⍜⇌\↥≠@\n⟜∘            # removes trailing newline
P ← +⊃(⇡+1⋅∘|∘)⟜-∩⋕°$"_-_" # parses "21-321" to an 1-rank array of start to end, keeping in mind exclusive range

# forms the expected match if invalid
IsInvalid ← (=1⊢△◴↯⤚(⊂⊸(⊢˜÷)△)⊥10)
# Gives us lengths to check through
Lengths ← |1 ▽⊸(=0◿1˜÷)⟜(+1⇡⌊÷2)⊢△⊥10
# true if duplicated on itself
Solve ← ↥0↧1/↥≡(IsInvalid)⟜(Lengths)

&fras"input" # input
⊜□⊸≠@,R      # parses lines to rows
°□/⍚⊂⍚P      # parses it into an array of 1 rank unboxed
▽⊸≡Solve
/+

# In the middle of this, I realized it might've
# been much much faster to use the dedup function
#
# Native went from 50s to 26s
