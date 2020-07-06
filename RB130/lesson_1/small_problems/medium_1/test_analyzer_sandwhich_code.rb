class TextAnalyzer
  def process
    # your implementation
  end
end

# analyzer = TextAnalyzer.new
# analyzer.proces { # your implementation}
# analyzer.process { # your implementation }
# analyzer.process { # your implementation }

file = File.read('sample_text.txt')

file.each_line do |line|
  puts line  + "1"
end
