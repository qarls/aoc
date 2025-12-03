# uiua 0.18.0-dev.3 (git)

# true if "string" repeats itself
C ← ≍⟜(˙⊂↘⌊÷2⊸△)           # true if string half is duplicated in itself
R ← ▽⍜⇌\↥≠@\n.             # removes trailing newline
P ← +⊃(⇡+1⋅∘|∘)⟜-∩⋕°$"_-_" # parses "21-321" to an 1-rank array of start to end, keeping in mind exclusive range

# 02b helpers
L ← △⊥10               # number of digits in a number
M ← /+×˜ⁿ10⇡⊢⊸(△)˜↙⊥10 # M subpattern of N

&fras"input" # input
# &fras"sample.txt"
⊜□⊸≠@,R     # parses lines to rows
°□/⍚⊂⍚P     # parses it into an array of 1 rank [11 12 ... 22 | 95 ...]
▽°□/⍚⊂⊸⍚C°⋕ # keeps relevant values i.e. ["11" | "22" ...]
°□/⍚⊂⍚⋕     # unboxes and parses themthem into [11 | 22 ..]
/+

# Planning 02b solution
# https://en.wikipedia.org/wiki/Radix
# let n be our number
# let r be our repeating digits
# let L be the length of n
# let l be the length of r
# let m be L/l
#
# take n = 2121212121
# n = 21 * (1 + 10**2 + 10**4 +10**6 + 10**8)
# n = 21 * (10**0 + 10**2 + 10**4 + 10**6 + 10**8)
# n = r(Σ^{i=0}_{m-l} 10**{(m-1)*l})
#
# alternatively we can represent it as
# 21 = 2121212121 / (10**0 + 10**2 + 10**4 + 10**8)
# r = n / (Σ^{i=0}_{m-l}(10**{(m-1)*l})
# onshape
#
# in UIUA, we could write RHS maybe like:
# 2121212121 and n=3 (to be erroneous)
#
#
