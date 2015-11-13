require_relative 'stack'

class BracketMatcher
  def initialize(brackets)
    @brackets = brackets
  end

  def valid?
    bracket_list = Stack.new
    bracket_array = @brackets.split('')
    bracket_array.each do |b|
      if b == "(" || b == "[" || b == "{"
        bracket_list.push(b)
      elsif (b == ")" && bracket_list.peek == "(") ||
            (b == "]" && bracket_list.peek == "[") ||
            (b == "}" && bracket_list.peek == "{")
        bracket_list.pop
      else
        return false
      end
    end
    true
  end
end
