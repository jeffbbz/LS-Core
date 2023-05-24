def url?(text)
  text.match?(/\Ahttps?:\/\/\S+\.\S+\z/)
end

p url?('http://launchschool.com')   # => true
p url?('https://example.com')       # => true
p url?('https://example.com hello') # => false
p url?('   https://example.com')    # => false