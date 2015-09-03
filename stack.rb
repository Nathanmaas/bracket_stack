
# pseudocode
# loop through characters of string
#    If(this character is an opening brace)
#       push onto stack
#    if(this character is a closing brace)
#       pop from stack. If it isn't the matching brace, return false


def test_brackets(string)
  stack = []
  string.each_char do |char|
    case char
    when '{','[','('
      stack.push(char)
    when '}'
      s = stack.pop
      return false if s != '{'
    when ']'
      s = stack.pop
      return false if s != '['
    when ')'
      s = stack.pop
      return false if s != '('
    end
  end
  stack.empty?
end
# puts
# test_brackets('abc(123)');
puts test_brackets('abc(123');
puts test_brackets('a[bc(12]3)');

# another way
# def test_brackets str
#   brackets = {
#     '{' => '}',
#     '[' => ']',
#     '(' => ')'
#   }
#   stack = []

#   # good: " abc(d[ef]g)"
#   # bad: " abc(d[ef)g]"
#   str.each_char do |char|
#     if brackets.has_key? char
#       stack.push brackets[char]
#     elsif brackets.has_value? char
#       expected_bracket = stack.pop
#       return false unless expected_bracket == char
#     end
#   end

#   return stack.length == 0
# end

# running = true
# while running
#   print "Enter a string to check brackets: "
#   input = gets.chomp
#   break if input.empty?
#   p test_brackets input
# end




