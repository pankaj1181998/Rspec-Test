require 'spec_helper'
require_relative '../program/Find_three_numbers.rb'
require_relative '../helpers/Find_three_numbers_helper.rb'

def process_result( arr1 , arr2)
  sum1 = 0
  sum2 = 0
  p arr1 
  arr1.each do |val|
    sum1 = sum1 + val
  end

  arr2.each do |val|
   sum2 = sum2 + val
  end

  return true if sum1.eql?sum2 
  return false
end
    RSpec.describe Find_three_numbers do 
      it "expects_result_as_three_numbers" do 
        val1 , val2 = Find_three_numbers_helper.parse_input("input1.txt")       # val1 - array , val2 - expected_sum 
        object = Find_three_numbers.new( val1,val2 )
        actual_result = object.execute_proposed_algorithm
        expected_output = Find_three_numbers_helper.parse_output("output1.txt")
        expect(process_result(actual_result , expected_output)).to be_truthy
      end
   end

   RSpec.describe Find_three_numbers do 
      it "expects_result_as_three_numbers" do 
        val1 , val2 = Find_three_numbers_helper.parse_input("input2.txt")       # val1 - array , val2 - expected_sum 
        object = Find_three_numbers.new( val1,val2 )
        actual_result = object.execute_proposed_algorithm
        expected_output = Find_three_numbers_helper.parse_output("output2.txt")
        expect(process_result(actual_result , expected_output)).to be_truthy
      end
   end