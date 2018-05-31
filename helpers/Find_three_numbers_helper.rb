class Find_three_numbers_helper


	def self.parse_input(filename)
	  fileName = filename
	  expected_sum = 0
      test_resource_directory = File.join(File.dirname(__FILE__), '../resources/find_three_numbers/input/') + fileName
      tmp_arr = [ ]
      File.open(test_resource_directory) do |file|
    	current_line = 0

    	file.each_line do |line|
      	  if current_line == 0
      	  	expected_sum = line.to_i
      	  else
      	  	tmp_arr = line.split(" ")
      	   end
    	current_line += 1
      	end
      end
      tmp_arr.each do |val|
       val.to_i
      end
      return tmp_arr , expected_sum
   	end


   	def self.parse_output(filename)

      fileName = filename
	  expected_sum = 0
      test_resource_directory = File.join(File.dirname(__FILE__), '../resources/find_three_numbers/output/') + fileName
      tmp_arr = [ ]
      File.open(test_resource_directory) do |file|
    	current_line = 0
	   	file.each_line do |line|
      	  if current_line == 0
      	  	tmp_arr =  line.split(' ')
      	  else
      	  	break
      	  end
      	end
      end
      return tmp_arr

	end


end