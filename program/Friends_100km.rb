  # DESCRIPTION OF THE CLASS 
  # Class - CONTAINS initialize constructor
  #       - Method distance_calculation which calculates distance from the given co-ordinates and store in "result"
  #       - Method deg2rad & rad2deg to interconvert degree & radians.
  #       - Method print_output to print the stored output in sorted order.
  # Program Takes Input from the file "friends.json" and parse it and passed to class methods.

  #-----------------------------------STARTING OF CLASS ----------------------------------------------------#

	require 'json'
 	class Friends_100km 

	  def initialize (test_resource_directory)			# CONSTRUCTOR
	    
	    file = File.open(test_resource_directory, "r")           # OPENING FILE IN READ MODE
	    data = file.read
  		
  		@arr = JSON.parse(data)
	    @lat1 = 12.9611159
	    @lon1 = 77.6362214
	    @lat2 = 12.9611159
	    @lon2 = 77.6362214
	    @empty_counter = 0
	    @result = Array.new
	  end

	  

	  def distance_calculation
	  	@arr.each do |val|

	  	  @long2 = val["longitude"].to_f						# MATHS PROCESSING TO FIND DISTANCE
	  	  @lat2 = val["latitude"].to_f
 	  	  theta = @lon1 - @lon2
	      dist = Math.sin(deg2rad(@lat1)) * Math.sin(deg2rad(@lat2)) +  Math.cos(deg2rad(@lat1)) * Math.cos(deg2rad(@lat2)) * Math.cos(deg2rad(theta))
	      dist = Math.acos(dist)
	      dist = rad2deg(dist)
	      miles = dist * 60 * 1.1515 * 1.609344 
  	  	    if miles <= 100
  	          @result << [ val["user_id"].to_i,val["name"],val["latitude"].to_f,val["longitude"].to_f ]
  	          @empty_counter = 1
	  	    end
	  	  end

	  	  @result = @result.sort_by { |user| user[0] }
	  	  @result
	  	end
	    
	  

	  def rad2deg(rad)							# CONVERT TO DEGREE			
	    return rad * 180/Math::PI
	  end

	  def deg2rad(deg)
	    return deg * Math::PI / 180					# FORMULA TO CONVERT INTO RADIANS\
	  end

	  def get_result
	  	return @result if is_ansr_calculated?
	  end	

	  def is_ansr_calculated?
	    return true if @empty_counter == 1
	    return false if @empty_counter == 0
	    raise internal error
	  end


	end
	
	#------------------------------------- ---END OF CLASS ---------------------------------------------------#

	# READING FILE IN READ MODE
	