# uiua 0.18.0-dev.3

# 02a

# true if "string" repeats itself
C ← ≍⟜(˙⊂↘⌊÷2⊸△)           # true if string half is duplicated in itself
R ← ▽⍜⇌\↥≠@\n⟜∘            # removes trailing newline
P ← +⊃(⇡+1⋅∘|∘)⟜-∩⋕°$"_-_" # parses "21-321" to an 1-rank array of start to end, keeping in mind exclusive range

&fras"input" # input
⊜□⊸≠@,R      # parses lines to rows
°□/⍚⊂⍚P      # parses it into an array of 1 rank unboxed
▽°□/⍚⊂⊸⍚C°⋕  # keeps relevant values i.e. ["11" | "22" ...]
°□/⍚⊂⍚⋕      # unboxes and parses them into [11 22 ..]
/+
