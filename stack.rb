
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





