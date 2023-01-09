# Small Problems > Easy 9 > Name Swapping

def swap_name(name)
  name = name.split
  "#{name[1]}, #{name[0]}"
end

def swap_name(name)
  "#{name.split[1]}, #{name.split[0]}"
end

def swap_name(name)
  "#{name.split.last}, #{name.split.first}"
end

def swap_name(name)
  name.split[1] + ', ' + name.split[0]
end

def swap_name(name)
  name.split.reverse.join(", ")
end


p swap_name('Joe Roberts') #== 'Roberts, Joe'