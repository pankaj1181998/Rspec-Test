require 'spec_helper'
require_relative '../program/Friends_100km.rb'
require_relative '../helpers/Friends_100km_helpers.rb'



  RSpec.describe Friends_100km do 
      it "expects distance within 100Km" do 
        filename = "Friends1.json"
        test_resource_directory = "../resources/Friends_100km/input/" + filename

        object = Friends_100km.new( test_resource_directory )
        actual_result = object.distance_calculation
        get_output("output1.txt" , actual_result)
        expect(actual_result != nil).to be_truthy
        
      end

  end

  