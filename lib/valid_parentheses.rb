def valid_parentheses(string)
  pairs = { '(' => ')' }

  string.chars.each_with_object([]) do |bracket, stack|
    if pairs.keys.include?(bracket)
      stack << bracket
    elsif pairs.values.include?(bracket)
      return false unless pairs[stack.pop] == bracket
    else
      return false
    end
  end
    true
  
  # if string.empty?
  #   true 
  # elsif string.include? 
  #   true 
  # else false
  # end 
end