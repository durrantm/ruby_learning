require 'rspec'
require_relative 'answer_with_answers'

def fail_fast_for_step_by_step_learning_style
  RSpec.configure {|c| c.fail_fast = true}
end

fail_fast_for_step_by_step_learning_style

describe "Ruby education" do

  include Answer

  it "Example_A1 - The number 5" do
    expect(answer_A1).to eq 5
  end

  it "Example_A2 - The number 5.1" do
    expect(answer_A2).to eq 5.1
  end

  it "Example_A3 - The string 'john'" do
    expect(answer_A3).to eq 'john'
  end

  it "Example_A4 - The string '1.2'" do
    expect(answer_A4).to eq '1.2'
  end

  it "Example_A5 - The string 'this has ended with a carriage return'" do
    expect(answer_A5).to eq "this\nhas ended"
  end

  it "Example_A6 - An array containing the words 'john' and 'bill'" do
    expect(answer_A6).to eq ['john','bill']
  end

  it "Example_A7 - An array containing the state codes 'MA', 'CT', 'NJ', 'NY', 'DE', 'IN', 'UT', 'TX']" do
    expect(answer_A7).to eq %w(MA CT NJ NY DE IN UT TX)
  end

  it "Example_A8 - The symbol :john" do
    expect(answer_A8).to eq (:john)
  end

  it "Example_A9 - A hash using the key-value pair :john and 10" do
    expect(answer_A9).to eq ({john: 10})
  end

  it "Example_A10 - A hash using the 2 key-value pairs :john and 10, :mary and 12" do
    expect(answer_A10).to eq ({john: 10, mary: 12})
  end

  it "Example_B1 - if all elements are MA, return true" do
    array = %w(MA MA MA)
    result = answer_B1(array) # if all elements are 'MA'
    expect(result).to be true
  end

  it "Example_B2 - if all elements are true for <block of code>, return true" do
    array = ['MA 02140', 'MA 02142']
    result = answer_B2(array) # if all elements start with MA
    expect(result).to be true
  end

  it "Example_B3 - if any element meets condition, return true" do
    array = [1,2,3,9,10]
    result = answer_B3(array) # if 9 is any of the elements
    expect(result).to be true
  end

  it "Example_B4 - if any element is equal to Jane or Fred or Frank, return true" do
    array = %w(Mary Bob Fred Joe Jane Mark Marc)
    result = answer_B4(array) # if Jane or Fred or Frank is any of the elements
    expect(result).to be true
  end

  it "Example_B5 - How many elements meets condition?" do
    array = [1,2,3,9,10,12]
    result = answer_B5(array) # How many elements exist in the array
    expect(result).to eq 6
  end

  it "Example_B6 - repeat the existing members, i.e. 1,2,3 becomes 1,2,3,1,2,3" do
    array = [1,2,3]
    result = answer_B6(array) # The result we expect from the operation
    expect(result).to eq [1,2,3,1,2,3]
  end

  it "Example_B7 - remove the first 2 elements and return rest of array" do
    array = [1,2,3,9,10]
    result = answer_B7(array) # The result we expect from the operation
    expect(result).to eq [3,9,10]
  end

  it "Example_B8 - if any element meets condition, return true" do
    array = [1,2,3,9,10]
    result = answer_B8(array) # The result we expect from the operation
    expect(result).to eq [9,10]
  end

  it "Example_B9 - Use index" do
    array = %w(cats dogs)
    result = answer_B9(array) # The result we expect from the operation
    expect(result).to eq ['cats1', 'dogs2']
  end

  it "Example_B10 - return the first element that matches a condition '<5' " do
    array = [1,2,3,9,10]
    result = answer_B10(array) # The result we expect from the operation
    expect(result).to eq 9
  end

  it "Example_B11 - return all the elements that match a condition (length=3) " do
    array = ['cat', 'dog', 'hens', 'dogs']
    result = answer_B11(array) # The result we expect from the operation
    expect(result).to eq ['cat','dog']
  end

  it "Example_B12 - return all the elements that match a condition (MA, NY, PA or NY) " do
    array = %w(MA NY NV CT CA PA NJ)
    result = answer_B12(array) # The result we expect from the operation
    expect(result).to eq %w(MA NY NJ)
  end

  it "Example_B13 - return all the elements that match a condition (divisible by 3) " do
    array = [1,2,3,9,10,12,15,16]
    result = answer_B13(array) # The result we expect from the operation
    expect(result).to eq [3,9,12,15]
  end

  it "Example_B14 - the first element" do
    array = [1,2,3,9,10]
    result = answer_B14(array) # The result we expect from the operation
    expect(result).to eq 1
  end

  it "Example_B15 - if any element matches text pattern, return true" do
    array = %w(MA NY CA NV FL NJ)
    result = answer_B15(array) # The result we expect from the operation
    expect(result).to eq ['MA', 'CA']
  end

  it "Example_B16 - if the element exists anywhere in the array, return true" do
    array = [1,2,3,9,10]
    result = answer_B16(array) # The result we expect from the operation
    expect(result).to be true
  end

  it "Example_B17 - Add up all the numbers, return total" do
    array = [77,2,3,9,10]
    result = answer_B17(array) # The result we expect from the operation
    expect(result).to eq 101
  end

  it "Example_B18 - Add up all the numbers (squared first) and return total" do
    array = [7,2,3,4]
    result = answer_B18(array) # The result we expect from the operation
    expect(result).to eq 78
  end

  it "Example_B19 - array with each number doubled" do
    array = [1,2,3,9,10]
    result = answer_B19(array) # The result we expect from the operation
    expect(result).to eq [2,4,6,18,20]
  end

  it "Example_B20 - array with true/false for whether each number equals 617" do
    array = [617, 508, 413]
    result = answer_B20(array) # The result we expect from the operation
    expect(result).to eq [true, false, false]
  end

  it "Example_B21 - the biggest" do
    array = [1,2,3,9,10,6]
    result = answer_B21(array) # The result we expect from the operation
    expect(result).to eq 10
  end

  it "Example_B22 - the biggest based on the condition that it is divisible by 3" do
    array = %w(this is an array of longish words)
    result = answer_B22(array) # The result we expect from the operation
    expect(result).to eq 'longish'
  end

  it "Example_B23 - the smallest" do
    array = [3,2,1,9,10]
    result = answer_B23(array) # The result we expect from the operation
    expect(result).to eq 1
  end

  it "Example_B24 - the minimum and maxium elements of an array" do
    array = [1,2,3,9,10,5]
    result = answer_B24(array) # The result we expect from the operation
    expect(result).to eq [1,10]
  end

  it "Example_B25 - if no element matches condition that it equals 799, return true" do
    array = [617,508,413]
    result = answer_B25(array) # The result we expect from the operation
    expect(result).to be true
  end

  it "Example_B26 - if *exactly* one element meets condition (= 199), return true" do
    array = [1,2,3,109,199,10]
    result = answer_B26(array) # The result we expect from the operation
    expect(result).to be true
  end

  it "Example_B27 - sum of elements" do
    array = [1,2,3,9,10]
    result = answer_B27(array) # The result we expect from the operation
    expect(result).to eq 25
  end

  it "Example_B28 - sum of elements squared" do
    array = [1,2,3,9,10]
    result = answer_B28(array) # The result we expect from the operation
    expect(result).to eq 195
  end

  it "Example_B29 - choose those elements that are divisible by 3" do
    array = [1,2,3,9,10,12,15]
    result = answer_B29(array) # The result we expect from the operation
    expect(result).to eq [3,9,12,15]
  end

  it "Example_B30 - elements in order" do
    array = [1,2,3,-4,9,10]
    result = answer_B30(array) # The result we expect from the operation
    expect(result).to eq [-4,1,2,3,9,10]
  end

  it "Example_B31 - elements in order by string length" do
    array = %w(some words are certainly longer)
    result = answer_B31(array) # The result we expect from the operation
    expect(result).to eq %w(are some words longer certainly)
  end

  it "Example_B32 - a School exiss" do
    result = answer_B32 # The result we expect from the operation
    expect(result.is_a?(School)).to be
  end

  it "Example_B33 - a School named 'mit' has a state of 'MA'" do
    result = answer_B33 # The result we expect from the operation
    expect(School.new('mit').state).to eq 'MA'
  end

  it "Example_B34 - The concept of a student exist" do
    result = answer_B34 # The result we expect from the operation
    expect(Student).to be
  end

  it "Example_B35 - a school has a state of MA" do
    result = answer_B35 # The result we expect from the operation
    expect(result).to eq 'MA'
  end

  it "Example_B36 - two states exist for a school" do
    result = answer_B36 # The result we expect from the operation
    expect(result).to eq ['MA','NY']
  end

  it "Example_B37 - 2 students exist for a school" do
    result = answer_B37 # The result we expect from the operation
    expect(result).to eq 2
  end

  it "Example_B38 - show the schools (mit and harvard) that fred is going to" do
    result = answer_B38 # The result we expect from the operation
   expect(result).to eq 'MIT, HARVARD'
  end
end

