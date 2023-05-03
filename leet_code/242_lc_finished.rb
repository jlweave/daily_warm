s = "anagram", t = "nagaram"
def is_anagram(s, t)
    s.bytes.sort == t.bytes.sort
end

p is_anagram(s, t)