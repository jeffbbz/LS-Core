# RB101 Lesson 3: Practice Problems - Medium 1.9

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

# Will return "no" because "no" ? "yes" : "no" is "yes" but the local param variable is assigned
# to "no"