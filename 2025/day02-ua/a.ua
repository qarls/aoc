# uiua 0.17.3

# true if "string" repeats itself
C ← ≍⟜(˙⊂↘⌊÷2⊸△)           # true if string half is duplicated in itself
R ← ▽⍜⇌\↥≠@\n.             # removes trailing newline
P ← +⊃(⇡+1⋅∘|∘)⟜-∩⋕°$"_-_" # parses "21-321" to an 1-rank array of start to end, keeping in mind exclusive range

&fras"input" # input
# &fras"sample.txt"
⊜□⊸≠@,R     # parses lines to rows
°□/⍚⊂⍚P     # parses it into an array of 1 rank [11 12 ... 22 | 95 ...]
▽°□/⍚⊂⊸⍚C°⋕ # keeps relevant values i.e. ["11" | "22" ...]
°□/⍚⊂⍚⋕     # unboxes and parses themthem into [11 | 22 ..]
/+
