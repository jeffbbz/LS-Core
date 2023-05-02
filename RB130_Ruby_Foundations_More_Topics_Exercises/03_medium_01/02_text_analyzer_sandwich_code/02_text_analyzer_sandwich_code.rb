class TextAnalyzer
  def process
    sample_text_file = File.open('sample_text.txt', 'r')
    yield(sample_text_file)
    sample_text_file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.read.split("\n\n").size} paragraphs" }
analyzer.process { |file| puts "#{file.read.split("\n").size} lines" }
analyzer.process { |file| puts "#{file.read.split.size} words" }

# refactor after LS example

class TextAnalyzer
  def process
    sample_text_file = File.open('sample_text.txt', 'r')
    yield(sample_text_file.read)
    sample_text_file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").size} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").size} lines" }
analyzer.process { |text| puts "#{text.split.size} words" }

# Following another students Readlines example

class TextAnalyzer
  def process
    sample_text_file = File.open('sample_text.txt', 'r')
    yield(sample_text_file)
    sample_text_file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.readlines('').size} paragraphs" }
analyzer.process { |file| puts "#{file.readlines.size} lines" }
analyzer.process { |file| puts "#{file.readlines.flat_map(&:split).size} words" }