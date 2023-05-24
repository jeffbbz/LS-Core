class Diamond
  LINE_LENGTH = ('A'..'Z').each_with_object({}).with_index do |(char, h), idx|
    h[char] = (1..51).select(&:odd?)[idx]
  end

  def self.make_diamond(middle_char)
    @@length = LINE_LENGTH[middle_char]
    letter_list = ('A'..middle_char)
    reverse_list = letter_list.to_a.reverse.delete_if { |c| c == middle_char }

    top = make_triangle(letter_list)
    bottom = make_triangle(reverse_list)

    (top + bottom).join
  end

  class << self
    private

    def make_triangle(letter_list)
      letter_list.map do |char|
        if char == 'A'
          a_line + "\n"
        else
          side_spacing(char) + char + center_spacing(char) +
            char + side_spacing(char) + "\n"
        end
      end
    end

    def a_line
      space_length = (@@length - 1) / 2
      (" " * space_length) + 'A' + (" " * space_length)
    end

    def side_spacing(char)
      " " * ((@@length - 2 - (LINE_LENGTH[char] - 2)) / 2)
    end

    def center_spacing(char)
      " " * (LINE_LENGTH[char] - 2)
    end
  end
end
