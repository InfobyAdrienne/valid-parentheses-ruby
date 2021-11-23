require 'valid_parentheses'

describe 'what a valid parentheses looks like' do 

  it 'should return false if the parentheses does not close' do 
    expect(valid_parentheses("  (")).to eq false 
  end 

  it 'should return false if the parentheses does not close' do 
    expect(valid_parentheses(")test")).to eq false
  end 

  it 'should return true if there are no corrections to be made' do 
    expect(valid_parentheses("")).to eq true 
  end

  it 'should return false if the parentheses are in the wrong place' do 
    expect(valid_parentheses("hi())(")).to eq false
  end

  it 'should return true for open and close brackets with words inbetween' do 
    expect(valid_parentheses("()()")).to eq true 
  end 
end 