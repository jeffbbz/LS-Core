# Small Problems > Medium 2 > Matching Parentheses?

def balanced?(string)
  chars = string.delete("^()").chars
  return false if chars.size.odd?
  balanced = true
  loop do
    break if chars.empty? || balanced == false
    if chars[0] == "("
      chars.delete_at(0)
      chars.delete_at(chars.index(")"))
    else
      balanced = false
    end
  end
  balanced
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
