# Small Problems > Medium 1 > 1000 Lights

def light_switches(switches)
  on = []
  off = []
  all_switches = (1..switches).to_a
  
  1.upto(switches) do |i|
    all_switches.each do |switch|
      if switch % i == 0 && on.include?(switch) == false
        on << switch
        off.delete(switch)
      elsif switch % i == 0 && on.include?(switch)
        off << switch
        on.delete(switch)
      end
    end
  end
  on
end

# refactored above after seeing the one below

def light_switches(switches)
  on = []
  1.upto(switches) do |i|
    (1..switches).each do |switch|
      next unless switch % i == 0
      on.include?(switch) ? on.delete(switch) : on << switch
    end
  end
  on
end

# refactored above even further

def light_switches(switches)
  1.upto(switches).with_object([]) do |i, on|
    (1..switches).each do |switch|
      next unless switch % i == 0
      on.include?(switch) ? on.delete(switch) : on << switch
    end
  end
end

# or from another student and then slightly refactored

def light_switches(switches)
  (1..switches).each_with_object([]) do |round, on|
    (1..switches).each do |switch|
      next unless switch % round == 0
      on.include?(switch) ? on.delete(switch) : on << switch
    end
  end
end


p light_switches(2) == [1]
p light_switches(5) == [1, 4]
p light_switches(10) == [1, 4, 9]
p light_switches(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]


