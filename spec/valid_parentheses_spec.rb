require 'valid_parentheses'

describe 'what a valid parentheses looks like' do 

  it 'should return false if the parentheses does not close' do 
    expect(valid_parentheses("  (")).to eq false 
  end 

  it 'should return false if the parentheses does not close' do 
    expect(valid_parentheses(")test")).to eq false
  end 

  it 'should return true if the string is empty' do 
    expect(valid_parentheses("")).to eq true 
  end

  it 'should return true if the string is empty but has white spaces' do 
    expect(valid_parentheses("   ")).to eq true 
  end

  it 'should return false if one of the pair parentheses are in the wrong place or missing' do 
    expect(valid_parentheses("hi())(")).to eq false
  end

  it 'should return true for parentheses that open and close in order' do 
    expect(valid_parentheses("()()")).to eq true 
  end 

  it 'should return true for open and close brackets in order with words inbetween' do 
    expect(valid_parentheses("hi(hi)()")).to eq true 
  end 


end 