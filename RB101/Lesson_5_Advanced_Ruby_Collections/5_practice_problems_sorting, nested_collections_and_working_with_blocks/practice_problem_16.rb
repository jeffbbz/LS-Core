def create_uuid
  num = rand(3.4 * 10**38)
  num.to_s(16).insert(8, "-").insert(13, "-").insert(18, "-").insert(23, "-")
end

p create_uuid

# or 

def create_uuid2
  characters = []
  (0..9).each { |digit| characters << digit.to_s}
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index  do |section, index|
    section.times {uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

p create_uuid2

#but actually you should use this:

require 'securerandom'

p SecureRandom.uuid