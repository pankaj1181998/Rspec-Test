class Friends_100km_helper

	def self.parse_output(fileName)
	    test_resource_directory = File.join(File.dirname(__FILE__), '../resources/Friends_100km/output/')+ fileName  

	    file = File.open(test_resource_directory , "w")                     #OPENING FILE IN READ MODE
	    file.write(actual_result)
	  end

	end

end